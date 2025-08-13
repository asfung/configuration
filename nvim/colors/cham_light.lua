local colors = {
    bg      = "#f4f0e5",
    bg_alt  = "#e8e4d9", 
    fg      = "#3c3c3c",
    green   = "#6f8f2e", 
    green_bright = "#88aa44", 
    yellow  = "#c5861a",
    red     = "#d14d41", 
    blue    = "#39797b",
    gray    = "#7c7c7c", 
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.o.background = "light"
vim.g.colors_name = "cham_light"

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

-- completion, border for completion/documentataion, documentataion popup
vim.api.nvim_set_hl(0, "Pmenu",        { fg = "#2a2a2a", bg = "#e8e4d9" })
vim.api.nvim_set_hl(0, "PmenuSel",     { fg = "#ffffff", bg = "#5e8c1a", bold = true })
vim.api.nvim_set_hl(0, "PmenuSbar",    { bg = "#d0ccb9" })
vim.api.nvim_set_hl(0, "PmenuThumb",   { bg = "#88aa44" })
vim.api.nvim_set_hl(0, "CmpBorder",    { fg = "#5e8c1a", bg = "#e8e4d9" })
vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = "#5e8c1a", bg = "#f4f0e5" })
vim.api.nvim_set_hl(0, "NormalFloat",  { fg = "#2a2a2a", bg = "#f4f0e5" })
vim.api.nvim_set_hl(0, "FloatBorder",  { fg = "#5e8c1a", bg = "#f4f0e5" })

