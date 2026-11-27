# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="Utilities for SonicDE"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~x86"
IUSE="7zip gpg kwallet lrz rar +webengine"

# KClock requires the Wayland backend of KWindowSystem.
RDEPEND="
	>=app-cdr/dolphin-plugins-mountiso-${PV}:*
	>=app-cdr/isoimagewriter-${PV}:*
	>=app-crypt/keepsecret-${PV}:*
	>=app-crypt/keysmith-${PV}
	>=app-misc/francis-${PV}
	>=dev-libs/kweathercore-${PV}:*
	>=kde-apps/ark-${PV}:*
	>=kde-apps/filelight-${PV}:*
	>=kde-apps/kate-${PV}:*
	>=kde-apps/kbackup-${PV}:*
	>=kde-apps/kcalc-${PV}:*
	>=kde-apps/kcharselect-${PV}:*
	>=kde-apps/kdebugsettings-${PV}:*
	>=kde-apps/kdf-${PV}:*
	>=kde-apps/kteatime-${PV}:*
	>=kde-apps/ktimer-${PV}:*
	>=kde-apps/sweeper-${PV}:*
	>=kde-apps/yakuake-${PV}:*
	>=kde-misc/kweather-${PV}:*
	>=kde-misc/markdownpart-${PV}:*
	>=sonicde-base/sonic-partition-manager-${PV}:6
	>=sys-libs/kpmcore-${PV}:*
	gpg? ( >=kde-apps/kgpg-${PV}:* )
	kwallet? ( >=kde-apps/kwalletmanager-${PV}:* )
	webengine? (
		>=app-editors/ghostwriter-${PV}
		>=kde-apps/kimagemapeditor-${PV}:*
	)
"
# Optional runtime deps: kde-apps/ark
RDEPEND="${RDEPEND}
	7zip? ( >=app-arch/7zip-24.09[symlink(+)] )
	lrz? ( app-arch/lrzip )
	rar? ( || (
		app-arch/rar
		app-arch/unrar
		app-arch/unar
	) )
"
