
DESCRIPTION="Java-based GTD application"
SRC_URI="http://mesh.dl.sourceforge.net/sourceforge/thinkingrock/tr-2.0.epsilon.zip"
HOMEPAGE="http://thinking-rock.com.au/"

SLOT="0"
LICENSE="freedist"
KEYWORDS="~x86"

RDEPEND=">=virtual/jre-1.5.0"
DEPEND="app-arch/unzip ${RDEPEND}"
S="${WORKDIR}/tr-2.0.epsilon"
INSTALLDIR="/opt/thinking-rock-2.0epsilon"

src_install() {
	dodir /opt
	chmod a+rx ${S}/bin/*
	cp -a ${S} "${D}${INSTALLDIR}"
	# Symlink the wrapper script
	dosym ${INSTALLDIR}/bin/thinkingrock /usr/bin/thinkingrock
	# Symlink the directory and the jar to have them without version number
	dosym ${INSTALLDIR} /opt/${PN}
	dodir /usr/share/pixmaps
	cp ${S}/thinkingrock/resource/images/logo.png ${D}/usr/share/pixmaps/thinking-rock.png
	dodir /usr/share/applications
	cp ${FILESDIR}/thinking-rock-2.0.desktop ${D}/usr/share/applications/thinking-rock.desktop
}
