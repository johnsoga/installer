#!/usr/bin/env bash

DOT_FILES="$HOME/.dotfiles"

### Link Bash Files & Misc Config Files
mkdir "$HOME/.atom/"
ln -s "$DOT_FILES/bash/bash_profile" "$HOME/.bash_profile"
ln -s "$DOT_FILES/bash/bashrc" "$HOME/.bashrc"
ln -s "$DOT_FILES/editorconfig/editorconfig" "$HOME/.editorconfig"
ln -s "$DOT_FILES/atom/config.cson" "$HOME/.atom/config.cson"
ln -s "$DOT_FILES/ansible/ansible.cfg" "$HOME/.ansible.cfg"
