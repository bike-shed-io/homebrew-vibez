# Vibez Homebrew Tap

Homebrew tap and release repository for Vibez for Mac.

## Install New

For new installs, use the canonical tap and cask token:

```sh
brew tap bike-shed-io/vibez
brew install --cask vibez
```

## Upgrade

```sh
brew update
brew upgrade --cask vibez
```

## Migrate From Old Tap

If you previously installed from `bike-shed-io/vibez-mac` or used the `vibez-mac` cask token, switch once:

```sh
brew untap bike-shed-io/vibez-mac
brew tap bike-shed-io/vibez
brew uninstall --cask vibez-mac
brew install --cask vibez
```

The legacy cask token remains available if needed:

```sh
brew install --cask vibez-mac
```
