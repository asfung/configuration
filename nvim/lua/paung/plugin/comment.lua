local config = {
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = '<C-_>',
        block = 'gbc',
    },
    opleader = {
        line = '<C-_>',
        block = 'gb',
    },
    extra = {
        above = 'gcO',
        below = 'gco',
        eol = 'gcA',
    },
    mappings = {
        basic = true,
        extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
}

require('Comment').setup(config)

