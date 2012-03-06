include autotools/common.am
doc_DATA=

dist_doc_DATA=

pkgconfig_DATA=kvm-manager.pc
dist_DATA_IN+=kvm-manager.pc.in


dist_doc_DATA+=AUTHORS COPYING README

include src/Makefile.am

install-data: install-data-am
# install: install-exec-recursive install-data-am
install: install-data-am
