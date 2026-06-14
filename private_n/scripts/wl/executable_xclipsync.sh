#!/bin/bash
# Bidirectional clipboard sync between Wayland and XWayland
# Uses a guard file to prevent infinite loops

GUARD="/tmp/.xclipsync-guard"

# X → Wayland (via clipnotify)
while clipnotify; do
  [ -f "$GUARD" ] && { rm -f "$GUARD"; continue; }
  touch "$GUARD"
  xclip -selection clipboard -o 2>/dev/null | wl-copy
done &

# Wayland → X (via wl-paste --watch)
wl-paste --watch sh -c '
  [ -f "'"$GUARD"'" ] && { rm -f "'"$GUARD"'"; exit 0; }
  touch "'"$GUARD"'"
  wl-paste -n | xclip -selection clipboard -i
' &

wait
