prefix = /usr/local
libdir = $(prefix)/lib

.PHONY: all
all:
	gunzip Jazz-Plugin-1-4-32.so.gz

.PHONY: installdirs
installdirs:
	mkdir -p $(DESTDIR)$(libdir)/mozilla/plugins

.PHONY: install
install: installdirs
	install -m 644 Jazz-Plugin-1-4-32.so \
	    $(DESTDIR)$(libdir)/mozilla/plugins
