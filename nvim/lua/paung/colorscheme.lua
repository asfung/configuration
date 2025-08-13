-- define colorscheme  
local colorscheme = 'ayu-dark'
local kanagawa_dragon = 'kanagawa-dragon'
local kanagawa_lotus = 'kanagawa-lotus'
local kanagawa_wave = 'kanagawa-wave'
local oxocarbon = 'oxocarbon'
local cham = 'cham'

-- local is_ok, _ = pcall(vim.cmd, "colorscheme " .. kanagawa_wave)
-- local is_ok, _ = pcall(vim.cmd, "colorscheme " .. kanagawa_dragon)
local is_ok, _ = pcall(vim.cmd, "colorscheme " .. cham )
if not is_ok then
    vim.notify('colorscheme ' .. cham .. ' not found!')
    return
end
