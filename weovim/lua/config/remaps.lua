local map = vim.keymap.set

map({ "n", "v", "x" }, "<C-c>", "<Esc>")

-- Undotree
map("n", "<leader>u", vim.cmd.UndotreeToggle)

---- Yanking/Pasting
-- next greatest remap ever : asbjornHaland
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Greatest remap ever pt. 2" })
map("n", "<leader>Y", [["+Y]], { desc = "Greatest remap ever pt. 2 (caps ver.)" })

-- Deleting
map({ "n", "v" }, "<leader>D", [["_d]], { desc = "TO THE VOID" })

-- greatest remap ever
-- Paste over
map("x", "<leader>P", [["_dP]], { desc = "Greatest remap ever" })

-- Join lines
map("n", "J", "mzJ`z", { desc = "Join lines" })

-- Stay in insert mode and move to next line
map("i", "<C-n>", "<C-o>A", { desc = "Move to end" })

-- Replacing/Substituting
map(
	"n",
	"<leader>S",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace every instance of the selected word in the file" }
)

-- Search word
map("n", "<A-n>", "nzzzv", { desc = "Next in search" })
map("n", "<A-N>", "Nzzzv", { desc = "prev in search" })

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Have highlighting on search, but remove highlighting after escaping
map("n", "<CR>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlighting" })

-- Close a buffer
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Quit current buffer" })

-- Half page movement
map("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })

-- Ez movement between neovim panes
map("n", "<A-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<A-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<A-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<A-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Going up and down drop down menus and stuffz
map("n", "<C-p>", "<cmd>cprev<CR>zz", { desc = "Menu navigation" })
map("n", "<C-n>", "<cmd>cnext<CR>zz", { desc = "Menu navigation" })
map("n", "<A-p>", "<cmd>lprev<CR>zz", { desc = "Menu navigation" })
map("n", "<A-n>", "<cmd>lnext<CR>zz", { desc = "Menu navigation" })

-- Quit neovim
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":q!<CR>")

-- Save buffer
map("n", "<leader>w", ":w<CR>")

-- Move selection
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- IEx/Mix commands
map("n", "<leader>Mi", ":!iex -S mix<CR>", { desc = "IEx with mix" })
map("n", "<leader>Mt", ":!mix test<CR>", { desc = "Mix test" })
map("n", "<leader>Mc", ":!mix compile<CR>", { desc = "Mix compile" })
map("n", "<leader>Mf", ":!mix format<CR>", { desc = "Mix format" })
map("n", "<leader>Md", ":!mix deps.get<CR>", { desc = "Mix deps.get" })
map("n", "<leader>Mp", ":!mix phx.server<CR>", { desc = "Phoenix server" })
