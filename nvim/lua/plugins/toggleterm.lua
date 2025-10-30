return {
    "https://github.com/akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    config = function()
        require("toggleterm").setup()

        vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
    end,
}
