return {
    "https://github.com/kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("leetcode").setup()
    end,
}
