return {
    "https://github.com/nanozuki/tabby.nvim",
    event = "BufReadPre",
    config = function()
        require("tabby").setup({ })
        vim.o.showtabline = 2

        vim.keymap.set("n", "<leader>ta", "<cmd>tabnew<cr>")
        vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<cr>")
        vim.keymap.set("n", "<leader>tp", "<cmd>tabprev<cr>")
        vim.keymap.set("n", "<leader>tq", "<cmd>tabclose<cr>")
    end
}
