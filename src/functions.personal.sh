function login() { 
    eval $(op signin my)
}

function key() { 
    op get item $1 --fields password | pbcopy
    echo 'Clipboarded'
    sleep 10
    pbcopy < /dev/null
}