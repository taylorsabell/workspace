function cc() {
    code .
}

function reload() {
    source ~/.zshrc
    echo 'Reloaded'
}

function gscrub() {
    git branch | grep -v "master" | xargs git branch -D
}

function gundo() {
    git reset HEAD~1 --soft
}