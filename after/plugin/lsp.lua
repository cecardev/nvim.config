require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed={
        'tsserver',
        'eslint',
        'lua_ls',
        'gopls',
    },
})
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})
lspconfig.eslint.setup({})
lspconfig.gopls.setup({})


local opts = {}

vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
vim.keymap.set({'n'}, "<leader>ca", vim.lsp.buf.code_action, opts)



-- return {
--     {
--         "williamboman/mason.nvim",
--         config=function()
--             require('mason').setup()
--         end
--     },
--     {
--         "williamboman/mason-lspconfig.nvim",
--         config=function()
--             require('mason.lspconfig').setup({
--                 ensure_installed={
--                     'tsserver',
--                     'eslint',
--                     'sumneko_lua',
--                     'gopls',
--                 },
--             })
--         end
--     },
--     {
--         "neovim/nvim-lspconfig",
--         config=function()
--             local lspconfig = require('lspconfig')
--             lspconfig.lua_ls.setup({})
--         end
--     }
-- }


-- require('mason.settings').set({
--     ui = {
--         border = 'rounded'
--     }
-- })
-- local lsp = require('lsp-zero')
-- lsp.preset('recommended')

-- lsp.ensure_installed({
--     'tsserver',
--     'eslint',
--     'sumneko_lua',
--     'rust_analyzer',
--     'gopls',
-- })

-- -- gopls config

-- lsp.use('gopls', {
--     settings = {
--         gopls = {
--             gofumpt = true
--         },

--     }
-- })

-- lsp.set_preferences({
--     suggest_lsp_servers = false,
--     sign_icons = {
--         error = 'E',
--         warn = 'W',
--         hint = 'H',
--         info = 'I'
--     }
-- })


-- lsp.on_attach(function(client, bufnr)
--     local opts = { buffer = bufnr, remap = false }

--     print(client.name)

--     vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
--     vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
--     vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
--     vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
--     vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
--     vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
--     vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
--     vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
--     vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
--     vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
-- end)

-- lsp.setup()
-- vim.diagnostic.config({
--     virtual_text = true,
-- })
