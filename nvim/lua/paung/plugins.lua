-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    ---------------------------------------
    -- NOTE: PUT YOUR THIRD PLUGIN HERE --
    ---------------------------------------
    -- modif distance sini

    use 'Shatur/neovim-ayu' -- TODO: next neovim theme
    -- use 'tanvirtin/monokai.nvim'

    -- autocompletion plugins
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim'}
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }    
    use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' } 
    use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }        -- buffer auto-completion
    use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }          -- path auto-completion
    use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }       -- cmdline auto-completion
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'georgewfraser/java-language-server'


    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/playground'
    -- a useless plugin lmao 
    use 'eandrju/cellular-automaton.nvim'
    local function animate(type)
      require('cellular-automaton').start_animation(type)
    end

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use 'mfussenegger/nvim-jdtls'

    -- some snippets
    --use("L3MON4D3/LuaSnip") 
    --use("saadparwaiz1/cmp_luasnip") 
    use("rafamadriz/friendly-snippets") 
    use("onsails/lspkind.nvim")

    -- dashboard
    -- and they are must require the nvim-tree/nvim-web-devicons
    use "nvim-tree/nvim-web-devicons"
    use {
        "goolord/alpha-nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        -- config = function()
        --     local alpha = require("alpha")
        --     local dashboard = require("alpha.themes.startify")
        --         --vim.cmd("hi dashboardheader guifg=#4caf50") -- bad habit cause forcing the general startup, i think so
        --       dashboard.section.header.val = {
        --           '                     .:::!~!!!!!:.',
        --           '                  .xuhwh!! !!?m88whx:.         _____      __    __    _____    _____       ________     ____     __    __     ____    ',
        --           '                .x*#m@$!!  !x!m$$$$$$wwx:.    (_   _)     ) )  ( (   / ____\\  / ___/      (___  ___)   (    )    ) )  ( (    (    )   ',
        --           '               :!!!!!!?h! :!$!$$$$$$$$$$8x:     | |      ( (    ) ) ( (___   ( (__            ) )      / /\\ \\   ( (    ) )   / /\\ \\   ',
        --           '              !!~  ~:~!! :~!$!#$$$$$$$$$$8x:    | |       ) )  ( (   \\___ \\   ) __)          ( (      ( (__) )   \\ \\  / /   ( (__) )  ',
        --           '             :!~::!h!<   ~.u$x!?r$$$$$$$$mm!    | |      ( (    ) )      ) ) ( (          __  ) )      )    (     \\ \\/ /     )    (   ',
        --           '             ~!~!!!!~~ .:xw$$$u!!?$$$$$$rmm!   _| |__     ) \\__/ (   ___/ /   \\ \\___     ( (_/ /      /  /\\  \\     \\  /     /  /\\  \\  ',
        --           '               !:~~~ .:!m"t#$$$$wx??#mrrmmm!  /_____(     \\______/  /____/     \\____\\     \\___/      /__(  )__\\     \\/     /__(  )__\\ ',
        --           '               ~?wuxiw*`   `"#$$$$8!!!!??!!!',
        --           '             :x- m$$$$       `"t#$t~!8$wuxu~',
        --           '            :%`  ~#$$$m:        ~!~ ?$$$$$$',
        --           '          :!`.-   ~t$$$$8xx.  .xww- ~""##*"',
        --           '.....   -~~:<` !    ~?t#$$@@w@*?$$      /`',
        --           'w$@@m!!! .!~~ !!     .:xuw$w!~ `"~:    :',
        --           '#"~~`.:x%`!!  !h:   !wm$$$$ti.: .!wun+!`',
        --           ':::~:!!`:x~ .: ?h.!u "$$$b$$$!w:u!t$$m~',
        --           '.~~   :x@!.-~   ?@wtwo("*$$$w$th$! `',
        --           'wi.~!x$?!-~   :: ?$$$b$wu("**$rm!',
        --           '$r@i.~~ !    ::   ~$$$$$b$$en:``',
        --           '?mxt@wx.~   ::     ~"##*$$$$m'
        --       }
        --
        --     alpha.setup(dashboard.opts)
        -- end,
    }

    use "windwp/nvim-autopairs"
    use { 'numToStr/Comment.nvim', }


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
