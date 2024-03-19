#!/bin/bash

# get bash script dir
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "update.sh directory: ${SCRIPT_DIR}"

# make .config dir
mkdir -p ~/.config

# start symlinking
echo "symlink: ~/.zshrc"
ln -s "${SCRIPT_DIR}/.zshrc" ~/.zshrc

echo "symlink: ~/.config/nvim"
if [ -d ~/.config/nvim ]; then
  echo "~/.config/nvim already exists"
else
  ln -s "${SCRIPT_DIR}/nvim" ~/.config/nvim
fi

echo "symlink: ~/.config/alacritty"
if [ -d ~/.config/alacritty ]; then
  echo "~/.config/alacritty already exists"
else
  ln -s "${SCRIPT_DIR}/alacritty" ~/.config/alacritty
fi

echo "symlink: ~/.helpers"
if [ -d ~/.helpers ]; then
  echo "~/.helpers already exists"
else
  ln -s "${SCRIPT_DIR}/.helpers" ~/.helpers
fi

echo "symlink: ~/.tmux.conf"
ln -s "${SCRIPT_DIR}/.tmux.conf" ~/.tmux.conf

echo "symlink: ~/.ssh/extras"
ln -s "${SCRIPT_DIR}/.ssh/extras" ~/.ssh/extras

echo "symlink: ~/.ssh/clone-node-config"
ln -s "${SCRIPT_DIR}/.ssh/clone-node-config" ~/.ssh/clone-node-config
