# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ruby23: fails tests
USE_RUBY="ruby20 ruby21 ruby22"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README"

inherit multilib ruby-fakegem

DESCRIPTION="Ruby/RBTree module"
HOMEPAGE="http://www.geocities.co.jp/SiliconValley-PaloAlto/3388/rbtree/README.html"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

all_ruby_prepare() {
	# Fix test for random hash ordering.
	sed -i -e '527 s/flatten/flatten.sort/g' test.rb || die

	mkdir lib || die
}

each_ruby_configure() {
	${RUBY} extconf.rb || die
}

each_ruby_compile() {
	emake V=1
	cp rbtree$(get_modname) lib/ || die
}

each_ruby_test() {
	${RUBY} test.rb || die
}