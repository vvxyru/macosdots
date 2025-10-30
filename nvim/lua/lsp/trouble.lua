return {
    "https://github.com/folke/trouble.nvim",
    cmd = "Trouble",
    keys = {
        { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>" },
        { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>" },
    },
    config = function()
        require("trouble").setup({})
    end,
}
