#!/usr/bin/env bash
set -euo pipefail
git submodule init && git submodule update
#mv ~/.config/fcitx/rime ~/.config/fcitx/rime-backup
cp -r ~/.config/nixpkgs/dotfiles/rime ~/.config/fcitx/rime
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    mv ~/.config/fcitx/rime/installation-linux.yaml ~/.config/fcitx/rime/installation.yaml
else
    mv ~/.config/fcitx/rime/installation-macos.yaml ~/.config/fcitx/rime/installation.yaml
fi
