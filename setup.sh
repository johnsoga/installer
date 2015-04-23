#!/usr/bin/env bash

source colors.sh

### Clone dotfiles and install
DOT_FILES="$HOME/.bin/dotfiles"
git clone https://github.com/johnsoga/dotfiles.git "$DOT_FILES"


### Link Bash Files & Misc Config Files
ln -s "$DOT_FILES/bash/bash_profile" "$HOME/.bash_profile"
ln -s "$DOT_FILES/bash/bashrc" "$HOME/.bashrc"
ln -s "$DOT_FILES/editorconfig/editorconfig" "$HOME/.editorconfig"


# Download and install Homebrew and Homebrew Cask
if [[ ! $(which brew) ]]; then
	printf "\r" | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew install caskroom/cask/brew-cask
fi

# Download and install Ansible
if [[ ! $(which ansible) ]]; then
	brew install ansible
fi


### Reload Bash
source ~/.bash_profile

ansible-playbook apps.yml -i "$DOT_FILES/ansible/hosts"
mkdir "$HOME/.atom/"
ln -s "$DOT_FILES/atom/config.cson" "$HOME/.atom/config.cson"


./osx_defaults.sh
./atom_setup.sh
