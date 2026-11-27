# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="SonicDE application collection"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="accessibility +admin +education +games +graphics +multimedia +network pim sdk +utils"

RDEPEND="
	>=sonicde-base/sonicde-core-meta-${PV}:*
	accessibility? ( >=sonicde-base/sonicde-accessibility-meta-${PV}:* )
	admin? ( >=sonicde-base/sonicde-admin-meta-${PV}:* )
	education? ( >=sonicde-base/sonicde-education-meta-${PV}:* )
	games? ( >=sonicde-base/sonicde-games-meta-${PV}:* )
	graphics? ( >=sonicde-base/sonicde-graphics-meta-${PV}:* )
	multimedia? ( >=sonicde-base/sonicde-multimedia-meta-${PV}:* )
	network? ( >=sonicde-base/sonicde-network-meta-${PV}:* )
	pim? ( >=sonicde-base/sonicde-pim-meta-26.04.3:* )
	sdk? ( >=sonicde-base/sonicde-sdk-meta-${PV}:* )
	utils? ( >=sonicde-base/sonicde-utils-meta-${PV}:* )
"
