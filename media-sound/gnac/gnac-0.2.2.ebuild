# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit gnome2

DESCRIPTION="An easy to use audio conversion program for the Gnome desktop."
HOMEPAGE="http://gnac.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="faac flac mp3 vorbis wav wavpack"

CDEPEND="dev-libs/glib:2
	gnome-base/gconf:2
	x11-libs/gtk+:2
	dev-libs/libxml2
	media-libs/gstreamer
	media-libs/gst-plugins-base
	media-plugins/gst-plugins-gio"
RDEPEND="faac? ( media-plugins/gst-plugins-faac )
	flac? ( media-plugins/gst-plugins-flac )
	mp3? ( media-plugins/gst-plugins-lame )
	vorbis? ( media-plugins/gst-plugins-vorbis )
	wav? ( media-libs/gst-plugins-good )
	wavpack? ( media-plugins/gst-plugins-wavpack )"
DEPEND="${CDEPEND}
	dev-util/pkgconfig"

G2CONF="--disable-schemas-install"
DOCS="AUTHORS NEWS README THANKS TODO"

