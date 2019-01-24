# Set up Prompt and PATH
export PS1='\[\033[0;34m\]\u\[\033[0;31m\]@\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]:\$ '

# LNCLI within docker (if lncli not installed)
if [ $(which lncli | grep -c lncli) == 0 ]; then
    alias lncli='sudo docker exec -it compose_lndbox_1 lncli'
else
    alias lncli=$(which lncli)
fi

# GPG TTY if GPG is installed
if ! command -v gpg 2>&1 1>/dev/null; [ "$?" -ne "0" ]; then
    export GPG_TTY=$(tty)
fi

if ! command -v /usr/local/go/bin/go 2>&1 1>/dev/null; [ "$?" -ne "0" ]; then
    export GOPATH=$HOME/gocode
    export PATH=$PATH:/usr/local/go/bin:/home/pi/gocode/bin
fi

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
