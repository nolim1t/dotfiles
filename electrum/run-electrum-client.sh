#!/bin/bash

# Electrum 3.3.6 downloader and verifier
if [[ -d Electrum-3.3.6 ]]; then
    python3 Electrum-3.3.6/run_electrum
else
    if [[ -f Electrum-3.3.6.tar.gz ]]; then
        if [[ -f Electrum-3.3.6.tar.gz.asc ]]; then
            # Verify and if file no food exit
            gpg --verify Electrum-3.3.6.tar.gz.asc || exit 1
        else
            wget https://download.electrum.org/3.3.6/Electrum-3.3.6.tar.gz.asc
            gpg --verify Electrum-3.3.6.tar.gz.asc || exit 1
        fi
    else
        # Download and verify
        wget https://download.electrum.org/3.3.6/Electrum-3.3.6.tar.gz
        wget https://download.electrum.org/3.3.6/Electrum-3.3.6.tar.gz.asc
        gpg --verify Electrum-3.3.6.tar.gz.asc || exit 1
    fi
    tar xvfz Electrum-3.3.6.tar.gz
    python3 Electrum-3.3.6/run_electrum
fi
