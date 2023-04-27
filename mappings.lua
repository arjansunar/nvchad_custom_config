---@type MappingsTable
local M = {}

local opts = {
  nowait = true,
}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-q>"] = { ":q!<CR>", "force exit", opts },
    ["<leader>;"] = { 'ciw`<c-r>"`', "Wrap with `", opts },

    ["<C-h>"] = { "<cmd> NvimTmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> NvimTmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> NvimTmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> NvimTmuxNavigateUp<CR>", "window up" },
  },
}

-- more keybinds!

return M
