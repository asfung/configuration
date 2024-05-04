local alpha = require("alpha")
-- local dashboard = require("alpha.themes.startify")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
              '                     .:::!~!!!!!:.',
              '                  .xuhwh!! !!?m88whx:.         _____      __    __    _____    _____       ________     ____     __    __     ____    ',
              '                .x*#m@$!!  !x!m$$$$$$wwx:.    (_   _)     ) )  ( (   / ____\\  / ___/      (___  ___)   (    )    ) )  ( (    (    )   ',
              '               :!!!!!!?h! :!$!$$$$$$$$$$8x:     | |      ( (    ) ) ( (___   ( (__            ) )      / /\\ \\   ( (    ) )   / /\\ \\   ',
              '              !!~  ~:~!! :~!$!#$$$$$$$$$$8x:    | |       ) )  ( (   \\___ \\   ) __)          ( (      ( (__) )   \\ \\  / /   ( (__) )  ',
              '             :!~::!h!<   ~.u$x!?r$$$$$$$$mm!    | |      ( (    ) )      ) ) ( (          __  ) )      )    (     \\ \\/ /     )    (   ',
              '             ~!~!!!!~~ .:xw$$$u!!?$$$$$$rmm!   _| |__     ) \\__/ (   ___/ /   \\ \\___     ( (_/ /      /  /\\  \\     \\  /     /  /\\  \\  ',
              '               !:~~~ .:!m"t#$$$$wx??#mrrmmm!  /_____(     \\______/  /____/     \\____\\     \\___/      /__(  )__\\     \\/     /__(  )__\\ ',
              '               ~?wuxiw*`   `"#$$$$8!!!!??!!!',
              '             :x- m$$$$       `"t#$t~!8$wuxu~',
              '            :%`  ~#$$$m:        ~!~ ?$$$$$$',
              '          :!`.-   ~t$$$$8xx.  .xww- ~""##*"',
              '.....   -~~:<` !    ~?t#$$@@w@*?$$      /`',
              'w$@@m!!! .!~~ !!     .:xuw$w!~ `"~:    :',
              '#"~~`.:x%`!!  !h:   !wm$$$$ti.: .!wun+!`',
              ':::~:!!`:x~ .: ?h.!u "$$$b$$$!w:u!t$$m~',
              '.~~   :x@!.-~   ?@wtwo("*$$$w$th$! `',
              'wi.~!x$?!-~   :: ?$$$b$wu("**$rm!',
              '$r@i.~~ !    ::   ~$$$$$b$$en:``',
              '?mxt@wx.~   ::     ~"##*$$$$m'
}

dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)
