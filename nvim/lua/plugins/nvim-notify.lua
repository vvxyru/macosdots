return {
    "https://github.com/rcarriga/nvim-notify",
    event = "BufEnter",
    config = function()
        vim.notify = require("notify")
        require("notify").setup({
            background_colour = "#000000",
        })
    end,
}
