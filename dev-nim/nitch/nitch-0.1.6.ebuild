# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit nimble

DESCRIPTION="Incredibly fast system fetch written in Nim."
HOMEPAGE="
	https://github.com/ssleert/nitch
	https://nimble.directory/pkg/nitch
"
SRC_URI="https://github.com/ssleert/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="${PV}"
KEYWORDS="~amd64"

set_package_url "https:/github.com/ssleert/nitch"
