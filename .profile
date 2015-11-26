if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

set history 10000
export EDITOR=vim
export LANG=ja_JP.utf8
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=fa
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\u@base:\[\033[01;34m\]\W\[\033[31m\] \[\033[31m\]\$(parse_git_branch)\[\033[00m\]$ "
export NODE_PATH=/usr/lib/node_modules
