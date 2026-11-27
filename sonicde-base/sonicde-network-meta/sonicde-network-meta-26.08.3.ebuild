# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="Networking applications for SonicDE"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~x86"
IUSE="+bittorrent dropbox samba +webengine +zeroconf"

RDEPEND="
	>=kde-apps/kget-${PV}:*
	>=net-im/tokodon-${PV}
	>=net-irc/konversation-${PV}:*
	>=net-news/alligator-${PV}
	bittorrent? (
		>=net-libs/libktorrent-${PV}:*
		>=net-p2p/ktorrent-${PV}:*
	)
	dropbox? ( >=kde-apps/dolphin-plugins-dropbox-${PV}:* )
	samba? ( >=kde-apps/kdenetwork-filesharing-${PV}:* )
	webengine? (
		>=sonicde-base/sonic-accounts-integration-${PV}:6
		>=kde-apps/kaccounts-providers-${PV}:*
		>=kde-apps/signon-kwallet-extension-${PV}:*
		>=net-im/neochat-${PV}
	)
	zeroconf? (
		>=kde-apps/krdc-${PV}:*
		>=kde-apps/krfb-${PV}:*
		>=kde-misc/kdeconnect-${PV}:*
		>=net-misc/kio-zeroconf-${PV}:*
	)
"
