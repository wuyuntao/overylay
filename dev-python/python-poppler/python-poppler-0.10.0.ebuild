# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

DESCRIPTION="Python bindings to the Poppler PDF library."
SRC_URI="http://www.gnome.org/~gianmt/pypoppler-${PV}.tar.gz"
HOMEPAGE="http://launchpad.net/poppler-python"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

S="${WORKDIR}/pypoppler-${PV}"

# Dependency for PyGObbject is 2.11.3 if building docs,
# but this ebuild doesn't provide a USE flag for docs yet.
DEPEND=">=app-text/poppler-0.10.0
        >=dev-python/pygobject-2.10.1
		>=dev-python/pygtk-2.10.0
		>=dev-python/pycairo-1.2.0"

src_unpack() {
	unpack ${A}
	cd ${S}
}

src_compile() {
	econf || die "econf failed"
	make || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install
}

