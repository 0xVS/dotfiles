# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/).

Each top-level directory is a stow *package*. Inside a package, files are laid
out relative to `$HOME`, so `fish/.config/fish/config.fish` is linked to
`~/.config/fish/config.fish`.

## Layout

```
dotfiles/
├── fastfetch/.config/fastfetch/
├── fish/.config/fish/
├── kitty/.config/kitty/
├── nvim/.config/nvim/
├── starship/.config/starship.toml
└── zed/.config/zed/
```

## Usage

```sh
./install.sh              # link all packages
./install.sh fish nvim    # link only selected packages
./install.sh -n fish      # dry run
./install.sh -u fish      # unlink a package
./install.sh -u           # unlink everything
```

Or call stow directly from this directory:

```sh
stow --target="$HOME" fish
stow --target="$HOME" --delete fish
stow --target="$HOME" --restow fish
```

## Adding a new app

1. Create `<package>/.config/<app>/...` with the real files.
2. Move the existing file out of `~/.config` (or use `stow --adopt`, then
   `git diff` to confirm nothing surprising was pulled in).
3. Run `stow --target="$HOME" <package>`.

Do not commit runtime state (caches, locks, session data) into packages.
