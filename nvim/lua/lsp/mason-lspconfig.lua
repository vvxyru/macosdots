return {
    "https://github.com/mason-org/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "https://github.com/mason-org/mason.nvim",
        "https://github.com/neovim/nvim-lspconfig",
        "https://github.com/Saghen/blink.cmp",
        "https://github.com/folke/lazydev.nvim",
    },
    config = function()
        require("mason").setup({})
        require("mason-lspconfig").setup({
            automatic_enable = false,
        })

        local capabilities = require("blink.cmp").get_lsp_capabilities()

        for _, server in ipairs(require("mason-lspconfig").get_installed_servers()) do
            require("lspconfig")[server].setup({ capabilities = capabilities })
        end

        vim.keymap.set("n", "<leader>lm", "<cmd>Mason<cr>")
        vim.keymap.set("n", "<leader>mh", "<cmd>lua vim.lsp.buf.hover()<cr>")
        vim.keymap.set("n", "<leader>mr", "<cmd>lua vim.lsp.buf.rename()<cr>")
        vim.keymap.set("n", "<leader>ma", "<cmd>lua vim.lsp.buf.code_action()<cr>")
    end,
}
