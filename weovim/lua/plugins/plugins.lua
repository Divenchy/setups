vim.pack.add({
    -- Completion
    { src = 'https://github.com/saghen/blink.lib' },
    { src = 'https://github.com/saghen/blink.cmp' },

    -- Snippets
    { src = 'https://github.com/L3MON4D3/LuaSnip' },

    -- Treesitter
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },

    -- Telescope
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
    { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },

    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },

    -- Oil
    { src = 'https://github.com/stevearc/oil.nvim' },

    -- Colorscheme
    { src = 'https://github.com/folke/tokyonight.nvim' },

    -- QOL
    { src = 'https://github.com/sphamba/smear-cursor.nvim' },
    { src = 'https://codeberg.org/andyg/leap.nvim' },
    { src = 'https://github.com/ggandor/flit.nvim' },
    { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/mvllow/modes.nvim" },

    -- Elixir/Phoenix
    { src = "https://github.com/elixir-editors/vim-elixir" },

    -- Testing
    { src = "https://github.com/nvim-neotest/neotest" },
    { src = "https://github.com/jfpedroza/neotest-elixir" },
    { src = "https://github.com/antoinemadec/FixCursorHold.nvim" },

    -- Debugging
    { src = "https://github.com/mfussenegger/nvim-dap" },
    { src = "https://github.com/rcarriga/nvim-dap-ui" },
    { src = "https://github.com/nvim-neotest/nvim-nio" },
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.schedule(function()
            require("plugins.telescope")
            require("plugins.treesitter")
            require("plugins.oil")
            require("plugins.harpoon")
            require("plugins.smear-cursor")
            require("plugins.leap")
            require("plugins.flit")
            require("plugins.blink")
            require("plugins.lualine")
            require("plugins.modes")
            require("plugins.lsp")
            require("plugins.neotest")
            require("plugins.dap")
            vim.cmd.colorscheme("tokyonight")
        end)
    end,
})
