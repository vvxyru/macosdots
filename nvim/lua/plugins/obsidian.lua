return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
        "BufReadPre /Users/vvxyu/core/02-vault/drainbank/*.md",
        "BufNewFile /Users/vvxyu/core/02-vault/drainbank/*.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        vim.keymap.set("n", "<leader>od", "<cmd>ObsidianBridgeDailyNote<cr>")

        require("obsidian").setup({
            workspaces = {
                {
                    path = "/Users/vvxyu/core/02-vault/drainbank/",
                    name = "drainbank",
                },
            },
            new_notes_location = "root",
            ui = {
                enable = false,
            },
            follow_url_func = function(url)
                vim.fn.jobstart({ "open", url })
            end,
            note_frontmatter_func = function(note)
                if note.title then
                    note:add_alias(note.title)
                end

                local out = { id = note.id, tags = note.tags }
                if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
                    for k, v in pairs(note.metadata) do
                        out[k] = v
                    end
                end

                return out
            end,
        })
    end,
}
