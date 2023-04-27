local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- navigator
  {
    "alexghergh/nvim-tmux-navigation",
    lazy = false,
    opts = {},
    -- config = function(_, opts)
    --   local nvim_tmux_nav = require "nvim-tmux-navigation"
    --
    --   nvim_tmux_nav.setup {
    --     disable_when_zoomed = true, -- defaults to false
    --   }
    --
    --   vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
    --   vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
    --   vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
    --   vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
    --   vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
    --   vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
    -- end,
  },

  -- TODO: highlights todo comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "BufEnter",
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open todos finder" },
    },
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
}

return plugins
