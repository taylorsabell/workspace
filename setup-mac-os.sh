/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew cask install google-chrome
brew cask install visual-studio-code

cd ~/
echo 'alias g="git"' > .zshrc