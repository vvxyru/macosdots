return {
    "https://github.com/rachartier/tiny-inline-diagnostic.nvim",
    event = "BufReadPre",
    config = function()
        require("tiny-inline-diagnostic").setup({
            options = {
                show_all_diags_on_cursorline = true,
                multilines = {
                    enabled = true,
                    always_show = true,
                },
            },
        })
        vim.diagnostic.config({ virtual_text = false })
    end,
}
