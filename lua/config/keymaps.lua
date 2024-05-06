-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<M-x>", ":", { noremap = true, silent = false })
vim.keymap.set({ "n", "v", "o", "i", "c", "x" }, "<C-g>", "<ESC>", { noremap = true, silent = false })

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- <D-v>
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
