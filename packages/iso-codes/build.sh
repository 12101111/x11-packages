TERMUX_PKG_HOMEPAGE=https://salsa.debian.org/iso-codes-team/iso-codes
TERMUX_PKG_DESCRIPTION="Lists of the country, language, and currency names"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com>"
TERMUX_PKG_VERSION=4.3
TERMUX_PKG_SRCURL=https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/iso-codes-$TERMUX_PKG_VERSION/iso-codes-iso-codes-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=6a321921b35b0ac73796f3b4ae41b29abaa523a01b0313313aa1d539c80ccfa0
TERMUX_PKG_PLATFORM_INDEPENDENT=true

#If you install ISO codes over a previous installed version, the install step will fail when creating some symlinks

termux_step_post_configure() {
	sed -i '/^LN_S/s/s/sfvn/' */Makefile
}

termux_step_make_install() {
	make pkgconfigdir=$TERMUX_PREFIX/lib/pkgconfig install
}
