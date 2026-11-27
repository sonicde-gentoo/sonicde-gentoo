# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="Core applications for the Sonic Desktop Environment"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"
IUSE="+share +webengine"

RDEPEND="
	>=sonicde-base/sonic-ecco-${PV}:6
	>=sonicde-base/sonic-terminal-${PV}:6
	>=kde-apps/kdialog-${PV}:6
	>=kde-apps/keditbookmarks-${PV}:6
	>=kde-apps/kfind-${PV}:6
	>=kde-apps/kwrite-${PV}:6
	share? ( sonicde-frameworks/sonic-frameworks-purpose:6 )
	webengine? (
		>=kde-apps/khelpcenter-${PV}:6
		|| (
			>=www-client/falkon-${PV}
			>=kde-apps/konqueror-${PV}:6
		)
	)
"
