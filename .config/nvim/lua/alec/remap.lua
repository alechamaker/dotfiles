
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Mac specific
vim.keymap.set("n", "<leader>r", "<cmd>!./bin/run<CR>")


-- spotify integration remaps
vim.api.nvim_set_keymap("n", "<leader>sn", "<Plug>(SpotifySkip)", { silent = true }) -- Skip the current track
vim.api.nvim_set_keymap("n", "<leader>sp", "<Plug>(SpotifyPause)", { silent = true }) -- Pause/Resume the current track
vim.api.nvim_set_keymap("n", "<leader>ss", "<Plug>(SpotifySave)", { silent = true }) -- Add the current track to your library
vim.api.nvim_set_keymap("n", "<leader>so", ":Spotify<CR>", { silent = true }) -- Open Spotify Search window
vim.api.nvim_set_keymap("n", "<leader>sd", ":SpotifyDevices<CR>", { silent = true }) -- Open Spotify Devices window
vim.api.nvim_set_keymap("n", "<leader>sb", "<Plug>(SpotifyPrev)", { silent = true }) -- Go back to the previous track
vim.api.nvim_set_keymap("n", "<leader>sh", "<Plug>(SpotifyShuffle)", { silent = true }) -- Toggles shuffle mode

-- dap specific
-- vim.keymap.set_mode_keymap('n', {
--  { '<F5>', function() vim.fn['dap#continue']() end, { silent = true } },
--  { '<F10>', function() vim.fn['dap#step_over']() end, { silent = true } },
--  { '<F11>', function() vim.fn['dap#step_into']() end, { silent = true } },
--  { '<F12>', function() vim.fn['dap#step_out']() end, { silent = true } },
--  { '<Leader>b', function() vim.fn['dap#toggle_breakpoint']() end, { silent = true } },
--  { '<Leader>B', function() vim.fn['dap#set_breakpoint'](vim.fn.input('Breakpoint condition: ')) end, { silent = true } },
--  { '<Leader>lp', function() vim.fn['dap#set_breakpoint'](nil, nil, vim.fn.input('Log point message: ')) end, { silent = true } },
--  { '<Leader>dr', function() vim.fn['dap#repl#open']() end, { silent = true } },
--  { '<Leader>dl', function() vim.fn['dap#run_last']() end, { silent = true } },
--})

