#!/usr/bin/env bash

#############################################################################
#                                                                           #
#   Setup Mac System Preferences                                            #
#                                                                           #
#   Sourced: https://github.com/mathiasbynens/dotfiles/blob/master/.osx     #
#                                                                           #
#############################################################################



###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Trackpad: enable tap to click for this user and for the login screen
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: enable secondary tap to click
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Set Mission Control and App Expose to 3 fingers up/down
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerVertSwipeGesture -int 2




###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Move Dock to left side of the screen
defaults write com.apple.dock orientation -string "left"

# Turn of Dock magnification
defaults write com.apple.dock magnification -int 0




###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5




###############################################################################
# Kill affected applications                                                  #
###############################################################################

# Apply changes
killall Dock Finder SystemUIServer
