# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit flag-o-matic

DESCRIPTION="Configuration file management for KVM commandline tools"
HOMEPAGE="http://struction.de/kvm-manager"
SRC_URI="http://struction.de/kvm-manager/${PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="app-emulation/qemu-kvm
        sys-process/lsof
        app-misc/screen
        net-misc/putty
        dev-lang/bash_include
       "
#bash library

MAKEOPTS="${MAKEOPTS} -j1"

src_compile() {
	econf || die "econf failed"
	emake || die "make failed"
}

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
}
