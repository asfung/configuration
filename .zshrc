# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo history encode64 copypath zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Java Setup
#JAVA_HOME="/home/asfung/jdk-17.0.7"
#export PATH=$PATH:$JAVA_HOME/bin

#JAVA_HOME="/home/asfung/jdk-21"
#export PATH=$PATH:$JAVA_HOME/bin

NODEJS="/home/asfung/node-v18.18.0-linux-x64"
export PATH=$PATH:$NODEJS/bin

# Scala
export PATH="$PATH:.local/share/coursier/bin"

export PATH="$PATH:/home/asfung/apache-maven-3.9.3/bin"

export PATH="$PATH:/opt/lampp/bin"

alias 'xamppnyakaka'='sudo /opt/lampp/lampp startapache && sudo /opt/lampp/lampp startmysql'
alias 'udahanxamppnya'='sudo /opt/lampp/lampp stopapache && sudo /opt/lampp/lampp stopmysql && sudo /etc/init.d/apache2 stop'
# alias 'fixapache'='sudo /etc/init.d/apache2 stop'
alias 'a2on'='sudo /etc/init.d/apache2 start'
# alias 'create-maven'='mvn archetype:generate -DgroupId=com.example -DartifactId=my-project -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false'

# export PATH='.config/composer/vendor/laravel/installer/bin:$PATH'
export PATH="$PATH:/home/asfung/.config/composer/vendor/bin"
alias pa='php artisan'

export PATH="$PATH:/home/asfung/idea-IC-232.8660.185/bin"

#export JAVA_HOME="/home/asfung/jdk-17.0.7"
export JAVA_HOME="/home/asfung/jdk-21"
alias 'posgresstat'='sudo systemctl status postgresql'

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias 'mlenv'='source $HOME/Dev/Machine\ Learning/Env/bin/activate'

alias 'ts'='npm init && npm install --save-dev jest @types/jest && npm install --save-dev babel-jest @babel/preset-env && npm install --save-dev typescript && npx tsc --init && npm install --save-dev @babel/preset-typescript && npm install --save-dev ts-jest && npm install @jest/globals'

alias 'npmsd'='npm install --save-dev'
alias 'psqlser'='sudo /usr/pgadmin4/bin/setup-web.sh'
alias 'docker'='sudo docker'

# gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
# gsettings set org.gnome.Terminal.Legacy.Settings headerbar true

export PATH="$PATH:/$HOME/scripts"
alias 'tmuxbash'='$HOME/scripts/tmuxbash.sh'

# LATER: install update-notifier via apt

alias 'dev'='cd /$HOME/Dev'
alias 'dev2'='cd /media/asfung/Paung/Ubuntu\ Dev\ Folder/Dev'



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

alias 'javac21'='javac --release 21 --enable-preview'
alias 'java21'='java --enable-preview'
alias 'fixapt'='sudo service packagekit restart'
alias 'el'='elixir'

alias 'tl'='java -jar /home/asfung/Downloads/tluncher/TLauncher-2.885.jar'


