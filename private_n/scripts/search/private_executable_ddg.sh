#!/bin/sh
# URL-encode clipboard content and open in browser
query=$(wl-paste -n | sed -e 's/ /+/g' -e 's/&/%26/g')
xdg-open "https://duckduckgo.com/?q=$query"
