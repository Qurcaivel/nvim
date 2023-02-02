local servers = {
    'rust_analyzer',
    'sumneko_lua',
}

require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup{
    ensure_installed = servers
}

-- Rust
require('lspconfig').rust_analyzer.setup({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

-- Lua
require('lspconfig').sumneko_lua.setup {
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file('', true),
                -- Disable server usage question
                checkThirdParty = false,
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
