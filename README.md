# Gerulata Homebrew tap

Homebrew casks for Gerulata's desktop apps.

```sh
brew install gerulata/tap/atlas-graph
```

[Atlas](https://gerulata.com/atlas) is a free graph workbench for Macs with Apple Silicon. The
cask installs `Atlas.app` and puts its command-line tool, `atlas-graph`, on the PATH. Atlas
updates itself; `brew upgrade` works too. `brew uninstall --zap gerulata/tap/atlas-graph` also
removes its preferences, presets and logs.

The casks are written by the Atlas release script (`scripts/macos-release.sh --tap`); do not
edit them by hand.
