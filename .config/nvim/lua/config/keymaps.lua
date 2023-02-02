-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lsp
vim.keymap.set("n", "<leader><space>", "<cmd>CodeActionMenu<cr>", { desc = "CodeActionMenu" })

-- harpoon
vim.keymap.set("n", "<leader>'", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Add to Harpoon" })
vim.keymap.set("n", "<leader>0", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
vim.keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Harpoon Buffer 1" })
vim.keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Harpoon Buffer 2" })
vim.keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Harpoon Buffer 3" })
vim.keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Harpoon Buffer 4" })
vim.keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Harpoon Buffer 5" })
vim.keymap.set("n", "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = "Harpoon Buffer 6" })
vim.keymap.set("n", "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = "Harpoon Buffer 7" })
vim.keymap.set("n", "<leader>8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = "Harpoon Buffer 8" })
vim.keymap.set("n", "<leader>9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = "Harpoon Buffer 9" })

-- buffer
vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Telescope" })
vim.keymap.set("n", "<leader>bj", "<cmd>bn<cr>", { desc = "Next" })
vim.keymap.set("n", "<leader>bk", "<cmd>bp<cr>", { desc = "Previous" })
vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Next" })
vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Previous" })
vim.keymap.set("n", "<leader>bsd", "<cmd>%bd|e#|bd#<cr>|'<cr>", { desc = "Delete surrounding" })

-- slime
vim.g.slime_dont_ask_default = 1
vim.g.slime_target = "tmux"
vim.g.slime_tmux_config = {
  socket_name = "default",
  target_pane = "{last}",
}
vim.g.slime_paste_file = "/tmp/vim-slime-paste"
vim.keymap.set("n", "<c-c><cr>", "<c-c><c-c>}j", { desc = "Slime and jump chunk" })

-- slime (R)
vim.keymap.set("n", "<leader>rt", "<cmd>SlimeSend0 'devtools::test()\\n'<cr>", { desc = "Test all" })
vim.keymap.set("n", "<leader>rc", "<cmd>SlimeSend0 'devtools::check()\\n'<cr>", { desc = "Check" })
vim.keymap.set("n", "<leader>rb", "<cmd>SlimeSend0 'devtools::build()\\n'<cr>", { desc = "Build" })
vim.keymap.set("n", "<leader>ri", "<cmd>SlimeSend0 'devtools::install()\\n'<cr>", { desc = "Install" })
vim.keymap.set("n", "<leader>rd", "<cmd>SlimeSend0 'devtools::document()\\n'<cr>", { desc = "Document" })
vim.keymap.set("n", "<leader>rl", "<cmd>SlimeSend0 'devtools::load_all()\\n'<cr>", { desc = "Load all" })
