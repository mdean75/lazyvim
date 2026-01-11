-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Remove default terminal keymaps
-- vim.keymap.del("n", "<leader>ft")
-- vim.keymap.del("n", "<leader>fT")
-- vim.keymap.del("n", "<c-/>")
-- vim.keymap.del("n", "<c-_>") -- for some terminals
--
-- -- Try to delete terminal mode mappings (may error if they don't exist)
-- pcall(vim.keymap.del, "t", "<c-/>")
-- pcall(vim.keymap.del, "t", "<c-_>")
-- pcall(vim.keymap.del, "t", "<esc><esc>")

-- Add custom keymaps below
vim.keymap.set("n", "<leader>bwa", "<cmd>wa<cr>", { desc = "Write all modified buffers" })

vim.keymap.set("n", "<leader>bwqa", "<cmd>wqa<cr>", { desc = "Write all modified buffers and exit" })
