# cdコマンド実行後、lsを実行する
function cd() {
  builtin cd $@ && ls -la;
}

# ------ git -------
alias gs='git status -u -b -s'
alias gd='git diff --stat'
alias gb='git branch'
alias gco='git check out'

# ------ adb -------
alias acrun='adb shell dumpsys activity | grep -B 1 "Run #[0-9]*:"'
alias actop="adb shell dumpsys activity top"
alias ipt="adb shell input text"
alias ipp="ipt;adb shell input keyevent 66;ipzp"
alias ss='~/dev/screenshot.sh'
alias sss='~/dev/screenshotSmall.sh'
alias rec='adb shell screenrecord /sdcard/output.mp4 --size 540x960'
alias recgif='~/dev/screenrecordConvertor.sh'

# ------ other ------
alias ll='ls -l'
alias la='ls -la'

alias sb="source ~/.bash_profile; source ~/.bashrc"
alias vbp="vim ~/.bash_profile"
alias vbr="vim ~/.bashrc"

alias rm='rm -i'
alias grep='grep --color'
alias ps='ps --sort=start_time'
