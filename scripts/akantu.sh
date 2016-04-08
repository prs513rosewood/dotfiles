#!/usr/bin/zsh

function ak_remove_build() {
    if [ -h "$AKANTU/build" ]; then
        rm -f $AKANTU/build
    fi
}

function ak_switch() {
    if [ $# -eq 0 ]; then
        type="release"
    else
        type="$1"
    fi

    ak_remove_build
    ln -s "$AKANTU/build_$type" $AKANTU/build
}
