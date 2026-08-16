local map = vim.keymap.set

-- LSP Keymaps (on attach)
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local opts = { buffer = bufnr, silent = true }

        map("n", "gd", vim.lsp.buf.definition, opts)
        map("n", "gD", vim.lsp.buf.declaration, opts)
        map("n", "gr", vim.lsp.buf.references, opts)
        map("n", "gi", vim.lsp.buf.implementation, opts)
        map("n", "K", vim.lsp.buf.hover, opts)
        map("n", "<leader>rn", vim.lsp.buf.rename, opts)
        map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        map("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, opts)
        map("n", "[d", vim.diagnostic.goto_prev, opts)
        map("n", "]d", vim.diagnostic.goto_next, opts)
        map("n", "<leader>d", vim.diagnostic.open_float, opts)
    end,
})

-- Capabilities for completion (blink.cmp)
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- Elixir LS
vim.lsp.config.elixirls = {
    cmd = { vim.fn.expand("~/.local/share/elixir-ls/language_server.sh") },
    filetypes = { "elixir", "eelixir", "heex" },
    root_markers = { "mix.exs", ".git" },
    capabilities = capabilities,
    settings = {
        elixirLS = {
            dialyzerEnabled = true,
            dialyzerFormat = "dialyxir_short",
            fetchDeps = false,
            enableTestLenses = true,
            suggestSpecs = true,
        },
    },
}

-- Tailwind CSS
vim.lsp.config.tailwindcss = {
    cmd = { "tailwindcss-language-server", "--stdio" },
    filetypes = { "html", "heex", "elixir", "eelixir", "javascript", "css" },
    root_markers = { "tailwind.config.js", "tailwind.config.ts", "package.json" },
    capabilities = capabilities,
    init_options = {
        userLanguages = {
            elixir = "html-eex",
            eelixir = "html-eex",
            heex = "html-eex",
        },
    },
    settings = {
        tailwindCSS = {
            experimental = {
                classRegex = {
                    'class[:]\\s*"([^"]*)"',
                },
            },
        },
    },
}

-- HTML
vim.lsp.config.html = {
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html", "heex" },
    root_markers = { ".git" },
    capabilities = capabilities,
}

-- Lua LS (for neovim config)
vim.lsp.config.lua_ls = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            workspace = {
                checkThirdParty = false,
                library = { vim.env.VIMRUNTIME },
            },
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
}

-- Enable LSP servers
vim.lsp.enable("elixirls")
vim.lsp.enable("tailwindcss")
vim.lsp.enable("html")
vim.lsp.enable("lua_ls")

-- Diagnostic display
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    float = {
        border = "rounded",
        source = true,
    },
})
