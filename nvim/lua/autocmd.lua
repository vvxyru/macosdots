-- yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ timeout = 50 })
    end,
})

-- numberline insert toggle
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    pattern = "*",
    callback = function()
        vim.opt.relativenumber = false
        vim.opt.number = true
    end,
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = "*",
    callback = function()
        vim.opt.relativenumber = true
        vim.opt.number = true
    end,
})

-- disable autocomment newline
vim.api.nvim_create_autocmd("BufEnter", {
    group = group,
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
    end,
})
