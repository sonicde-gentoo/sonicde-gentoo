# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

DESCRIPTION="Administration tools for SonicDE"
HOMEPAGE="https://sonicde.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="+cron"

RDEPEND="
	>=app-admin/kio-admin-${PV}:*
	>=sonicde-base/sonic-system-log-${PV}:6
	cron? ( >=kde-apps/kcron-${PV}:* )
"
