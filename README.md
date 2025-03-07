# Msozod's Dogfiles

Hiii these are my dotfiles, enjoy!!

## Requirements

* Git
* Stow

## Installation

```
$ git clone git@github.com/Meowsod/dotfiles.git
$ cd dotfiles
```

```
$ sudo mv bin/* /usr/local/bin/ && sudo mv rules/* /etc/udev/rules.d/
$ rm -rf bin rules
```

```
$ stow .
```

## Bash scripts

### dwmdvd

An optical drive status requiring `99-dvd-monitor.rules` and written to be used with [dwmblocks](https://github.com/torrinfail/dwmblocks).

### screenrecord

X11 screen recording via [ffmpeg](https://git.ffmpeg.org/ffmpeg) and [selx](https://codeberg.org/NRK/selx). It needs to be run once to begin a recording and once to stop that recording.

## Usage

Please verify that the bash scripts etc wont destroy ur system, as I've only written them for my own personal use.

## About

## Todo

* Switch to possibly another WM and nvim.
