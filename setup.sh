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