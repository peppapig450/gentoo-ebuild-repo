# Copyright 2023 Nick Brady
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit xdg

DESCRIPTION="Andromeda kvantum theme"
HOMEPAGE="https://github.com/EliverLara/Andromeda-KDE"
SRC_URI="https://github.com/peppapig450/themes/raw/main/${PN}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	insinto /usr/share/Kvantum/Andromeda
	doins Andromeda.kvconfig Adromeda.svg
}
