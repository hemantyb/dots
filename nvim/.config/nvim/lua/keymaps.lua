local fzf = require("fzf-lua")

vim.keymap.set("n", "<Leader>e", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<Leader>x", ":BufferClose<CR>")
vim.keymap.set("n", "<C-n>", ":NvimTreeClose<CR>")

vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Fzf Files" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Fzf Live Grep" })
vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Fzf Buffers" })

vim.keymap.set("n", "<leader>gs", fzf.git_status, { desc = "Git Status" })
