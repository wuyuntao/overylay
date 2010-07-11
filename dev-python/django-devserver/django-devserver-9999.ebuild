# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils python git

EGIT_REPO_URI="git://github.com/dcramer/${PN}.git"

DESCRIPTION="A drop-in replacement for Django's runserver."
HOMEPAGE="http://github.com/dcramer/django-devserver"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="dev-python/sqlparse
	dev-python/werkzeug
	dev-python/guppy"
RDEPEND="${DEPEND}"
RESTRICT_PYTHON_ABIS="3.*"

PYTHON_MODNAME="devserver"
