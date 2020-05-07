#!/bin/zsh
#
# Install Apps and Packages
# This file is part of michaelmagistro/dotfiles
# Any additional programs can be added in any order

# Install Google Chrome
google-chrome --version
if [ $? != 0 ]
then
  echo 'Installing Google Chrome... see https://www.ubuntuupdates.org/ppa/google_chrome'
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
  sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
  apt update
  apt install google-chrome-stable
else
  echo 'Google Chrome is already installed.'
fi


# Install Sublime Text
sublime-text --version
if [ $? != 0 ]
then
  echo 'Installing Sublime Text... see https://www.sublimetext.com/docs/3/linux_repositories.html'
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  sudo apt-get install apt-transport-https
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  apt update
  apt install sublime-text
else
  echo 'Sublime Text is already installed.'
fi
