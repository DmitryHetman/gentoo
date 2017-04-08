# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=4

inherit vim-plugin

DESCRIPTION="vim plugin: unite all sources"
HOMEPAGE="http://www.vim.org/scripts/script.php?script_id=3396"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE=""

VIM_PLUGIN_HELPFILES="unite.txt"

src_prepare() {
	# remove unused tests
	rm -rf test
}