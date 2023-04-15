---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-q>"] = { ":q!<CR>", "force exit", opts = { nowait = true } },
    ["<leader>;"] = { 'ciw`<c-r>"`', "Wrap with `", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
