require("config.opts")
require("config.remaps")
require("config.autocmds")
require("plugins.plugins")

vim.opt.isfname:append("@-@")
-- Set colorscheme
vim.cmd.colorscheme("tokyonight")
