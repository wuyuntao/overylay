# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils python git

EGIT_REPO_URI="git://github.com/dziegler/${PN}.git"

DESCRIPTION="Django-css is a fork of django_compressor that makes it easy to use CSS compilers with your Django projects."
HOMEPAGE="http://github.com/dziegler/django-css"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="dev-python/django
	dev-python/django-compressor"
RDEPEND="${DEPEND}"
RESTRICT_PYTHON_ABIS="3.*"

PYTHON_MODNAME="css"
