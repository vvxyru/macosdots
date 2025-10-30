return {
    "https://github.com/m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
        require("hardtime").setup({
            restricted_keys = {
                j = false,
                k = false,
            },
        })
    end,
}
