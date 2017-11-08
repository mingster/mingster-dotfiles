#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Install Java
#brew tap caskroom/cask
brew cask install java8
#brew cask install java

#Manage Java enviornment - http://www.jenv.be
brew install jenv

#brew install Caskroom/cask/android-sdk
brew cask install --appdir="/Applications/_dev" android-studio
brew cask install --appdir="/Applications/_dev" eclipse-java
brew cask install --appdir="/Applications/_dev" intellij-idea-ce


#############################################
# https://gist.github.com/patrickhammond/4ddbe49a67e5eb1b9c03
#############################################

# Remove outdated versions from the cellar.
brew cleanup
