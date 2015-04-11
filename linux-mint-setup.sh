#!/bin/sh

# auto repos
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
sudo add-apt-repository -y ppa:webupd8team/java

# no ppa reps
sudo apt-add-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

sudo apt-get update

# java 8
sudo apt-get install oracle-java8-installer

# skype
sudo apt-get install -y skype

# sublime2
sudo apt-get install -y sublime-text

# git
sudo apt-get -y install git
sudo apt-get -y install gitk
sudo apt-get -y install git-gui

# install chrome stable
sudo apt-get install -y google-chrome-stable
sudo rm /etc/apt/sources.list.d/google-chrome.list  
