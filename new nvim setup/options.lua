-- based nvim 
vim.opt.clipboard = 'unnamedplus'   
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a' 

-- tab 
vim.opt.tabstop = 4    
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4  
vim.opt.expandtab = true 

-- ui layout
vim.opt.number = true 
vim.opt.relativenumber = true 
vim.opt.cursorline = true
vim.opt.splitbelow = true 
vim.opt.splitright = true 
--vim.opt.termguicolors = true -- support alot of color
-- vim.opt.showmode = true -- hiding a bar for status mode


-- search options
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.hlsearch = false            -- do not highlight matches
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered


-- the carret (cursor)
vim.opt.guicursor = 'n-v-c-sm:block'    -- i absolutely like block carret



