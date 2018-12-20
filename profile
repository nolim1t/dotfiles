# Set up Prompt and PATH
export PS1='\[\033[0;34m\]\u\[\033[0;31m\]@\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]:\$ '

# GPG TTY (Just in case it needs it)
export GPG_TTY=$(tty)

# For some reason "ifconfig | grep inet | grep -v inet6 | grep -v 127.0.0.1 | awk '{print $2}'" doesn'nt work :(
alias whatismyip ifconfig | grep inet | grep -v inet6 | grep -v 127.0.0.1
