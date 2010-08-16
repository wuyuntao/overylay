# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils autotools

DESCRIPTION="CSSTidy is an opensource CSS parser and optimiser."
HOMEPAGE="http://csstidy.sourceforge.net/"
# SRC_URI="mirror://sourceforge/csstidy/${PN}-source-${PV}.zip"
SRC_URI="http://ftp.de.debian.org/debian/pool/main/c/${PN}/${PN}_${PV}.orig.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	>=dev-util/scons-0.93"

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}/001_emptyfile.patch"
	epatch "${FILESDIR}/002_gcc43fix.patch"
}

src_compile() {
	scons ${MAKEOPTS} || die "scons make died"
}

src_install() {
	mkdir -p "${D}"/usr/bin/
	mv release/csstidy/csstidy "${D}"/usr/bin/
}
