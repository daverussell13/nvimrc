-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Neovide Options
if vim.g.neovide then
  -- Font
  vim.o.guifont = "Cascadia Code:h10.875:b"
  vim.g.neovide_scale_factor = 1

  -- Padding
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  -- Cursor
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_length = 0
  vim.g.neovide_cursor_antialiasing = false
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_unfocused_outline_width = 0

  -- Scroll
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_scroll_animation_far_lines = 0
  vim.g.neovide_no_idle = false

  -- UI
  vim.g.neovide_fullscreen = false
  vim.g.neovide_transparency = 0.75
end

-- Terminal Options
vim.o.shell = "powershell"
vim.o.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"
vim.o.shellredir = '2>&1 | %{ "$_" } | Out-File %s; exit $LastExitCode'
vim.o.shellpipe = '2>&1 | %{ "$_" } | Tee-Object %s; exit $LastExitCode'
vim.o.shellquote = ""
vim.o.shellxquote = ""

-- Disable autoformat
vim.g.autoformat = false
