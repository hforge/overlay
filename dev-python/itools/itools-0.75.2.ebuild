# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2:2.6"
inherit distutils python

DESCRIPTION="General purpose Python library"
HOMEPAGE="http://www.hforge.org/itools"
SRC_URI="https://pypi.python.org/packages/source/i/itools/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="database http matplotlib office pdf svg"

DEPEND="
  >=dev-vcs/git-1.7
  >=dev-libs/glib-2.20
  >=dev-util/pkgconfig-0.23
  dev-python/pygobject:2
  >=dev-python/pygit2-0.19.1
  virtual/python-imaging
  database? ( dev-libs/xapian-bindings[python] sys-apps/file[python] )
  http? ( >=net-libs/libsoup-2.28 dev-python/pytz )
  matplotlib? ( >=dev-python/matplotlib-0.91 )
  pdf? ( >=dev-python/reportlab-2.3 )
  office? ( >=dev-python/xlrd-0.6.1
            >=app-text/poppler-0.10.4
            >=app-text/wv2-0.2.3 )
  svg? ( dev-python/librsvg-python )"
RDEPEND=""

pkg_setup() {
	python_set_active_version 2
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
