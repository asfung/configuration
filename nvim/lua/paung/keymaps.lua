-- generic options
local opts = {
  noremap = true,
  silent = true,
}
vim.g.mapleader = " " -- initialize the leader map is space

-- normal mode on
--
-- focus windows navigation
vim.keymap.set('n', '<leader>h', '<C-w>h', opts)
vim.keymap.set('n', '<leader>j', '<C-w>j', opts)
vim.keymap.set('n', '<leader>k', '<C-w>k', opts)
vim.keymap.set('n', '<leader>l', '<C-w>l', opts)

-- resize window with lines distance
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- visual mode (v, Shift-V) -> dont forget the prefix key lmao
-- this keymaps is like formatting tabs for our code like a static formatter 
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- previous to netrw menu
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- selected movements to up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")


