#!/usr/bin/env bash

### Download and install Homebrew and Homebrew Cask
if [[ ! $(which brew) ]]; then
	printf "\r" | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew install caskroom/cask/brew-cask
fi

### Download and install Ansible
if [[ ! $(which ansible) ]]; then
	brew install ansible
fi

### Clone dotfiles repo
git clone https://github.com/johnsoga/dotfiles.git "$HOME/.dotfiles"

### Link dotfiles
./link_config.sh

# Install applications
ansible-playbook apps.yml

# Setup Atom
./atom_setup.sh

# Setup OSX Preferences; Done last since it triggers a restart
./osx_defaults.sh
