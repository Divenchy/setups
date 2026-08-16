local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        file_ignore_patterns = { "node_modules", ".git/" },
    },
})

-- Keymaps
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "[P]roject [F]iles search" })
vim.keymap.set("n", "<leader>pg", builtin.git_files, { desc = "[P]roject [G]it Files search" })
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "[P]roject [S]earch word" })
vim.keymap.set("n", "<leader>pl", builtin.live_grep, { desc = "[P]roject [l]ive grep" })
vim.keymap.set("n", "<leader>pr", builtin.oldfiles, { desc = "[P]roject [R]ecent files" })
vim.keymap.set("n", "<leader>vh", builtin.help_tags, { desc = "[V]iew [H]elp tags" })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
