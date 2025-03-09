# Msozod's Dogfiles

Hiii these are my dotfiles, enjoy!!

## Requirements

* git
* stow

## Installation

```bash
$ git clone git@github.com/Meowsod/dotfiles.git
$ cd dotfiles
```

```bash
$ sudo mkdir -p /usr/share/bin/ /etc/udev/rules.d/ /usr/share/sounds/ /usr/share/wallpapers/
$ sudo mv bin/* /usr/local/bin/ && sudo mv rules/* /etc/udev/rules.d/ && sudo mv sounds/* /usr/share/sounds/
```
[^1]

```bash
$ stow .
```

## Bash scripts

### dwmdvd

An optical drive status requiring `99-dvd-monitor.rules` and [dvd+rw-tools](https://archlinux.org/packages/extra/x86_64/dvd+rw-tools/). Written to be used with [dwmblocks](https://github.com/torrinfail/dwmblocks) via a text file.

### screenrecord

X11 screen recording via [ffmpeg](https://git.ffmpeg.org/ffmpeg) and [selx](https://codeberg.org/NRK/selx). It needs to be run once to begin a recording and once to stop that recording.

## Usage and notes

Please verify that the bash scripts etc wont destroy ur system, as I've only written them for my own personal use.

`.bash_logout` runs `rm $HOME/.bash_history-*.tmp`, which deletes any temp bash history files on logout.

## About

## Applications

* mpv
* mpd
* ncmpcpp
* yt-dlp

## Todo

* Switch to possibly another WM and nvim.

# Footnotes
[^1]: `.stow-local-ignore` will ignore symlinking the file to avoid polluting ~
