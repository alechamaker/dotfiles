local map = vim.keymap.set
map("n", "q", "<Nop>", {})

-- File exploring/Telescope
local ts = require('telescope.builtin')
map("n", "<leader>e","<cmd>Neotree toggle<cr>", { desc = "Toggle Neotree", remap = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep search in current directory", remap = true })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files in current directory", remap = true })
map("n", "<leader>fc",
	function()
		ts.find_files({
			cwd = '~/.config/nvim'
		})
	end, { desc = "Find files in current directory", remap = true })
map("n", "gr", "<cmd> Telescope lsp_references<cr>", { desc = "Find LSP references for word under cursor", remap = false })


-- Terminal
map("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Open ToggleTerm", remap = false})

-- Lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open Lazy UI" })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
