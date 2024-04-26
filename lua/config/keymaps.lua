-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Bordered terminalvim
local LazyTerm = function()
  LazyVim.terminal(nil, {
    border = "rounded",
    cwd = LazyVim.root(),
  })
end

vim.keymap.set("n", "<C-/>", LazyTerm, { desc = "Terminal (Root Dir)" })
