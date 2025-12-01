#!/bin/sh
# URL-encode clipboard content and open in browser
query=$(wl-paste -n | sed -e 's/ /+/g' -e 's/&/%26/g')
xdg-open "https://en.wiktionary.org/wiki/Special:Search?search=$query"
