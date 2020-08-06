#!/usr/bin/env bash

sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo xed /etc/apt/sources.list
deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main
deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DFA175A75104960E
sudo apt update
sudo apt install --install-recommends winehq-stable
winecfg
