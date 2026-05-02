# homebrew-tap

Personal Homebrew tap for [Ardakilic](https://github.com/Ardakilic)'s tools.

## Formulae

| Formula | Description |
|---|---|
| `lilt` | Cross-platform CLI tool that converts Hi-Res FLAC and ALAC files to 16-bit files at 44.1kHz or 48kHz |
| `rb-scrobbler` | Minimal Rockbox Last.fm Scrobbler (.scrobbler.log files) |

## Installation

```bash
brew tap Ardakilic/tap
brew install lilt
brew install rb-scrobbler
```

## Automatic updates

The `lilt` formula is updated automatically by [lilt's release workflow](https://github.com/Ardakilic/lilt/blob/main/.github/workflows/release.yml) every time a new version is tagged. The `rb-scrobbler` formula is updated every 12 hours by a scheduled GitHub Action that polls upstream releases. No manual changes to this repo are needed for either formula.

## Source

- [Ardakilic/lilt](https://github.com/Ardakilic/lilt)