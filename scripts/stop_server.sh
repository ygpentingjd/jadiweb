#!/bin/bash

# Hentikan layanan httpd jika berjalan
if pgrep -x "httpd" > /dev/null
then
    sudo systemctl stop httpd
    echo "httpd stopped."
else
    echo "httpd is not running."
fi
