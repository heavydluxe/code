#!/bin/sh
# This file backs up key system files and then commits them to git.

# Get the current date and time in the desired format
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# Start with backup processes
echo "  ____ ___ _____    ___  _   _   _   _ ____  "
echo " / ___|_ _|_   _|  / _ \| \ | | | | | |  _ \ "
echo "| |  _ | |  | |   | | | |  \| | | | | | |_) |"
echo "| |_| || |  | |   | |_| | |\  | | |_| |  __/ "
echo " \____|___| |_|    \___/|_| \_|  \___/|_|    "
echo ""
echo "First, we'll backup key config files..."
sleep 2

# Copy key config files to ~/sbemode/config_files folder
## Backup emacs config
echo ">>> Backing up emacs config (~/.emacs)"
cp ~/.emacs ~/sbemode/code/config_files/backup.emacs.lsp
sleep 1

## Backup zsh config
echo ">>> Backing up zsh config (~/.zshrc)"
cp ~/.zshrc ~/sbemode/code/config_files/backup.zshrc
sleep 1

## Backup OhMyPosh config
echo ">>> Backing up oh-my-posh config (~/.mytheme.omp.json)"
cp ~/.mytheme.omp.json ~/sbemode/code/config_files/backup.mytheme.omp.json
sleep 1

## Backup .gitignore
echo ">>> Backing up most current .gitignore (~/sbemode/.gitignore)"
cp ~/sbemode/.gitignore ~/sbemode/code/config_files/backup.gitignore
sleep 1

## Backup terminal setings
echo ">>> Backing up Terminal preferences (~/Lib/Pref/com.apple.Terminal.plist)"
cp ~/Library/Preferences/com.apple.Terminal.plist ~/sbemode/code/config_files/backup.com.apple.Terminal.plist
sleep 1
echo "All critical configuration files backed up to /sbemode/code @ $timestamp"
echo ""
sleep 2

## Remove old org mode backup files
echo "Now it's time for a little housekeeping..."
sleep 1
echo ">>> Cleaning out temp files in ~/zzzemacs-backups"
rm ~/zzzemacs-backups/*
sleep 2

# Git operations
echo ""
echo "Having done that bit, it's now time to ..."
echo "  ____ ___  __  __ __  __ ___ _____ _ "
echo " / ___/ _ \|  \/  |  \/  |_ _|_   _| |"
echo "| |  | | | | |\/| | |\/| || |  | | | |"
echo "| |__| |_| | |  | | |  | || |  | | |_|"
echo " \____\___/|_|  |_|_|  |_|___| |_| (_)"
echo ""
sleep 1
echo "About to start git operations..."
sleep 1

# Add pending files and commit locally
echo "Adding all trackable files for local git commit..."
git add -A
sleep 1
echo "Commiting files to local repo with auto message.."
git commit -m "Automatic commit/push of sbemode stuff by script @ $timestamp"
sleep 1

# Push last changes to github
echo ""
echo "Pushing changes to github repo in verbose mode..."
git push -u origin main
sleep 1
echo "<><><><><><><><><><><><><><><><>"
echo ""
echo "And now, as James Brown - the famous coder that he was - once said..."
echo "Git up, git on up! It's all on the scene, from your coding machine!"


