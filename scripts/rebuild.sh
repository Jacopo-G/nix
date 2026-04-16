#!/usr/bin/env bash
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <host>"
	exit 1
fi

set -euo pipefail
CONFIG_DIR=~/nix/
pushd "$CONFIG_DIR"
alejandra .
git diff -U0 
git add .
echo "NixOS Rebuilding..."
if ! sudo nixos-rebuild switch --flake .\#"$1" &>~/logs/nixos-switch.log; then
  grep --color error ~/logs/nixos-switch.log || true
  git reset
  exit 1
fi

read -rp "Enter a commit message: " user_msg

git commit -m "$user_msg" || echo "Nothing to commit"

popd
