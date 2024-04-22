# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

MY_PN="web-greeter"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="LightDM greeter that uses WebKit2 for theming via HTML/JavaScript."
HOMEPAGE="https://github.com/antergos/web-greeter"
SRC_URI="https://github.com/antergos/web-greeter/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~x86"

S="${WORKDIR}/${MY_P}"

BDEPEND="
	dev-libs/gobject-introspection
	dev-util/meson
	sys-devel/gettext
	dev-libs/dbus-glib
"

DEPEND="
	x11-misc/lightdm
	net-libs/webkit-gtk
	sys-apps/accountsservice
	x11-themes/gnome-backgrounds
"

RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}"/${P}-fix-webkit-version.patch
	"${FILESDIR}"/${P}-fix-utils-script-path.patch
)

src_install() {
	local DOCS=( NEWS.md )
	meson_src_install
}
