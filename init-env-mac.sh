#!/bin/bash

# Install brew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

# Install Oh-My-ZSH
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

# Install code font for powerline
brew tap homebrew/cask-fonts
brew cask install font-fira-code-nerd-font

