/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

personal=false
 
if [ "$personal" = true ] ; then
    brew install --cask 1password-cli
    # op signin example.1password.com email
fi

rm -fdr ~/.oh-my-zsh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install --cask google-chrome
brew install --cask visual-studio-code
brew install jq

brew install git
# git config --global user.name "Me"
# git config --global user.email "email"

echo $'\n' >> ~/.zshrc && cat aliases.sh >> ~/.zshrc
echo $'\n' >> ~/.zshrc && cat functions.sh >> ~/.zshrc

if [ "$personal" = true ] ; then
    echo $'\n' >> ~/.zshrc && cat functions.personal.sh >> ~/.zshrc
fi

reload