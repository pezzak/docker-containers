#!/bin/bash

usermod -u $DBOX_UID nobody
groupmod -g $DBOX_GID users

supervisord -c /etc/supervisor.conf -n

