#!/usr/bin/env bash

DOT_FILES="$HOME/.dotfiles"

### Link Bash Files & Misc Config Files
mkdir "$HOME/.atom/" > /dev/null 2>&1
ln -fs "$DOT_FILES/bash/bash_profile" "$HOME/.bash_profile"
ln -fs "$DOT_FILES/bash/bashrc" "$HOME/.bashrc"
ln -fs "$DOT_FILES/editorconfig/editorconfig" "$HOME/.editorconfig"
ln -fs "$DOT_FILES/atom/config.cson" "$HOME/.atom/config.cson"
ln -fs "$DOT_FILES/ansible/ansible.cfg" "$HOME/.ansible.cfg"
