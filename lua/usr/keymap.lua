local keymap = vim.keymap.set

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        keymap('n', 'gl', vim.diagnostic.open_float, {buffer = args.buf})
    end,
})
