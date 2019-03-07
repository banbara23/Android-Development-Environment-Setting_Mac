if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Show information to prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=

# ls color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#terminal text & color
# PS1="\[\033[33m\]\t\[\033[0m\] \[\033[32m\]\W \[\033[0m\] $(__git_ps1)\[\033[00m\]$ "
export PS1='\[\033[33m\]\t\[\033[0m\] \[\033[32m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '

# git-completion + git-prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh

# jenv PATH
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#ndenv
export PATH="$HOME/.ndenv/bin:$PATH"

eval "$(ndenv init -)"

# Android
export JAVA_HOME=`/usr/libexec/java_home -v1.8`
export ANDROID_HOME=$HOME/Library/Android/sdk
PATH=$PATH:$JAVA_HOME/bin
PATH=$PATH:$ANDROID_HOME/platform-tools
PATH=$PATH:$ANDROID_HOME/tools/bin

# Flutter
export PATH=$PATH:`pwd`/flutter/bin

export PATH="/usr/local/sbin:$PATH"

export PATH