#!/bin/zsh

function tm_remove_build() {
    if [ -h "$TAMAAS/build" ]; then
        rm -f $TAMAAS/build
    fi
}

function tm_switch() {
    if [ $# -eq 0 ]; then
        type="release"
    else
        type="$1"
    fi

    tm_remove_build
    ln -s "$TAMAAS/build-$type" $TAMAAS/build
}
