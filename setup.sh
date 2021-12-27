#!/bin/bash

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install required tools
brew install tmux
brew install z
brew install fzf
brew install fd
brew install wget
brew install git
brew install gh
brew install nvm
brew install yarn
brew install terraform
brew install docker

# Not sure about these yet
# brew install minikube

# Install required apps
brew install --cask alfred
brew install --cask bettertouchtool
brew install --cask rectangle
brew install --cask appcleaner
brew install --cask stats
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask messenger
brew install --cask slack
brew install --cask discord
brew install --cask notion
brew install --cask ticktick
brew install --cask obsidian
brew install --cask spotify
brew install --cask github
brew install --cask visual-studio-code
brew install --cask postman

# Has issues on Macbook 2021
# brew install --cask docker

# Only used for 2021 Macbook Pro
# brew install --cask topnotch

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh plugins
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# Symlink dotfiles
bash ./symlink.sh
