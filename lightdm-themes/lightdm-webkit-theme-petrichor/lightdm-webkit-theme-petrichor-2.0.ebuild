# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="petrichor"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Simple and tidy theme for LightDM's webkit2 greeter"
HOMEPAGE="https://yeah.nah.nz/programming/petrichor/"
SRC_URI="https://github.com/phillid/petrichor/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/${MY_P}"

DEPEND="
	x11-misc/lightdm
	x11-misc/lightdm-webkit2-greeter
	sys-apps/accountsservice
"

RDEPEND="${DEPEND}"

BDEPEND=""

PATCHES=(
	"${FILESDIR}"/${P}-fix-licensing.patch
)
