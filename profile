# Set up Prompt and PATH
export PS1='\[\033[0;34m\]\u\[\033[0;31m\]@\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]:\$ '
export PATH="/usr/local/heroku/bin:$HOME/.rvm/bin:$PATH"

# NVM and RVM stuff (make sure you delete .bash_profile or this file doesn't get read)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # loads RVM
[[ -s /Users/barryteoh/.nvm/nvm.sh ]] && . /Users/barryteoh/.nvm/nvm.sh # This loads NVM
