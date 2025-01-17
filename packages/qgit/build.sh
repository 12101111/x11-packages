TERMUX_PKG_HOMEPAGE=https://github.com/tibirna/qgit
TERMUX_PKG_DESCRIPTION="A git GUI viewer"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com>"
TERMUX_PKG_VERSION=2.8
TERMUX_PKG_REVISION=5
TERMUX_PKG_SRCURL=https://github.com/tibirna/qgit/archive/qgit-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=a6751181bde2ff9f3a097694e5c42db689633028b178595f66909d6585cad514
TERMUX_PKG_DEPENDS="git, hicolor-icon-theme, qt5-base"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	termux_setup_cmake

	cmake . \
		-DCMAKE_INSTALL_PREFIX="${TERMUX_PREFIX}" \
		-DQt5_DIR="${TERMUX_PREFIX}/lib/cmake/Qt5" \
		-DQt5Core_DIR="${TERMUX_PREFIX}/lib/cmake/Qt5Core"
}
