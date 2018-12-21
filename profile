# Set up Prompt and PATH
export PS1='\[\033[0;34m\]\u\[\033[0;31m\]@\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]:\$ '


# GPG TTY if GPG is installed
if ! command -v gpg 2>&1 1>/dev/null; [ "$?" -ne "0" ]; then
    export GPG_TTY=$(tty)
fi

if ! command -v /usr/local/go/bin/go 2>&1 1>/dev/null; [ "$?" -ne "0" ]; then
    export GOPATH=/home/pi/gocode
    export PATH=$PATH:/usr/local/go/bin:/home/pi/gocode/bin
fi

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
