alias k=kubectl
 complete -F __start_kubectl k

##### aesthetic #####
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="bash-\v \[$(tput sgr0)\]\[\033[38;5;13m\]\[\033[48;5;0m\]\u\[$(tput sgr0)\] \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
