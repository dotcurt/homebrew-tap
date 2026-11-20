# .curt Homebrew tap

[Homebrew](https://brew.sh) tap for [.curt](https://github.com/dotcurt) format tools.

## Usage

```sh
brew install dotcurt/tap/curt-openwith
```

## Formulas

| Formula | Description |
|---------|-------------|
| [curt-openwith](https://github.com/dotcurt/curt-openwith) | Offline `.curt` conversation viewer — renders the conversation locally in your browser. |

### curt-openwith post-install

The formula installs the full package folder to the Homebrew cellars (no
handler registration — that is a user-level step). After install, run:

```sh
bash "$(brew --prefix curt-openwith)/libexec/mac/install.sh"
```

This builds `Curt Viewer.app` into `~/Applications`, registers it with
LaunchServices, and (if `duti` is installed) sets it as the default handler
for `.curt`.

**Windows users:** use the [Scoop bucket](https://github.com/JordanNewell/bucket)
instead — the Windows path is the native launcher (`CurtViewer.exe`) plus
`install.cmd`.
