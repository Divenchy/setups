local ts = require("nvim-treesitter")

ts.setup()

-- Remeber to do cargo install tree-sitter-cli
ts.install({
    "lua",
    "elixir",
    "heex",
    "eex",
    "html",
    "javascript",
    "css",
    "json",
    "yaml",
    "markdown",
    "sql",
    "rust",
    "zig"
})

