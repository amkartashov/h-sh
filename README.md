# h-sh

Repository describing hackintosh configuration

## MacOS installation

See [EFI/README.md](EFI/README.md)

## Installed software

* Firefox
* Chrome

* Skype
* Slack
* Telegram

* JetBrains IntelliJ IDEA
* Sublime Text

* iTerm2

* Karabiner elements

* maccy

* strongbox

* Yandex Disk

* Docker for Mac

* Golang

* Gcloud SDK

* AWS CLI

* Node.js + Yarn

* Homebrew
    * azure-cli
    * argocd
    * bazelisk
    * buildifier, buildozer
    * wget
    * pulumi
    * bash (to replace built-in), see https://itnext.io/upgrading-bash-on-macos-7138bd1066ba
    * bash-completion@2
    * git
    * fzf
    * alt-tab
    * telnet
    * coreutils https://stackoverflow.com/a/57973942
    * bazel (for bash completion mostly)
    * tilt (https://docs.tilt.dev/install.html)

+ also from `scripts/`

## Configuration

```bash
chsh -s /bin/bash
```

## Issues

### Fixed

* iterm2 home/end does not work: set `TERM` to `screen-256color`

### Pending (TODO)

* red quits alternative for sublime text for hot exit to work
