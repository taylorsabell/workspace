function key() { 
    op get item $1 --fields password | pbcopy
    sleep 10
    pbcopy < /dev/null
}