#!/bin/bash

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install required tools
brew install docker
brew install fd
brew install fzf
brew install gh
brew install git
brew install helm
brew install hey
brew install jq
brew install minikube
brew install nvm
brew install terraform
brew install tmux
brew install tree
brew install wget
brew install yarn
brew install z

# Install required apps
brew install --cask alfred
brew install --cask bettertouchtool
brew install --cask rectangle
brew install --cask appcleaner
brew install --cask stats
brew install --cask the-unarchiver
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask messenger
brew install --cask slack
brew install --cask discord
brew install --cask ticktick
brew install --cask obsidian
brew install --cask mimestream
brew install --cask numi
brew install --cask spotify
brew install --cask github
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask postman
brew install --cask lens

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
