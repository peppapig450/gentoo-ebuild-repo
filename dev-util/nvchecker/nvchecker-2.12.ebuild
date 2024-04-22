# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="New version checker for software releases."
HOMEPAGE="https://github.com/lilydjwg/nvchecker https://pypi.org/project/nvchecker/"
SRC_URI="https://github.com/lilydjwg/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-python/structlog
	dev-python/tornado
	dev-python/pycurl
	dev-python/platformdirs
	"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"
