# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
PYTHON_DEPEND="2:2.6"
inherit distutils eutils python

DESCRIPTION="Content Management System written in Python"
HOMEPAGE="http://www.hforge.org/ikaaro"
SRC_URI="http://download.hforge.org/ikaaro/0.62/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  >=dev-python/itools-0.62.5[database,http]"

RDEPEND=""

pkg_setup() {
	python_set_active_version 2
	enewgroup ikaaro
	enewuser ikaaro -1 /bin/bash /var/ikaaro ikaaro
}

src_unpack() {
	unpack ${A}
}

src_compile() {
	distutils_src_compile
}

src_install() {
	distutils_src_install
}
