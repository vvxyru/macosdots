return {
    "https://github.com/thesimonho/kanagawa-paper.nvim",
    priority = 1000,
    config = function()
        require("kanagawa-paper").setup({
            transparent = true,
            cache = true,
            colors = {
                palette = {
                    sumiInkn1 = "#0f0f15",
                    sumiInk0 = "#16161D",
                    sumiInk1 = "#181820",
                    sumiInk2 = "#1a1a22",
                    sumiInk3 = "#1F1F1F",
                    sumiInk4 = "#2A2A2A",
                    sumiInk5 = "#363636",
                    sumiInk6 = "#545454",
                },
            },
            plugins = {
                which_key = true,
            },
        })
        vim.cmd("colorscheme kanagawa-paper")
    end,
}
