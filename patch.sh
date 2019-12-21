#!/bin/sh

wget https://st.suckless.org/patches/font2/st-font2-20190416-ba72400.diff
wget https://st.suckless.org/patches/boxdraw/st-boxdraw_v2-0.8.2.diff
wget https://st.suckless.org/patches/newterm/st-newterm-0.8.2.diff
wget https://st.suckless.org/patches/nordtheme/st-nordtheme-0.8.2.diff
wget https://st.suckless.org/patches/desktopentry/st-desktopentry-0.8.2.diff
wget https://st.suckless.org/patches/clipboard/st-clipboard-20180309-c5ba9c0.diff

git apply ./*.diff
rm ./*.diff
