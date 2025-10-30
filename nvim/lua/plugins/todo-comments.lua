return {
    "folke/todo-comments.nvim",
    event = "InsertEnter",
    keys = {
        { "<leader>xt", "<cmd>Trouble todo toggle<cr>" },
        { "<leader>pt", "<cmd>TodoTelescope<cr>" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("todo-comments").setup({})
    end,
}
