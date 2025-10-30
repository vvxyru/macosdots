return {
    "https://github.com/MeanderingProgrammer/render-markdown.nvim",
    event = {
        "BufReadPre /Users/vvxyu/core/02-vault/drainbank/*.md",
        "BufNewFile /Users/vvxyu/core/02-vault/drainbank/*.md",
    },
    config = function()
        require("render-markdown").setup({
            completions = {
                blink = {
                    enabled = true,
                },
                lsp = {
                    enabled = true,
                },
            },
        })
    end,
}
