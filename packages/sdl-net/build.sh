TERMUX_PKG_HOMEPAGE=https://www.libsdl.org/projects/SDL_net/
TERMUX_PKG_DESCRIPTION="A small sample cross-platform networking library"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com>"
TERMUX_PKG_VERSION=1.2.8
TERMUX_PKG_REVISION=11
TERMUX_PKG_SRCURL=https://www.libsdl.org/projects/SDL_net/release/SDL_net-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=5f4a7a8bb884f793c278ac3f3713be41980c5eedccecff0260411347714facb4

TERMUX_PKG_DEPENDS="libandroid-glob, libflac, libogg, libpulseaudio, libsndfile, libvorbis, sdl"
TERMUX_PKG_CONFLICTS="libsdl-net"
TERMUX_PKG_REPLACES="libsdl-net"
