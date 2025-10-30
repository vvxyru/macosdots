return {
    "https://github.com/stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                cpp = { "clang-format" },
                python = { "black" },
                json = { "jsonls" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },
            formatters = {
                stylua = {
                    indent_type = "Spaces",
                    indent_width = 4,
                },
            },
        })
        vim.keymap.set("n", "<leader>mf", function()
            require("conform").format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end)
    end,
}
