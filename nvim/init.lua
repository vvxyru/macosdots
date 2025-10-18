local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>")

require("keymaps")
require("options")
require("autocmd")

require("lazy").setup({
    spec = {
        { import = "plugins" },
        { import = "lsp" },
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "editorconfig",
                "gzip",
                "man",
                "matchit",
                "tohtml",
                "tutor",
                "tarPlugin",
                "zipPlugin",
                "netrwPlugin",
            },
        },
    },
    change_detection = { notify = false },
})
