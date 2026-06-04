#!/usr/bin/bash
if tmux has-session -t tmux 2>/dev/null; then
    # footclient -a tmux -e tmux a -t tmux
    # ghostty --title=tmux -e tmux a -t tmux (class ignored; title overwrites useful info)
    ghostty -e tmux a -t tmux
else
    # footclient -a tmux -e tmux new -s tmux
    # ghostty --title=tmux -e tmux new -s tmux
    ghostty -e tmux new -s tmux
fi
