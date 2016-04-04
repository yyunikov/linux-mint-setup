#!/bin/sh

cleanup() {
    sudo apt-get -y update
    sudo apt-get -y dist-upgrade
    sudo apt-get -y -f install
    sudo apt-get -y autoremove
    sudo apt-get -y autoclean
    sudo apt-get -y clean

}

# fast-apt
sudo add-apt-repository -y ppa:saiarcot895/myppa
sudo apt-get -y update
sudo apt-get -y install apt-fast

# req to install
sudo apt-fast -y install aptitude cowsay curl dpkg

# auto repos
sudo add-apt-repository -y ppa:cwchien/gradle
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-add-repository -y ppa:paolorotolo/android-studio
sudo add-apt-repository -y ppa:linrunner/tlp
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo add-apt-repository -y ppa:transmissionbt/ppa

# no ppa reps
sudo apt-add-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"

sudo apt-get update

# codec
sudo apt-get install -y ubuntu-restricted-extras ffmpeg x264 gstreamer0.10-ffmpeg libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh
sudo apt-get -y install vlc browser-plugin-vlc

# gimp
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

# clementine player
sudo apt-get install -y clementine

# java 8
sudo apt-get -y install oracle-java8-installer

# android
sudo apt-get -y install android-studio

# rdp
sudo apt-get install -y remmina remmina-plugin-rdp

# tlp
sudo apt-get install -y tlp tlp-rdw
sudo tlp start

# virtualbox
sudo apt-get -y install virtualbox

# build systems
sudo apt-get -y install maven
sudo apt-get -y install gradle

# transmisson
sudo apt-get -y install transmission minissdpd natpmp-utils

# skype
sudo apt-get -y install skype

# vim
sudo apt-get -y install vim

# sublime2
sudo apt-get -y install sublime-text

# git
sudo apt-get -y install git
sudo apt-get -y install gitk
sudo apt-get -y install git-gui

# google chrome
sudo aptitude -y install google-chrome-stable
sudo rm /etc/apt/sources.list.d/google-chrome.list

# grub customizer
sudo apt-get install grub-customizer

cleanup

cowsay "FINISHED"
