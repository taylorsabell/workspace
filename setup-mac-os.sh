/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

PERSONAL_DEVICE = false

brew cask install google-chrome
brew cask install visual-studio-code

if [ "$personal-device" = true ]
then
  brew cask install 1password-cli
fi

cd ~/
echo 'alias g="git"' > .zshrc
