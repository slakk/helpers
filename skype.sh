#!/bin/bash

echo "----------skype installing----------"

sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install skype

cp -R ~/.Skype ~/.Skype4Work

"echo '[Desktop Entry]
Name=Skype-Work
Comment=Skype For Work
Exec=skype --dbpath ~/.Skype4Work
Icon=skype.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Network;Application;
MimeType=x-scheme-handler/skype;
X-KDE-Protocols=skype' >> /usr/share/applications/skype4work.desktop"

sudo chmod +x /usr/share/applications/skype4work.desktop

