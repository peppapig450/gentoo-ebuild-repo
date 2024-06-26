# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Animated pipes terminal screensaver"
HOMEPAGE="https://pipeseroni.github.io"
SRC_URI="https://github.com/pipeseroni/pipes.sh/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="
	>=sys-libs/ncurses-6.4_p20230401
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv pipes.sh-${PV} ${P}
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}
