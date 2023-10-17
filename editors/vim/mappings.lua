---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- ["<leader>w"] = { "<cmd> w <CR>", "save file" },
    -- ["<leader>q"] = { "<cmd> q <CR>", "save file" },
    ["<C-q>"] = { "<cmd> q! <CR>", "save file" },
    ["<C-s>"] = { "<cmd> w! <CR>", "save file" },
    --
    ["j"] = { "<Plug>(accelerated_jk_gj)", "Window down" },
    ["k"] = { "<Plug>(accelerated_jk_gk)", "Window up" },
    --
    ["<leader>nx"] = {"<cmd> !node % <CR>", "node exececuted" },
  },
}

-- more keybinds!

return M
