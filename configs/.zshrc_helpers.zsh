alias config_helpers="sublime ~/.zshrc_helpers.zsh"

symlink_server() {
    mkdir ~/Configs
    ln -s /var/log/apache2 ~/Configs/apache_logs
    ln -s /private/etc/hosts ~/Configs/hosts
    ln -s /usr/local/etc/httpd/extra/httpd-vhosts.conf ~/Configs/httpd-vhosts.conf
    ln -s /usr/local/etc/httpd/httpd.conf ~/Configs/httpd.conf
    ln -s /usr/local/etc/php/7.2/php.ini ~/Configs/php.ini
}
symlink_create() {
    $(symlink:server)
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
 
