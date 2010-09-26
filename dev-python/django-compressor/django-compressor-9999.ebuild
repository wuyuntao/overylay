# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils python git

EGIT_REPO_URI="git://github.com/mintchaos/django_compressor.git"

DESCRIPTION="Compresses linked and inline javascript or CSS into a single cached file."
HOMEPAGE="http://github.com/mintchaos/django_compressor"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE="soup lxml"

DEPEND="dev-python/django
	soup? (	dev-python/beautifulsoup )
	lxml? ( =dev-python/lxml-2* )"
RDEPEND="${DEPEND}"
RESTRICT_PYTHON_ABIS="3.*"

PYTHON_MODNAME="compressor"
