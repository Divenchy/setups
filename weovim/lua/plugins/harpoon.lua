local harpoon = require('harpoon')
harpoon:setup({
    settings = {
        save_on_toggle = true,
	sync_on_ui_close = true,
    },
})

local map = vim.keymap.set

-- Keymaps
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })
map("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon add" })
map("n", "<leader>1", function() harpoon:list():select(1) end)
map("n", "<leader>2", function() harpoon:list():select(2) end)
map("n", "<leader>3", function() harpoon:list():select(3) end)
map("n", "<leader>4", function() harpoon:list():select(4) end)


-- Toggle previous & next buffers stored within Harpoon list
-- Remaps
map("n", "<C-A-P>", function() harpoon:list():prev() end)
map("n", "<C-A-N>", function() harpoon:list():next() end)
