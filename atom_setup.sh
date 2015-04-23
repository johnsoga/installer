#!/usr/bin/env bash

#
# Atom Plugin Installs
#

# Main Linter Required
apm install linter

# Editor Config
apm install editorconfig

# Shell Check
brew install shellcheck
apm install linter-shellcheck

# C
apm install linter-clang

# Java
apm install linter-javac
