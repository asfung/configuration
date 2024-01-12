#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias 'update-grub'='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias 'piton'='source $HOME/pitonEnv/bin/activate'

# PS1="\[\e]0;\u@\h: /\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:/\$ "

alias 'code'='/home/Asfung/VSCode-linux-x64/bin/code'

# biru
export PS1='\u@\h:\[\e[94m\]\w\[\e[0m\]\$ '

# hijau biasa
# export PS1='\u@\h:\[\e[32m\]\w\[\e[0m\]\$ '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export BLENDER=$PATH:home/Asfung/blender-4.0.0-linux-x64/
export MYSQL=$PATH:/opt/lampp/bin
alias 'pa'='php artisan'
alias 'wine32'='WINEPREFIX=~/.local/share/wineprefixes/wine32'
export PATH=$PATH:'/home/Asfung/apache-maven-3.9.5/bin'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'
. "$HOME/.cargo/env"

alias 'dev'='cd /home/Asfung/Dev/'
#export PATH=$PATH:'/opt/lampp/bin/'
alias 'jn'='jupyter notebook'

# my own idea exe command
function idea() {
	/home/Asfung/idea-IC-232.10227.8/bin/idea.sh "$1" >/dev/null 2>&1 &
}

export PATH=$PATH:'/home/Asfung/node-v20.10.0-linux-x64/bin'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

alias 'larapel'='cd /home/Asfung/Dev/Laravel/'
alias 'jawa'='cd /home/Asfung/Dev/Java/'
