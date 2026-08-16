vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.guicursor = ""

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true
opt.showmode = false

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 15

opt.splitright = true
opt.splitbelow = true
opt.updatetime = 50
opt.timeoutlen = 300
opt.clipboard = "unnamedplus"
opt.mouse = "a"

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.inccommand = "split"
