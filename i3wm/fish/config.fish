if status is-interactive
    #set fish_greeting ''
    set hour (date +%H)
    if test $hour -ge 06 -a $hour -lt 12
        set fish_greeting (set_color 62A) "Good morning, $USER!"
    elif test $hour -ge 12 -a $hour -lt 18
        set fish_greeting (set_color 62A) "Good afternoon, $USER!"
    elif test $hour -ge 18 -a $hour -lt 21
        set fish_greeting (set_color 62A) "Good evening, $USER!"
    else
        set fish_greeting (set_color 62A) "Good night, $USER!"
    end
    set -g fish_color_user blue
    alias 'dev'='cd ~/Dev/'
    alias 'lockscreen'='~/.config/i3lock/lock.sh'
    alias 'lockscreen_blue'='~/.config/i3lock/lock'
    alias 'vi'='vim'
    alias 'piton'='source ~/python-primary/bin/activate.fish'
end
