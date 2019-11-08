# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1
inherit distutils-r1

DESCRIPTION="General purpose Python library"
HOMEPAGE="http://www.hforge.org/itools"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="database http matplotlib office pdf svg"

RDEPEND="
  ${PYTHON_DEPS}
  dev-libs/glib
  dev-python/pip
  dev-vcs/git
  >=dev-util/pkgconfig-0.23
  <dev-python/pygobject-3[${PYTHON_USEDEP}]
  >=dev-python/pygit2-0.24.2[${PYTHON_USEDEP}]
  dev-python/pillow[${PYTHON_USEDEP}]
  database? ( dev-libs/xapian-bindings[${PYTHON_USEDEP}] sys-apps/file[${PYTHON_USEDEP}] )
  http? ( >=net-libs/libsoup-2.28 dev-python/pytz[${PYTHON_USEDEP}] )
  matplotlib? ( >=dev-python/matplotlib-0.91[${PYTHON_USEDEP}] )
  pdf? ( >=dev-python/reportlab-2.3[${PYTHON_USEDEP}] )
  office? ( >=dev-python/xlrd-0.6.1[${PYTHON_USEDEP}]
            >=app-text/poppler-0.10.4
            >=app-text/wv2-0.2.3 )
  svg? ( dev-python/librsvg-python[${PYTHON_USEDEP}] )"
DEPEND="${RDEPEND}"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
