require("modes").setup({
    colors = {
        copy = "#e0af68",
        delete = "#f7768e",
        insert = "#9ece6a",
        visual = "#bb9af7",
    },
    line_opacity = 0.15,
    set_cursor = true,
    set_cursorline = true,
    set_number = true,
    ignore_filetypes = { "NvimTree", "TelescopePrompt", "oil" },
})
