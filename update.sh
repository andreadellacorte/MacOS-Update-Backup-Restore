#!/bin/zsh

SHELL=/bin/zsh
ZSH=/Users/andrea/.oh-my-zsh
PATH=/usr/local/sbin:/Users/andrea/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/opt/puppetlabs/bin:/improbable/tools/latest/mac

upgrade_oh_my_zsh () {
	env ZSH=$ZSH sh $ZSH/tools/upgrade.sh
}

upgrade_oh_my_zsh

gem update --system
gem update

# Homebrew
brew update
brew upgrade
brew cleanup -s
brew cask cleanup

# Now diagnotic
brew doctor
brew missing

# Update Store Apps
mas upgrade
