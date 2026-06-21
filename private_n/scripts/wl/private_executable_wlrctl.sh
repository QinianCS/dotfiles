#!/usr/bin/bash
s=/tmp/wlrctl-state; mkdir -p "$s"

[ "$1" = goto ] && {
  [ -z "$2" ] && exit 1
  ids=($(niri msg --json windows | python3 -c "
import json,sys
t=sys.argv[1]
for w in json.load(sys.stdin):
    if w.get('app_id')==t: print(w['id'])
" "$2" | sort -n))
  c=${#ids[@]}
  if [ $c -eq 0 ]; then
    wlrctl window focus "$2" 2>/dev/null || true
    niri msg action spawn-sh -- "${3:-$2}"
    exit
  fi
  focus=$(niri msg --json focused-window)
  fid=$(echo "$focus" | sed -n 's/.*"id":\([0-9]*\).*/\1/p')
  fapp=$(echo "$focus" | sed -n 's/.*"app_id":"\([^"]*\)".*/\1/p')
  if [ "$fapp" = "$2" ] && [ $c -ge 2 ]; then
    ci=0; for i in "${!ids[@]}"; do [ "${ids[$i]}" = "$fid" ] && { ci=$i; break; }; done
    n=$(((ci+1)%c))
  else
    last=$(cat "$s/$2" 2>/dev/null)
    n=0; for i in "${!ids[@]}"; do [ "${ids[$i]}" = "$last" ] && { n=$i; break; }; done
  fi
  niri msg action focus-window --id "${ids[$n]}"
  echo "${ids[$n]}" > "$s/$2"
  exit
}

focus=$(niri msg --json focused-window)
app=$(echo "$focus" | sed -n 's/.*"app_id":"\([^"]*\)".*/\1/p')
[ -z "$app" ] && exit 1
ids=($(niri msg --json windows | python3 -c "
import json,sys
t=sys.argv[1]
for w in json.load(sys.stdin):
    if w.get('app_id')==t: print(w['id'])
" "$app" | sort -n))
[ ${#ids[@]} -lt 2 ] && exit 0
fid=$(echo "$focus" | sed -n 's/.*"id":\([0-9]*\).*/\1/p')
ci=0; for i in "${!ids[@]}"; do [ "${ids[$i]}" = "$fid" ] && { ci=$i; break; }; done
[ "$1" = prev ] && n=$(((ci-1+${#ids[@]})%${#ids[@]})) || n=$(((ci+1)%${#ids[@]}))
niri msg action focus-window --id "${ids[$n]}"
echo "${ids[$n]}" > "$s/$app"
