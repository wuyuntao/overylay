# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils subversion

EGIT_REPO_URI="http://svn.scipy.org/svn/scikits/trunk"

DESCRIPTION="A package which enables to create Gaussian Mixture Models."
HOMEPAGE="http://www.ar.media.kyoto-u.ac.jp/members/david/softwares/em/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-python/numpy
	sci-libs/scipy"

