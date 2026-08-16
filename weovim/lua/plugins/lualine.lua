require("lualine").setup({
    options = {
        theme = "tokyonight",
        globalstatus = true,
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {
            "filename",
            {
                function()
                    local harpoon = require("harpoon")
                    local list = harpoon:list()
                    local current = vim.fn.expand("%:p")
                    for i, item in ipairs(list.items) do
                        if item.value == vim.fn.fnamemodify(current, ":.") then
                            return "󱡀 " .. i
                        end
                    end
                    return ""
                end,
            },
        },
        lualine_x = { "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
    },
})
