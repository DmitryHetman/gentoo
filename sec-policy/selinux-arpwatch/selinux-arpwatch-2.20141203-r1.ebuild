# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI="5"

IUSE=""
MODS="arpwatch"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for arpwatch"

if [[ ${PV} != 9999* ]] ; then
	KEYWORDS="amd64 x86"
fi