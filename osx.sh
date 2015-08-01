#!/usr/bin/env bash

echo "System Identified: Mac OS X"
read -r -p "Continue? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
echo "Aborting..."; exit
fi


### Download and install Homebrew and Homebrew Cask
read -r -p "Install Homebrew? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
echo "Aborting..."; exit
fi
if [[ ! $(which brew) ]]; then
    printf "\r" | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    if [[ ! $(which brew) ]]; then
        printf "Failed to install Homebrew... Aborting...\n"; exit
    else
        brew doctor
        brew install caskroom/cask/brew-cask
        printf "Homebrew and Homebrew Cask installed\n"
    fi
else
    printf "Homebrew and Cask already installed\n"
fi


### Download and install Ansible
read -r -p "Install Ansible? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
echo "Aborting..."; exit
fi
if [[ ! $(which ansible) ]]; then
	sudo easy_install pip
	sudo pip install ansible
    if [[ ! $(which ansible) ]]; then
        printf "Failed to install Ansible... Aborting...\n"; exit
    else
        printf "Ansible installed\n"
    fi
else
    printf "Ansible already installed\n"
fi


### Clone dotfiles repo
read -r -p "Clone and Install Dotfiles repo? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
echo "Aborting..."; exit
fi
DOT_FILES="$HOME/.dotfiles"
if [ -d "$DOT_FILES" ]; then
    rm -rf "$DOT_FILES"
    git clone https://github.com/johnsoga/dotfiles.git "$DOT_FILES" || { printf "Failed to clone... Aborting...\n"; exit; }
else
    git clone https://github.com/johnsoga/dotfiles.git "$DOT_FILES" || { printf "Failed to clone... Aborting...\n"; exit; }
fi


### Link dotfiles
read -r -p "Link Files? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
echo "Aborting..."; exit
fi
./link_config.sh
printf "Files Linked\n"


### Install applications
read -r -p "Install Applications? [y/N] " response
if [[ ! $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
echo "Aborting..."; exit
else
ansible-playbook apps.yml
fi


### Setup Atom
./atom_setup.sh


### Setup OSX Preferences; Done last since it triggers a restart
./osx_defaults.sh
