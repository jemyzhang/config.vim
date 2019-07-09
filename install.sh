#!/bin/bash -ex

CURRENT_DIR=$(realpath $(dirname $(readlink -f ${BASH_SOURCE[0]:-$0})))

pushd $CURRENT_DIR > /dev/null 2>&1

git submodule init
git submodule update --remote --recursive

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

if [ -f $HOME/.zshrc ]; then
  mv $HOME/.zshrc $HOME/.zshrc.old
fi

ln -sf $CURRENT_DIR/zshrc $HOME/.zshrc

#nvim
if [ -e $HOME/.config/nvim ]; then
  mv $HOME/.config/nvim $HOME/.config/nvim.old
fi

ln -sf $CURRENT_DIR/nvim $HOME/.config/nvim

# vi
if [ -e $HOME/.vimrc ]; then
  mv $HOME/.vimrc $HOME/.vimrc.old
fi

ln -sf $CURRENT_DIR/vimrc $HOME/.vimrc

# tmux
if [ -e $HOME/.tmux.conf ]; then
  mv $HOME/.tmux.conf $HOME/.tmux.conf.old
fi

ln -sf $CURRENT_DIR/tmux.conf $HOME/.tmux.conf

# font
$CURRENT_DIR/fonts/install.sh

# git
source $CURRENT_DIR/gitconfig.sh

if [ ! -e $HOME/.gitignore_global ]; then
  ln -sf $CURRENT_DIR/gitignore_global $HOME/.gitignore_global
fi


popd > /dev/null 2>&1
