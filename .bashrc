export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=$PATH:/Users/ikemurakazutaka/Library/Android/sdk/platform-tools
export PATH=$PATH:/Users/ikemurakazutaka/Library/Android/sdk/tools
export ANDROID_SDK=Library/Android/sdk/

# cd --------
alias cdadb="cd ~/Library/Android/sdk/tools"
alias cdsdk="cd ~/$ANDROID_SDK"

# ------ git -------
alias ll='ls -l'
alias la='ls -la'
alias gs='git status -u -b -s'
alias gd='git diff --stat'
alias gdc="git diff --stat --cached"
alias av="git branch -av"
alias sbr="source ~/.bashrc; exec zsh"
alias vbr="vim ~/.bashrc"
alias vzr="vim ~/.zshrc"
alias vbp="vim ~/.bash_profile"

# ------ adb -------
alias adbrestart="adb kill-server; adb start-server"
#alias sshot=$ANDROID_SDK"/tools/screenshot2 ~/Desktop/screenshot.png; open ~/Desktop/screenshot.png";
alias sshot=$ANDROID_SDK"/tools/screenshot2 ~/Desktop/screenshot.png";
alias sshot=$ANDROID_SDK"/tools/screenshot2 ~/Desktop/screenshot.png; open ~/Desktop/screenshot.png"
alias uiat=$ANDROID_SDK"/tools/uiautomatorviewer"
alias hierarchy="/Users/ikemurakazutaka/Library/Android/sdk/tools/hierarchyviewer"
alias acrun='adb shell dumpsys activity | grep -B 1 "Run #[0-9]*:"'
alias actop="adb shell dumpsys activity top"
alias iptx="adb shell input text"

# ------ linux ------
alias taila="tail -f /private/var/log/apache2/access_log"
alias openexcel="open -a 'Microsoft Excel'"
alias rm='rm -i'
alias grep='grep --color'
alias ps='ps --sort=start_time'
alias openexcel="open -a 'Microsoft Excel'"
