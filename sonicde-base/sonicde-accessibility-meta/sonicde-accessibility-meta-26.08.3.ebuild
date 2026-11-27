# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="Accessibility applications for SonicDE"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~riscv ~x86"

RDEPEND="
	>=app-accessibility/kontrast-${PV}:*
	>=kde-apps/kmag-${PV}:*
	>=kde-apps/kmousetool-${PV}:*
	>=kde-apps/kmouth-${PV}:*
"
