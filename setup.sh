# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# todo - script stops running if zsh hasn't been installed before

personal=true 
if [ "$personal" = true ] ; then
    brew install --cask 1password-cli
    # todo - securely automate
    # op signin example.1password.com email
fi

brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask zoom

brew install jq
brew install git
# todo - securely automate
# git config --global user.name "Me"
# git config --global user.email "email"
git config --global pull.rebase false

# Preferences
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show the ~/Library folder
chflags nohidden ~/Library && xattr -d com.apple.FinderInfo ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes



# todo - DRY
# todo - case-insensitive paths
echo $'\n' >> ~/.zshrc && cat ~/Workspace/src/aliases.sh >> ~/.zshrc
echo 'Aliases loaded'

echo $'\n' >> ~/.zshrc && cat ~/Workspace/src/functions.sh >> ~/.zshrc
echo 'Functions loaded'

if [ "$personal" = true ] ; then
    echo $'\n' >> ~/.zshrc && cat ~/Workspace/src/functions.personal.sh >> ~/.zshrc
    echo 'Personal functions loaded'
fi

source ~/.zshrc
echo 'Setup complete'