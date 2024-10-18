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