
-- global function bang
function colorui(color)
    color = color or 'ayu-dark'

    -- for transparent bg
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none'}) 
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none'}) 
end

-- very ugly as vuckkk
--colorui()


