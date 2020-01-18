#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="lr-citra-canary"
rp_module_desc="Nintendo 3DS Emulator - libretro port of Citra"
rp_module_help="ROM Extensions: .3dsx .cia .3ds .elf .axf .cci .cxi .app\n\nCopy your Nintendo 3DS roms to $romdir/3ds"
rp_module_licence="GPL2 https://raw.githubusercontent.com/libretro/citra/canary/license.txt"
rp_module_section="exp"
rp_module_flags="!gles !arm"

function depends_lr-citra-canary() {
    getDepends cmake
}

function sources_lr-citra-canary() {
    gitPullOrClone "$md_build" https://github.com/libretro/citra.git canary
}

function build_lr-citra-canary() {
    mkdir -p build
    cd build
    cmake -DENABLE_LIBRETRO=1 -DENABLE_SDL2=0 -DENABLE_QT=0 -DCMAKE_BUILD_TYPE="Release" -DENABLE_WEB_SERVICE=0 --target citra_libretro ..
    make clean
    make
    md_ret_require="$md_build/build/src/citra_libretro/citra_canary_libretro.so"
}

function install_lr-citra-canary() {
    md_ret_files=(
        'build/src/citra_libretro/citra_canary_libretro.so'
    )
}

function configure_lr-citra-canary() {
    mkRomDir "3ds"
    ensureSystemretroconfig "3ds"

    addEmulator 1 "$md_id" "3ds" "$md_inst/citra_canary_libretro.so"
    addSystem "3ds"
}
