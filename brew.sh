#!/bin/bash

brew tap caskroom/versions

brew install tree

mkdir -p ~/.nodebrew/src
brew install nodebrew

brew install antigen
brew install phantomjs

brew cask install visual-studio-code
brew cask install slack
brew cask install sourcetree
brew cask install google-chrome-canary
