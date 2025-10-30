return {
    "https://github.com/lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = function()
        require("gitsigns").setup({
            --stylua: ignore start
            signs = {
                add          = { text = '+' },
                change       = { text = '>' },
                delete       = { text = '-' },
                topdelete    = { text = '=' },
                changedelete = { text = '~' },
                untracked    = { text = ':' },
            },
            signs_staged = {
                add          = { text = '+' },
                change       = { text = '>' },
                delete       = { text = '-' },
                topdelete    = { text = '=' },
                changedelete = { text = '~' },
                untracked    = { text = ':' },
            },
            --stylua: ignore end
        })
    end,
}
