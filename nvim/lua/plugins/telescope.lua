return {
    "https://github.com/nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>pf", "<cmd>Telescope find_files<cr>" },
        { "<leader>pg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>pb", "<cmd>Telescope buffers<cr>" },
        { "<leader>ph", "<cmd>Telescope help_tags<cr>" },
        { "<leader>pn", "<cmd>Telescope notify<cr>" },
    },
    config = function()
        require("telescope").setup({
            find_files = {
                hidden = true,
            },
        })
    end,
}
