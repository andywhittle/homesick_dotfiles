export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

export RUBY_HEAP_MIN_SLOTS=6000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=59000000
export RUBY_HEAP_FREE_MIN=500000

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git textmate ruby osx bundler brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/X11/bin:/Users/andywhittle/.rvm/bin:/usr/local/sbin:/usr/local/mysql/bin

unsetopt auto_name_dirs
bindkey "^[[3~" delete-char
alias screen='screen -U'
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off

alias be="bundle exec"

export PERL_MM_USE_DEFAULT=1
export CC=/usr/bin/gcc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export EDITOR=vi
#export GIT_PAGER=cat
compctl -f -k "( `cat ~/.ssh/config | grep "Host " | grep -vE "^#" | awk '{print $2}' | grep -v "*"` )" an

alias gp="git pull origin $(current_branch)"
alias yes='echo yes'
alias gd='git diff'
alias gds='git diff --staged'
alias ls='ls -laG'
alias find_rails='find . -path "./log" -prune -o -path "./coverage" -prune -o -path "./public/images" -prune -o -path "./.*" -prune -o -path "./tmp" -prune -o -path "./public/assets" -prune -o -print'
alias mi='grep -n ">>>>>>>\|<<<<<<<" `find_rails`'
alias -s rb=vim
alias -s log="less -MNf"
alias m='mate .'
jqit() { wget -O - "$*" | jq -C . | less -R }

function renametab () {
    echo -ne "\033]0;"$@"\007"
  }

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
