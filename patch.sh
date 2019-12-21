#!/bin/sh

apply_patch() {
  url=$1
  wget "$url"
  file="$(basename "$url")"
  git apply "$file"
  rm "$file"
}

apply_patch https://st.suckless.org/patches/font2/st-font2-20190416-ba72400.diff
apply_patch https://st.suckless.org/patches/boxdraw/st-boxdraw_v2-0.8.2.diff
apply_patch https://st.suckless.org/patches/newterm/st-newterm-0.8.2.diff
apply_patch https://st.suckless.org/patches/nordtheme/st-nordtheme-0.8.2.diff
apply_patch https://st.suckless.org/patches/desktopentry/st-desktopentry-0.8.2.diff
apply_patch https://st.suckless.org/patches/clipboard/st-clipboard-20180309-c5ba9c0.diff
#apply_patch https://gist.githubusercontent.com/mokhan/62bba469937d0114778af4e08ab5f53b/raw/f386b4f738585e90564e457c9795a681333b54e8/st-exec-tmux.diff
