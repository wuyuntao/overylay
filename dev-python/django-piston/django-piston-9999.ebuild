# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

inherit distutils python mercurial

DESCRIPTION="Piston is a Django mini-framework creating APIs."
HOMEPAGE="http://bitbucket.org/jespern/django-piston/wiki/Home"
EHG_REPO_URI="http://bitbucket.org/jespern/django-piston"
EHG_REVISION="default"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="dev-python/django"
RDEPEND="${DEPEND}"
RESTRICT_PYTHON_ABIS="3.*"

PYTHON_MODNAME="piston"
