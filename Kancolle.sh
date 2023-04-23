#!/bin/bash
cd /home/deck/KCCP/KanColle-English-Patch-KCCP/
git pull
cd /home/deck/KCCP/KCCacheProxy-linux/
konsole --fullscreen -e /home/deck/KCCP/KCCacheProxy-linux/proxy-linux &
gtk-launch com.google.Chrome.desktop
