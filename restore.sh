#!/bin/zsh

brew bundle --force

cat Gemfile | xargs gem install

cp Mackup ~/Mackup

cp ./.mackup.cfg ~/.mackup.cfg

mackup restore
