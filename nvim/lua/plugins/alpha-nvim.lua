return {
    "https://github.com/goolord/alpha-nvim",
    priority = 1000,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[⠀⠀⠀⣠⣤⡶⠶⠿⠷⠶⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⢄⠀     ⬦           ]],
            [[⣠⣴⠿⠋⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⠗⠋⠁⠃        ✧        ]],
            [[⠉⠀⢀⡠⣄⡀⠀⠀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠟⠋⠁⠀⠀⠀⠀   ✧             ]],
            [[⠀⡰⢾⣿⣾⣿⠿⠿⢻⡿⢿⣿⡻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣴⣆⠀          ⬦      ]],
            [[⠀⡛⠛⣿⡇⠀⠀⢀⣿⣥⣿⣿⣷⡽⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡿⣿⠿⠛⠀               ✧ ]],
            [[⠈⣽⣿⣧⢙⣶⣤⣸⡇⠘⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣽⣿⣷⣿⡀⠀⠀                 ]],
            [[⠀⠀⠙⠻⠟⢻⣿⣇⡳⣤⣈⢉⣡⢿⡆⠀⠀⠀⠀⠀⠀⠀⠀⢸⡏⠉⢳⣭⣵⣿⠁⠀⠀                 ]],
            [[⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⠿⠿⠷⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠸⠦⣤⣤⠴⠾⠃⠀⠀⠀                 ]],
        }

        dashboard.section.buttons.val = {}

        dashboard.config.layout = {
            { type = "padding", val = 15 },
            dashboard.section.header,
            { type = "padding", val = 2 },
            dashboard.section.buttons,
            { type = "padding", val = 1 },
            dashboard.section.footer,
        }

        require("alpha").setup(dashboard.opts)

        vim.defer_fn(function()
            local stats = require("lazy").stats()
            local plugin_count = stats.loaded
            local plugin_total = stats.count
            local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
            dashboard.section.footer.val = { plugin_count .. " plugins loaded in " .. ms .. " ms" }
            pcall(require("alpha").redraw)
        end, 100)
    end,
}
