return {
    "https://github.com/stevearc/oil.nvim",
    cmd = "Oil",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>pv", "<cmd>Oil --float<cr>" },
    },
    config = function()
        require("oil").setup({
            columns = {
                "icon",
                "size",
            },
            view_options = {
                show_hidden = true,
            },
        })
    end,
}
