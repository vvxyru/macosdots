return {
    "https://github.com/oflisback/obsidian-bridge.nvim",
    event = {
        "BufReadPre /Users/vvxyu/core/02-vault/drainbank/*.md",
        "BufNewFile /Users/vvxyu/core/02-vault/drainbank/*.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("obsidian-bridge").setup({
            scroll_sync = true,
        })
    end,
}
