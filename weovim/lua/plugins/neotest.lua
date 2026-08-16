require("neotest").setup({
    adapters = {
        require("neotest-elixir")({
            -- Extra arguments for mix test
            extra_args = { "--trace" },
            -- Extra formatters
            extra_formatters = {},
            -- Arguments for mix test.interactive
            args = {},
            -- Write to file (for --stale)
            write_delay = 1000,
        }),
    },
    icons = {
        passed = "✓",
        failed = "✗",
        running = "⟳",
        skipped = "○",
    },
    output = {
        open_on_run = true,
    },
})

local map = vim.keymap.set

-- Test keymaps
map("n", "<leader>tt", function() require("neotest").run.run() end, { desc = "Run nearest test" })
map("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, { desc = "Run file tests" })
map("n", "<leader>ta", function() require("neotest").run.run(vim.fn.getcwd()) end, { desc = "Run all tests" })
map("n", "<leader>ts", function() require("neotest").summary.toggle() end, { desc = "Toggle test summary" })
map("n", "<leader>to", function() require("neotest").output.open({ enter = true }) end, { desc = "Show test output" })
map("n", "<leader>tS", function() require("neotest").run.stop() end, { desc = "Stop test" })
