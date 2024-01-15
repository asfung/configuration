vim.g.mapleader = " " -- initialize the leader map is space
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()  -- to opened the input
    builtin.grep_string({search = vim.fn.input("Grep > ")}) -- search a word
end)



