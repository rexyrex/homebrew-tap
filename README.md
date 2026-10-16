# rexyrex/tap

Homebrew casks for apps by [rexyrex](https://github.com/rexyrex).

```bash
brew install --cask rexyrex/tap/rex-boing
brew install --cask rexyrex/tap/rex-boing-remote
```

| Cask | App |
| --- | --- |
| `rex-boing` | [Rex Boing](https://rexyrex.github.io/Rex-Boing/) — a menu bar system monitor with an animated tyrannosaur |
| `rex-boing-remote` | [Rex Boing Remote](https://github.com/rexyrex/Rex-Boing-Remote) — your Linux, macOS and Windows servers in the menu bar, over SSH |

## Updating a cask

After publishing a new release, bump `version` and `sha256` in the cask:

```bash
shasum -a 256 "Rex.Boing.zip"
```
