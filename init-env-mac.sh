#!/bin/bash

# Install brew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

# Install Oh-My-ZSH
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

# Install code font for powerline
brew tap homebrew/cask-fonts
if ! brew list --cask font-fira-code-nerd-font; then
	brew cask install font-fira-code-nerd-font
fi

if ! command -v nvm &> /dev/null
then
    echo "nvm could not be found"
    printf "\n🚀 Installing nvm..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh
fi

# Spaceship
if ! grep -q "SPACESHIP_CHAR_SYMBOL" ~/.zshrc; then
	printf "Installing Spaceship"
	npm install -g spaceship-prompt
	printf "\n🚀 Adding some prompt setup in .zshrc"
	echo -e 'SPACESHIP_PROMPT_ADD_NEWLINE="true"
	SPACESHIP_CHAR_SYMBOL=" "
	SPACESHIP_CHAR_PREFIX=""
	SPACESHIP_CHAR_SUFFIX=(" ")
	SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
	SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
	SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
	SPACESHIP_USER_SHOW="true"' >> .zshrc
else
	printf "\n🚀 Spaceship configuration already present in .zshrc"

fi
