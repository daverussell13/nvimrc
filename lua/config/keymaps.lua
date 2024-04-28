-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Floating Terminal
local LazyTerm = function()
  LazyVim.terminal(nil, {
    border = "rounded",
    cwd = LazyVim.root(),
  })
end

-- Bordered Terminal
vim.keymap.set("n", "<C-/>", LazyTerm, { desc = "Terminal (Root Dir)" })

-- Managing tabs
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabedit<cr>", { desc = "New Tab" })
vim.keymap.set("n", "te", "<cmd>tabedit<cr>",{ desc = "Next Tab" })
vim.keymap.set("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<S-tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Better up half page scrolling" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Better down half page scrolling" })

-- Managing window
vim.keymap.set("n", "sv", ":vsplit<cr>", { desc = "Split window right" })
vim.keymap.set("n", "ss", ":split<cr>", { desc = "Split window below" })

vim.keymap.set("n", "<C-S-h>", "<C-w><")
vim.keymap.set("n", "<C-S-l>", "<C-w>>")
vim.keymap.set("n", "<C-S-j>", "<C-w>-")
vim.keymap.set("n", "<C-S-k>", "<C-w>+")

-- Change delete register
vim.keymap.set("n", "d", '"_d', { desc = "Delete doesn't go to register", remap = false })
vim.keymap.set("n", "x", '"_x', { desc = "Delete doesn't go to register", remap = false })
