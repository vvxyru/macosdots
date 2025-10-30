return {
    "https://github.com/Saghen/blink.cmp",
    version = "1.*",
    build = "cargo build --release",
    event = "BufReadPre",
    dependencies = {
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/snippets" } })

        require("blink.cmp").setup({
            keymap = {
                preset = "super-tab",
            },
            appearance = {
                nerd_font_variant = "mono",
            },
            completion = {
                ghost_text = {
                    enabled = true,
                },
                trigger = {
                    show_on_insert = true,
                },
                documentation = {
                    auto_show = true,
                },
            },
            sources = {
                default = {
                    "lsp",
                    "path",
                    "snippets",
                    "buffer",
                    "lazydev",
                },
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                    },
                },
            },
        })
    end,
}
