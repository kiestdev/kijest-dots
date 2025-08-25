#! /bin/bash
# THIS IS AN AUTOMATED SETUP SCRIPT FOR INSTALLING MY CODE EDITOR AND ITS PLUGINS.
# THIS FILE IS MADE BY MICHAEL. NOT A 3RD PARTY THAT ISNT APART OF WT.
# THIS FILE IS REPLACATABLE, ANY OTHER MEMBER OF THIS WT PROGRAMME CAN EXECUTE THIS TOO.
# Installs the Brew Package Manager.
# Installs Text Editor (Neovim), Terminal Editor (kitty), and git for installing the dotfiles repo
# Clones my Git repo with all the config and UserData Files. 
# There is no Student Info on this repo. only commands, themes, automations, etc.
# Moves all of it's contents to my local profile

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install neovim git zsh
brew install --cask kitty

brew tap homebrew/cask-fonts
brew install --cask font-fira-code
chsh -s /bin/zsh

cd ~/
git clone https://github.com/kiestdev/kijest-dots.git
cd kijest-dots

mv -n config/ ~/.config/
mv .zshrc ~/.zshrc

export EDITOR="/opt/homebrew/bin/kitty +kitten edit"
export VISUAL="$EDITOR"

cd ~/

echo "INSTALLATION COMPLETE, NO ERROR ON FILE"
