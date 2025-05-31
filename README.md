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

### Symlink shell scripts

```bash
$ sudo mkdir -p /usr/local/bin/ /etc/udev/rules.d/ /usr/share/sounds/ /usr/share/wallpapers/
$ sudo -s -- <<EOF
    ln -s "$(pwd)/bin/"* /usr/local/bin/
    ln -s "$(pwd)/rules/"* /etc/udev/rules.d/
    ln -s "$(pwd)/sounds/"* /usr/share/sounds/
    ln -s "$(pwd)/wallpapers/"* /usr/share/wallpapers/
EOF
```

### Build and install softwarez

```bash
$ for s in src/*; do
    cd "$s"
    sudo make clean install
    cd ../../
done
```

```bash
$ stow .
```
[^1]

## The scripts

### dwmdvd

An optical drive status requiring `99-dvd-monitor.rules` and [dvd+rw-tools](https://archlinux.org/packages/extra/x86_64/dvd+rw-tools/). Written to be used with [dwmblocks](https://github.com/torrinfail/dwmblocks) via a text file.

### screenrecord

X11 screen recording via [ffmpeg](https://git.ffmpeg.org/ffmpeg) and [selx](https://codeberg.org/NRK/selx). It needs to be run once to begin a recording and once to stop that recording.

## Usage and notes

Please verify that the bash scripts etc wont destroy ur system, as I've only written them for my own personal use.

`.bash_logout` runs `rm $HOME/.bash_history-*.tmp`, which deletes any temp bash history files on logout.

## Config explanations

### rmpc

The video script will look for a matching .cdg (CD+G) or a .mkv file to then play with ffplay, which might hopefully sync up nicely.

## Todo

* Switch to possibly another WM and nvim.
* Rename screenrecord to xrecord and screenshot to xshot

[^1]: `.stow-local-ignore` has added `^IDEA.*`, `^/src`, `^/bin`, `^/rules`, `^/sounds`, `^/wallpapers` & `^/fonts` to the blacklist (to avoid polluting $HOME)
