-- define colorscheme  
local colorscheme = 'ayu-dark'
local kanagawa_dragon = 'kanagawa-dragon'
local oxocarbon = 'oxocarbon'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. kanagawa_dragon)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end
