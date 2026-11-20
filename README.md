# Homebrew tap

```sh
brew trust syvyj/tap
brew install --cask syvyj/tap/shotleaf
```

Homebrew loads casks from taps outside its own only once you trust them (`brew trust`).

On each Shotleaf release: set `version` and `sha256` (from the release's `Shotleaf.dmg.sha256`) in `Casks/shotleaf.rb`.
