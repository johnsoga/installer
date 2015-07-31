#!/usr/bin/env bash

OS="$(uname)"

case "$OS" in
	"Darwin")
		./osx.sh ;;
	"Linux")
		./linux.sh ;;
esac
