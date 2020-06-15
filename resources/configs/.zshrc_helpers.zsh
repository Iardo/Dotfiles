alias config_helpers="sublime ~/.zshrc_helpers.zsh"

# FIXME:
ssh_gen() {
    default_name="${1:-iardoru@example.com}"
    default_path="${2:-id_rsa_iardoru}"
    echo $default_name
    echo $default_path
    # $(ssh-keygen -t rsa -b 4096 -C $default_name -f ~/.ssh/$default_path)
}

list_globals() {
    declare -A globals_commands

    globals_commands=(
        node "npm list -g --depth=0"
        npm "npm list -g --depth=0"
        php "php -m"
        python "pip freeze"
        ruby "gem query --local"
    )

    for key value in ${(kv)globals_commands} 
    do
        if [[ $key == "$@" ]] 
        then
            eval $globals_commands[$key]
        fi
    done
}

smile() {
    images=()
    for file in ~/Pictures/wholesome-gifs/*
    do
        images+=($file)
    done
    random=$(jot -r 1 1 ${#images})
    imgcat $images[$random]
}
 
