local colors = {
    bg      = "#2f3832", 
    bg_alt  = "#37403a",
    fg      = "#d4d5c9",
    green   = "#a9b665", 
    green_bright = "#b8cc75", 
    yellow  = "#d8a657",
    red     = "#ea6962",
    blue    = "#7daea3",
    gray    = "#7c8377",
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "cham"

-- basic editor colors
vim.api.nvim_set_hl(0, "Normal",       { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "NormalNC",     { fg = colors.gray, bg = colors.bg })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = colors.bg_alt })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bg_alt })
vim.api.nvim_set_hl(0, "LineNr",       { fg = colors.gray })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.green_bright, bold = true })
vim.api.nvim_set_hl(0, "VertSplit",    { fg = colors.bg_alt })

-- syntax highlights
vim.api.nvim_set_hl(0, "Comment",      { fg = colors.gray, italic = true })
vim.api.nvim_set_hl(0, "Keyword",      { fg = colors.green_bright, bold = true })
vim.api.nvim_set_hl(0, "Function",     { fg = colors.green, bold = true })
vim.api.nvim_set_hl(0, "String",       { fg = colors.green })
vim.api.nvim_set_hl(0, "Number",       { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Boolean",      { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Identifier",   { fg = colors.green_bright })
vim.api.nvim_set_hl(0, "Type",         { fg = colors.green, bold = true })

-- diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = colors.green })

-- statusline
vim.api.nvim_set_hl(0, "StatusLine",   { fg = colors.fg, bg = colors.bg_alt })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.gray, bg = colors.bg_alt })


-- completion menu
vim.api.nvim_set_hl(0, "Pmenu",        { fg = "#d4d5c9", bg = "#37403a" }) -- menu background
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = "#ffffff", bg = "#5e8c1a", bold = true }) -- selected item
vim.api.nvim_set_hl(0, "PmenuSbar",    { bg = "#2f3832" }) -- scrollbar background
vim.api.nvim_set_hl(0, "PmenuThumb",   { bg = "#88aa44" }) -- scrollbar thumb

-- border for completion/documentation windows
vim.api.nvim_set_hl(0, "CmpBorder",    { fg = "#5e8c1a", bg = "#37403a" })
vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#5e8c1a", bg = "#2f3832" })

-- documentation popup
vim.api.nvim_set_hl(0, "NormalFloat",  { fg = "#d4d5c9", bg = "#2f3832" })
vim.api.nvim_set_hl(0, "FloatBorder",  { fg = "#5e8c1a", bg = "#2f3832" })


