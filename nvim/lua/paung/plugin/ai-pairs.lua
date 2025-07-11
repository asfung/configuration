require("supermaven-nvim").setup({
  keymaps = {
    -- accept_suggestion = "<Tab>",
    -- accept_suggestion = "<C-y>",
    accept_suggestion = "<A-f>",
    clear_suggestion = "<A-c>",
    accept_word = "<A-w>",
  },
  ignore_filetypes = { cpp = true }, -- or { "cpp", }
  color = {
    -- suggestion_color = "#ffffff",
    suggestion_color = "#808080",
    cterm = 244,
  },
  log_level = "info", -- set to "off" to disable logging completely
  disable_inline_completion = false, -- disables inline completion for use with cmp
  disable_keymaps = false, -- disables built in keymaps for more manual control
  condition = function()
    return false
    -- return vim.fn.pumvisible() == 1
  end -- condition to check for stopping supermaven, `true` means to stop supermaven when the condition is true.
})

