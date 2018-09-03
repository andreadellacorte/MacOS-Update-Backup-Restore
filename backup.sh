#!/bin/zsh

# Backup
gem list --no-versions > /keybase/private/andreadellacorte/Gemfile

brew bundle dump --force
mv Brewfile /keybase/private/andreadellacorte/Brewfile

mackup backup --force
cp -r /Users/andrea/Mackup/*(D) /keybase/private/andreadellacorte/Mackup
