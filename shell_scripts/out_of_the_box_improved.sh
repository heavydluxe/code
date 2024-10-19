#!/bin/sh

## Input sudo password up front and keep it alive until script ends
echo "Input sudo password for this script to do root things."
sudo -v
while true; do sudo -n true; sleep 15; kill -0 "$$" || exit; done 2>/dev/null &

# Configure initial git global variables
echo "Configuring git..."
git config --global user.name "Brian Dellinger"
git config --global user.email "bdellinger@gmail.com"

## Setup Personal Command Line Environment
# emacs first, always
echo "Installing Emacs"
brew install emacs

# Get Nerd Fonts I might like
echo "Installing Nerd Fonts"
brew install font-meslo-lg-nerd-font

## Install and configure OhMyZsh
echo "Installing OhMyZsh, OhMyPosh, and Zsh Plugins"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

## Install  OhMyPosh
brew install oh-my-posh
## Make cache directory for omp cache files
mkdir ~/.cache
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

## Update config files for emacs and zsh
echo "Copying your config files to their primary locations..."
cp ~/sbemode/code/config_files/backup.emacs.lsp ~/.emacs
cp ~/sbemode/code/config_files/backup.zshrc ~/.zshrc
cp ~/sbemode/code/config_files/backup.mytheme.omp.json ~/.mytheme.omp.json
cp ~/sbemode/code/config_files/backup.com.apple.Terminal.plist ~/Library/Preferences/com.apple.Terminal.plist
echo "Base environment installed.  You can get to work in a different terminal."
echo "Moving on to graphical apps."
sleep 2

## Install dockutil and clear dock
echo "Installing dockutil and clearing the decks... er, docks."
brew install dockutil
sleep 3
dockutil --remove all

## Install GUI apps
#echo "Installing Google Chrome"
#brew install --cask chrome
#echo "Installing Firefox"
#brew install --cask firefox
echo "Installing 1Password"
brew install --cask 1password
echo "Installing VSCode"
brew install --cask visual-studio-code
echo "Installing M$ Remote Desktop"
brew install --cask microsoft-remote-desktop
echo "Installing Splashtop Business"
brew install --cask splashtop-business
#echo "Installing Skype"
#brew install --cask skype
#echo "Installing Rectangle Windows Manager"
#brew install --cask rectangle
sleep 3

## Setup dock and open GUI apps for configuration
echo "Setting up the Dock"
dockutil --add /Applications/Google\ Chrome.app
dockutil --add /System/Applications/Utilities/Terminal.app
dockutil --add /Applications/Firefox.app
dockutil --add /Applications/Visual\ Studio\ Code.app
dockutil --add /System/Applications/System\ Settings.app
dockutil --add /System/Applications/TextEdit.app
dockutil --add /Applications/1Password.app
dockutil --add /Applications/Microsoft\ Remote\ Desktop.app
dockutil --add /Applications/Splashtop\ Business.app
dockutil --add '~/Downloads' --view fan --display folder

## Start graphical apps and allow configuration
echo "Opening key apps for configuration."
open -n /Applications/Google\ Chrome.app
open -n /Applications/1Password.app
open -n /Applications/Firefox.app
open -n /Applications/Visual\ Studio\ Code.app
open -n /Applications/Splashtop\ Business.app

## Install more brew cli stuff
echo "Installing more brew CLI tools"
brew install coreutils
brew install python
brew install tree
echo "Installing CLI network tools..."
brew install speedtest-cli
brew install htop
brew install wget
brew install curl
brew install nmap
brew install tcpdump
brew install cmatrix
brew install termshark
brew install figlet
echo "Installing docker CLI"
brew install colima
brew services start colima
brew install docker
echo "Installing AI Tools - Ollama"
brew install ollama
sleep 2
brew services start ollama
sleep 10
ollama pull llama3.2:latest
ollama pull llama3.1:latest
echo "Installing AI Tool - Fabric"
brew install go
sleep 5
go install github.com/danielmiessler/fabric@latest
fabric --setup

# Set hostname and ComputerName
## Prompt the user for the new hostname
read -p "Enter NEW Hostname for this device: " NEW_HOSTNAME
sudo scutil --set HostName "$NEW_HOSTNAME"
sudo scutil --set ComputerName "$NEW_HOSTNAME"
sudo scutil --set LocalHostName "$NEW_HOSTNAME"
echo "Hostname has been changed to '$NEW_HOSTNAME'"

# Outputs and Cleanup
echo "This is the setup file for '$NEW_HOSTNAME'" > ~/Desktop/InstallOutput.txt
brew list >> ~/Desktop/InstallOutput.txt
git config --list >> ~/Desktop/InstallOutput.txt
