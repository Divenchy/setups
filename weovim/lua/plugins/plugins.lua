vim.pack.add({
    -- LSP
    { src = 'https://github.com/neovim/nvim-lspconfig' },

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
})

-- Defer plugin configs until plugins are loaded
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
end)
