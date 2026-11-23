#!/usr/bin/env bash
# Link the dotfiles into $HOME with GNU Stow.
#
# Usage:
#   ./install.sh              # link every package
#   ./install.sh fish nvim    # link only the named packages
#   ./install.sh -u           # remove all symlinks
#   ./install.sh -u fish      # remove symlinks for one package
#
# Add --dry-run before the package list to preview changes.
set -euo pipefail

cd "$(dirname "$(readlink -f "$0")")"

ALL_PACKAGES=(fastfetch fish kitty nvim starship zed)
TARGET="${HOME}"

if ! command -v stow >/dev/null 2>&1; then
  echo "error: GNU Stow is not installed" >&2
  exit 1
fi

mode="install"
dry_run=()
packages=()

for arg in "$@"; do
  case "$arg" in
    -u|--uninstall) mode="uninstall" ;;
    -n|--dry-run)   dry_run=(--simulate) ;;
    -h|--help)      sed -n '2,10p' "$0"; exit 0 ;;
    *)              packages+=("$arg") ;;
  esac
done

if ((${#packages[@]} == 0)); then
  packages=("${ALL_PACKAGES[@]}")
fi

# Validate package names (typo installation prevention)
for pkg in "${packages[@]}"; do
  if [[ ! -d "$pkg" ]]; then
    echo "error: no such package: $pkg" >&2
    exit 1
  fi
done

stow_args=(--verbose=1 --target="$TARGET" "${dry_run[@]}")

if [[ "$mode" == "uninstall" ]]; then
  stow "${stow_args[@]}" --delete "${packages[@]}"
else
  stow "${stow_args[@]}" --restow "${packages[@]}"
fi
