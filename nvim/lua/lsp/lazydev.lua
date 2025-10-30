return {
    "folke/lazydev.nvim",
    event = "BufReadPre",
    config = function()
        require("lazydev").setup({
            library = {
                path = {
                    "${3rd}/luv/library",
                    "nvim-dap-ui",
                },
                words = { "vim%.uv" },
            },
        })
    end,
}
