#!/bin/bash
echo "Welcome to Samuel Developer Setup!"
echo "Selected: Linux - Debian/Ubuntu"
echo "(!) NOTE: You'll need the apt package manager. If you don't know what this is, you probably already have it. If you've removed apt, stop this script and reinstall it."
echo "This is gonna take a while, probably about 10 minutes, so sit down, grab a [insert kid-appropriate beverage here], and enjoy the install. If it finishes in a minute or 2, ask for help. That's NOT GOOD."
echo "Step 1: Nodejs and NPM - A backend JavaScript runtime and package manager."
mkdir ~/install
cd ~/install
sudo curl -sL https://deb.nodesource.com/setup_14.x | bash -
sudo apt-get install -y nodejs
echo "Step 2: Atom - Atom is a text editor."
wget https://atom-installer.github.com/v1.45.0/atom-amd64.deb
sudo dpkg -i atom-amd64.deb
echo "Step 3: Atom Packages - teletype, emmetio, fileicons"
# Teletype
apm install teletype
# Emmet
cd ~/.atom/packages
git clone https://github.com/emmetio/emmet-atom
cd emmet-atom
npm install
cd ~/install
# File Icons
apm install --production file-icons
echo "Step 4: Firebase - Essential toolkit for web, Android, and iOS app devs."
sudo curl -sL https://firebase.tools | bash
echo "Step 5: Electron Forge CLI - Toolkit for Electron developers to make and package electron apps easily."
sudo npm i -g @electron-forge/cli
echo "Step 5: Heroku CLI - Easy, free app deployment."
sudo npm i -g heroku
echo "Step 6: Strapi - API creation software"
sudo npm i -g strapi
echo "Step 7: Snap Store - Easy Linux Package Manager (You'll see why we need this later...)"
sudo apt install snapd
echo "Step 8: Postman - Easy tool to experiment with APIs! (This install has issues sometimes. If you can't see Postman, download it manually.)"
sudo snap install postman
echo "Step 9: Electron Fiddle - Simple tool that lets you create and play with small Electron experiments."
wget https://github.com/electron/fiddle/releases/download/v0.14.0/electron-fiddle_0.14.0_amd64.deb
sudo dpkg -i electron-fiddle_0.14.0_amd64.deb
echo "Step 10: Clean up - deletes all installer files and scripts - no longer needed!"
cd ../
rm -rf ~/install
echo "That's all. Happy coding!"
