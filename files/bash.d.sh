#!/usr/bin/env bash

function load_bash_fragments() {
    local frag
    for frag in "${1}"/*.sh; do
        if [[ -x "${frag}" ]]; then
            # shellcheck disable=SC1090
            source "${frag}"
        fi
    done
}

load_bash_fragments "$HOME/.bash.d/"
