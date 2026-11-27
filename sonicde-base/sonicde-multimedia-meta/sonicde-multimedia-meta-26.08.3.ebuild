# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="Multimedia applications for SonicDE"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="+cdrom +ffmpeg gstreamer"

# Dragon Player requires the Wayland backend of KWindowSystem.
RDEPEND="
	>=kde-apps/juk-${PV}:*
	>=kde-apps/kdenlive-${PV}:*
	>=kde-apps/kmix-${PV}:*
	>=kde-apps/kwave-${PV}:*
	>=media-sound/elisa-${PV}:*
	>=media-sound/kasts-${PV}
	>=media-sound/krecorder-${PV}
	cdrom? (
		>=media-sound/audex-${PV}
		>=kde-apps/audiocd-kio-${PV}:*
		>=kde-apps/k3b-${PV}:*
		>=kde-apps/libkcddb-${PV}:*
	)
	ffmpeg? ( >=kde-apps/ffmpegthumbs-${PV}:* )
	gstreamer? ( >=kde-apps/kamoso-${PV}:* )
"
