#!/bin/bash

brew tap caskroom/versions

brew install tree

mkdir -p ~/.nodebrew/src
brew install nodebrew

brew install wget
brew install the_silver_searcher
brew install antigen
brew install phantomjs

brew cask install visual-studio-code
brew cask install slack
brew cask install sourcetree
brew cask install java7
brew cask install google-chrome-canary

# Maven 要Java
brew install maven
