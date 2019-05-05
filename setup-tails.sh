cp $HOME/Persistent/ssh-stuff/* $HOME/.ssh/
# Go to src/dotfiles
# git@gitlab.com:nolim1t/dotfiles.git
cd $HOME/Persistent/src/dotfiles
# Grab latest
git pull origin master
# Copy dotfiles into $HOME
cp gitconfig $HOME/.gitconfig
cp dotssh/config $HOME/.ssh
cp vimrc $HOME/.vimrc

# Update gitconfig
sed -i 's/hello\@NOSPAM.nolim1t.co/hello\@nolim1t.co/g; ' $HOME/.gitconfig

