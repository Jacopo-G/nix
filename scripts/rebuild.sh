#!/usr/bin/env bash
set -euo pipefail
CONFIG_DIR=~/nix/
pushd "$CONFIG_DIR"
alejandra . &>/dev/null
git add .
git diff -U0 -- '*.nix'
echo "NixOS Rebuilding..."
if ! sudo nixos-rebuild switch --flake &>~/logs/nixos-switch.log; then
  grep --color error ~/logs/nixos-switch.log || true
  exit 1
fi

gen=$(nixos-rebuild list-generations | awk '$NF=="True" {print $1}')

read -rp "Enter a commit message: " user_msg

git commit -m "Gen $gen: $user_msg" || echo "Nothing to commit"

popd
