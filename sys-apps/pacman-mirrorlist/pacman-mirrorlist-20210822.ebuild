# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

COMMIT_ID="bc950fbce534b33ae78cf0c02b99f728ad03fd55"

DESCRIPTION="Repository list for Archlinux's binary package manager"
HOMEPAGE="https://archlinux.org/mirrorlist/"
SRC_URI="https://raw.githubusercontent.com/archlinux/svntogit-packages/${COMMIT_ID}/trunk/mirrorlist -> ${P}"
KEYWORDS="~amd64"
LICENSE="GPL-2"
SLOT=0
S="${WORKDIR}"

src_unpack() {
	cp "${DISTDIR}/${P}" mirrorlist
}

src_install() {
	insinto etc/pacman.d
	doins mirrorlist
}

pkg_postinst() {
	einfo
	einfo "This packages installs only a plain list of mirrors for sys-apps/pacman."
	einfo
}
