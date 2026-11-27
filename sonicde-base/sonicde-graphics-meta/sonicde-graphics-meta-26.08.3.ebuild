# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="Graphics applications for SonicDE"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="color-management scanner +webengine"

RDEPEND="
	>=kde-apps/gwenview-${PV}:*
	>=kde-apps/kamera-${PV}:*
	>=kde-apps/kcolorchooser-${PV}:*
	>=kde-apps/kdegraphics-mobipocket-${PV}:*
	>=kde-apps/kolourpaint-${PV}:*
	>=kde-apps/kruler-${PV}:*
	>=kde-apps/libkdcraw-${PV}:*
	>=sonicde-base/sonic-exiv2-library-${PV}:6
	>=kde-apps/okular-${PV}:*
	>=kde-apps/svgpart-${PV}:*
	>=kde-apps/thumbnailers-${PV}:*
	>=media-gfx/kgraphviewer-${PV}:*
	>=media-gfx/qrca-${PV}:*
	color-management? ( >=kde-misc/colord-kde-${PV}:* )
	scanner? (
		>=kde-apps/libksane-${PV}:*
		>=kde-misc/skanlite-${PV}:*
		webengine? ( >=media-gfx/skanpage-${PV}:* )
	)
"
