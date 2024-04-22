# Copyright 2023 Nick Brady
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit xdg

DESCRIPTION="Sweet (dark) kvantum theme"
HOMEPAGE="https://github.com/EliverLara/Sweet-KDE"
SRC_URI="https://github.com/peppapig450/themes/raw/main/${PN}.tar.xz"
S="${WORKDIR}/Sweet"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
		insinto /usr/share/Kvantum/Sweet
		doins Sweet.kvconfig Sweet.svg
}
