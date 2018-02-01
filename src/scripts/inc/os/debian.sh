#!/bin/bash

function install_os {
    apt-get update
    apt-get install curl git build-essential python-dev python-setuptools swig libpulse-dev portaudio19-dev libportaudio2 vlc-nox sox libsox-fmt-mp3 sudo -y
    apt-get -y remove python-pip
    run_python -m easy_install pip
}

function install_shairport-sync {

    apt-get install autoconf libdaemon-dev libasound2-dev libpopt-dev libconfig-dev avahi-daemon libavahi-client-dev libssl-dev libsoxr-dev -y

    install_shairport-sync_from_source
}
