#!/bin/bash

# Mulai layanan httpd jika tidak berjalan
if ! pgrep -x "httpd" > /dev/null
then
    sudo systemctl start httpd
    echo "httpd started."
else
    echo "httpd is already running."
fi