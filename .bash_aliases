alias e='emacsclient -q -c -n'
alias xe='emacsclient -q -c'

alias asciitree="/usr/bin/tree --dirsfirst -F | sed -e 's/│/|/g' -e 's/├\|└/+/g' -e 's/─/-/g'"
alias tree="/usr/bin/tree --dirsfirst -F"

# Ubuntu does not define the following aliases system wide
__cond_alias() {
    if ! alias "${1%=*}" >& /dev/null; then
        alias "$1"
    fi
}

__cond_alias l.='ls -d .* --color=auto'
__cond_alias ll='ls -l --color=auto'
__cond_alias ls='ls --color=auto'
__cond_alias egrep='egrep --color=auto'
__cond_alias fgrep='fgrep --color=auto'
__cond_alias grep='grep --color=auto'
__cond_alias xzegrep='xzegrep --color=auto'
__cond_alias xzfgrep='xzfgrep --color=auto'
__cond_alias xzgrep='xzgrep --color=auto'
__cond_alias zegrep='zegrep --color=auto'
__cond_alias zfgrep='zfgrep --color=auto'
__cond_alias zgrep='zgrep --color=auto'
