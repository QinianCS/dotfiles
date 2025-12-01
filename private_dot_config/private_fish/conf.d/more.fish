fish_add_path ~/.cargo/bin ~/.nix-profile/bin ~/appimages/ ~/.local/bin ~/.lmstudio/bin ~/.cache/.bun/bin ~/go/bin ~/.config/zide/bin/fmt

# source
zoxide init fish | source
fzf --fish | source
starship init fish | source
uvx --generate-shell-completion fish | source
jj util completion fish | source
# atuin init fish | source

## set xdb folders
set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux XDG_DATA_HOME "$HOME/.local/share"
set -Ux XDG_CACHE_HOME "$HOME/.cache"
set -Ux XDG_STATE_HOME "$HOME/.local/state"

set -Ux XDG_DESKTOP_DIR "$HOME/.local/Desktop"
set -Ux XDG_DOWNLOAD_DIR "$HOME/.local/Downloads"
set -Ux XDG_TEMPLATES_DIR "$HOME/.local/Templates"
set -Ux XDG_PUBLICSHARE_DIR "$HOME/.local/Public"
set -Ux XDG_DOCUMENTS_DIR "$HOME/.local/Documents"
set -Ux XDG_MUSIC_DIR "$HOME/.local/Music"
set -Ux XDG_PICTURES_DIR "$HOME/.local/Pictures"
set -Ux XDG_VIDEOS_DIR "$HOME/.local/Videos"

## other env paths
# set -Ux ANDROID_USER_HOME "$XDG_DATA_HOME/android"
# set -Ux OSH "$XDG_DATA_HOME/oh-my-bash"
# set -Ux HISTFILE "$XDG_STATE_HOME/bash/history"
# set -Ux GOPATH="$XDG_DATA_HOME/go"

# set editor
# set -Ux EDITOR hx
