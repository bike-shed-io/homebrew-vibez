# vibez-mac

Homebrew tap and release repository for the native Vibez macOS app.

## Install

```sh
brew tap bike-shed-io/vibez-mac https://github.com/bike-shed-io/vibez-mac
brew install --cask vibez
```

The legacy cask token `vibez-mac` remains available for existing installs.

## Migrate From Legacy Token

```sh
brew uninstall --cask vibez-mac
brew install --cask vibez
```

## Upgrade

```sh
brew update
brew upgrade --cask vibez
```
