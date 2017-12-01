# .bashrc

# Source global definitions
# For Fedora systems
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# For Ubuntu systems
if [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi

# Ubuntu systems may or may not already setup bash completion
if [ -z "$BASH_COMPLETION_COMPAT_DIR" -a -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Setup the git bash prompt
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
    . /usr/share/git-core/contrib/completion/git-prompt.sh
fi
__my_git_ps1() {
    if type -t __git_ps1 >& /dev/null &&
           git rev-parse --show-toplevel >& /dev/null &&
           [ "$(git rev-parse --show-toplevel)" != "$HOME" ]; then
        __git_ps1 "$1" "$2"
    else
        PS1="$1$2"
    fi
}
PROMPT_COMMAND='__my_git_ps1 "\[\033[1;33;44m\]\w\[\033[0m\]  " "\n\[\033[0;32m\]\u@\h\$\[\033[0m\] "'
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM="verbose name"
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_DESCRIBE_STYLE="branch"
#PS1='\[\033[1;33;44m\]\w\[\033[0m\]  \[\033[1;42m\]\[\033[0m\]\n\[\033[0;32m\]\u@\h\$\[\033[0m\] '

export HISTCONTROL=ignoreboth
export HISTIGNORE='ls:cd ~:cd ..'
shopt -s histappend

export EDITOR="emacsclient -q -c"
export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
export MALLOC_CHECK_=3
