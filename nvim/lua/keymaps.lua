local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "<esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<nop>") -- for tmux

vim.keymap.set({ "n", "v" }, "H", "^", opts)
vim.keymap.set({ "n", "v" }, "L", "$", opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("v", "<tab>", ">gv", opts)
vim.keymap.set("v", "<S-tab>", "<gv", opts)

vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)

vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

vim.keymap.set("n", "<leader><cr>", "<cmd>nohl<cr>")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>ya", [[maggVG"+y'a]])
vim.keymap.set({ "n", "x" }, "<leader>pd", [["_dP]])

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>W", "<cmd>wa!<cr>")

vim.keymap.set("n", "<leader>q", "<cmd>wq<cr>")
vim.keymap.set("n", "<leader>Q", "<cmd>qa!<cr>")

vim.keymap.set("n", "<leader>so", "<cmd>source<cr>")

vim.keymap.set("n", "<leader>z", "1z=")

vim.keymap.set("n", "<leader>cp", "<cmd>!python3 %<cr>")
