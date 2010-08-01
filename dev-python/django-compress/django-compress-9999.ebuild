# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils python git

EGIT_REPO_URI="git://github.com/pelme/${PN}.git"

DESCRIPTION=" Django application that automates CSS/JavaScript compression and helps in making delivery of static media more efficient"
HOMEPAGE="http://github.com/pelme/django-compress"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
RESTRICT_PYTHON_ABIS="3.*"

PYTHON_MODNAME="compress"
