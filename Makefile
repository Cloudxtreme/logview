prefix=/usr/local
bindir=${prefix}/bin
DESTDIR=
prog=logview

all:
	@echo "Type 'make install' to install ${prog} in system."
	@echo "Type 'make uninstall' to remove ${prog} from system."

install:
	if [ "`id -u`" = "0" ]; then \
	  rights="-o 0 -g 0" ;\
	else \
	  rights="" ;\
	fi ;\
	install -m 755 $$rights ${prog} $(DESTDIR)${bindir}

uninstall:
	rm $(DESTDIR)${bindir}/${prog}
