# Msozod's Dogfiles

Hiii these are my dotfiles, enjoy!!

## Requirements

* git
* stow

## Installation

Make sure you don't already have configuration files with the same filepaths so that stow can symlink properly.

```bash
$ git clone git@github.com/Meowsod/dotfiles.git
$ cd dotfiles
```

```bash
$ sudo mkdir -p /usr/local/bin/ /etc/udev/rules.d/ /usr/share/sounds/ /usr/share/wallpapers/
$ sudo cp bin/* /usr/local/bin/ && sudo cp rules/* /etc/udev/rules.d/ && sudo cp sounds/* /usr/share/sounds/ && sudo cp wallpapers/* /usr/share/wallpapers/
```

```bash
$ stow .
```
[^1]

## Bash scripts

### dwmdvd

An optical drive status requiring `99-dvd-monitor.rules` and [dvd+rw-tools](https://archlinux.org/packages/extra/x86_64/dvd+rw-tools/). Written to be used with [dwmblocks](https://github.com/torrinfail/dwmblocks) via a text file.

### screenrecord

X11 screen recording via [ffmpeg](https://git.ffmpeg.org/ffmpeg) and [selx](https://codeberg.org/NRK/selx). It needs to be run once to begin a recording and once to stop that recording.

## Usage and notes

Please verify that the bash scripts etc wont destroy ur system, as I've only written them for my own personal use.

`.bash_logout` runs `rm $HOME/.bash_history-*.tmp`, which deletes any temp bash history files on logout.

## Todo

* Switch to possibly another WM and nvim.

[^1]: `.stow-local-ignore` makes stow not symlink `^/src`, `^/bin`, `^/rules`, `^/sounds`, `^/wallpapers` & `^/fonts` (to avoid polluting $HOME)
