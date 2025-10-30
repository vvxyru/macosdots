return {
    "https://github.com/nvimdev/indentmini.nvim",
    event = "BufReadPre",
    config = function()
        require("indentmini").setup()

        vim.cmd.highlight("IndentLine guifg=#474747")
        vim.cmd.highlight("IndentLineCurrent guifg=#646464")
    end,
}
