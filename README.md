dotfiles
========

self explanatory. But seriously this is to keep a copy of my CLI development environment configuration.

Folders
--------
* gitignore - contains my usual git ignore stuff
* cocoapods - Contains a podfile for my usual Cocoapods libraries

Installing
--------

```bash
# If you have a .vimrc or .profile you probably should check them out first. Pull requests welcome.

cd $HOME
if ! [ -f .profile ]; then
    ln -s src/dotfiles/profile .profile
fi

if ! [ -f .vimrc ]; then
    ln -s src/dotfiles/profile .vimrc
fi
```

Usage
--------
* Choose file you want (or just clone this whole repo)
* Go to RAW mode and grab the URL
* curl -o filename "http://url"
* wget "http://url"
* add . in front of the file, some files may require extra care such as ```dotssh``` which should be be called ```.ssh``` but I recommend doing ```ln -s src/dotfiles/dotssh/config $HOME/.ssh/config``` instead
* If you got changes fork and do pull request
