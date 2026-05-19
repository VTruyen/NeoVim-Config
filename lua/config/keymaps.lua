-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init
-- use `vim.keymap.set` instead
local map = vim.keymap.set

map("i", "jj", "<Esc>", { desc = "Esc to normal mode" })
-- Sortir du mode terminal avec Échap (ou tout autre raccourci de ton choix)
map("t", "jk", "<C-\\><C-n>", { desc = "Quitter le mode terminal" })

-- Move Lines
map("v", "<S-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
map("n", "<S-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<S-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("n", "<S-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("i", "<S-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("v", "<S-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })

map("n", "<leader>ff", function()
  require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
end, { desc = "Find File (Telescope)" })

map("v", "S", "<Plug>(nvim-surround-visual)", {
  desc = "Add a surrounding pair around a visual selection",
})
map("n", "gx", "<esc>:URLOpenUnderCursor<cr>", { desc = "Open link on line (first to left)" })
