local function set_highlights(c)
  vim.cmd("hi clear")
  vim.g.colors_name = "boi"

  -- ui
  vim.api.nvim_set_hl(0, "Normal",        { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "NormalFloat",   { fg = c.fg, bg = c.overlay })
  vim.api.nvim_set_hl(0, "LineNr",        { fg = c.dim, bg = c.bg })
  vim.api.nvim_set_hl(0, "CursorLine",    { bg = c.cursorline })
  vim.api.nvim_set_hl(0, "CursorLineNr",  { fg = c.green, bold = true })
  vim.api.nvim_set_hl(0, "Visual",        { bg = c.visual })
  vim.api.nvim_set_hl(0, "StatusLine",    { fg = c.green, bg = c.status })
  vim.api.nvim_set_hl(0, "StatusLineNC",  { fg = c.dim, bg = c.status_nc })

  -- syntax 
  vim.api.nvim_set_hl(0, "@comment",      { fg = c.comment, italic = true })
  vim.api.nvim_set_hl(0, "@keyword",      { fg = c.green, bold = true })
  vim.api.nvim_set_hl(0, "@type",         { fg = c.green })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = c.green })
  vim.api.nvim_set_hl(0, "@function",     { fg = c.teal, bold = true })
  vim.api.nvim_set_hl(0, "@function.call",{ fg = c.teal })
  vim.api.nvim_set_hl(0, "@variable",     { fg = c.fg })
  vim.api.nvim_set_hl(0, "@string",       { fg = c.rose })
  vim.api.nvim_set_hl(0, "@number",       { fg = c.yellow })
  vim.api.nvim_set_hl(0, "@constant",     { fg = c.yellow })
  vim.api.nvim_set_hl(0, "@property",     { fg = c.teal })
  vim.api.nvim_set_hl(0, "@operator",     { fg = c.fg })

  -- diagnostics
  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = c.error })
  vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = c.warn })
  vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = c.teal })
  vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = c.dim })
end

if vim.o.background == "dark" then
  set_highlights({
    bg        = "#000000",
    fg        = "#d0d0d0",
    dim       = "#888888",
    green     = "#4caf50",
    teal      = "#4db6ac",
    rose      = "#e09191",
    yellow    = "#f3e38a",
    overlay   = "#111111",
    cursorline= "#0a0a0a",
    visual    = "#1b2b1b",
    status    = "#1a1a1a",
    status_nc = "#101010",
    comment   = "#666666",
    error     = "#ff5555",
    warn      = "#ffdd55",
  })
else
  set_highlights({
    bg        = "#f8f9f5",
    fg        = "#333333",
    dim       = "#777777",
    green     = "#2e7d32",
    teal      = "#00796b",
    rose      = "#d85f5f",
    yellow    = "#b58900",
    overlay   = "#eceee8",
    cursorline= "#e6e9e1",
    visual    = "#d0e0d8",
    status    = "#d6e6dd",
    status_nc = "#e0eae3",
    comment   = "#7a7a7a",
    error     = "#cc0000",
    warn      = "#aa8800",
  })
end

