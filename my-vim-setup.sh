#!/bin/sh

echo "Hello World!"
echo "install curl and git if not present."
sudo pkg install curl
sudo pkg install git

echo "install Plug package manager."

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Download my .vimrc"
git clone https://gist.github.com/2a3f163b37cc3ba5ff444bf409770e74.git

mv 2a3f163b37cc3ba5ff444bf409770e74/.vimrc .vimrc
rm -fr 2a3f163b37cc3ba5ff444bf409770e74

cd .vim/
mkdir colors
cd colors

echo "Download atom theme"
git clone https://gist.github.com/5b78cfbd0a6669b4a2fabf0237caee4d.git
mv 5b78cfbd0a6669b4a2fabf0237caee4d/atom.vim atom.vim
rm -fr 5b78cfbd0a6669b4a2fabf0237caee4d
cd

echo "Done with vim setup"