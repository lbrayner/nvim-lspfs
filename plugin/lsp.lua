local lspconfig = require "lspconfig"

local function on_attach(client, bufnr)
    local bufopts = { buffer=bufnr }
    vim.keymap.set("n","gD", vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n","gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set("n","K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n","gi", vim.lsp.buf.implementation, bufopts)
    vim.keymap.set("n","gK", vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set("n","<Space>D", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n","<F11>", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set("n","gr", vim.lsp.buf.references, bufopts)
end

-- Typescript, Javascript
lspconfig.tsserver.setup {
    on_attach = on_attach,
}

-- Python
lspconfig.pyright.setup {
    autostart = false,
    on_attach = on_attach,
}
