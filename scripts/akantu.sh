#!/usr/bin/zsh

function ak_remove_build() {
    if [ -h "$AKANTU/build" ]; then
        rm -f $AKANTU/build
    fi
}

function ak_debug() {
    ak_remove_build
    ln -s $AKANTU/build_debug/ $AKANTU/build
}

function ak_release() {
    ak_remove_build
    ln -s $AKANTU/build_release/ $AKANTU/build
}
