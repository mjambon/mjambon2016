echo2 () {
    echo -e "$1"
    echo "echo2 '$1'"
}

echo2 'echo2 () {
    echo -e "$1"
    echo "echo2 \047$1\047"
}
'
