#!/bin/sh

USER=seafile
USERID=1000
echo "creating new $USER with UID $USERID"
useradd -m $USER -u $USERID 
chown -R $USER /home/$USER
cd /home/$USER 
su $USER -c "seafile-applet"
