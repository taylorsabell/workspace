/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

personal-device = false

brew install --cask google-chrome
brew install --cask visual-studio-code

if [ $personal-device == true ]
then
  brew install --cask 1password-cli
fi

cd ~/
echo 'alias g="git"' > .zshrc
