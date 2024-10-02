# calls shell script to build icon theme
# please pass the theme name as a variable before running 'make'

ICNS_HOME = /usr/share/icons

all:
	./mk_theme

install:
	install -d -m 0755 $(DESTDIR)/$(ICNS_HOME)/
	-cp -ar icons/* $(DESTDIR)/$(ICNS_HOME)

clean:
	-rm -rf "$(THEME)"
	-rm -f *.tar.xz*
	-rm -rf *-icons
	-rm -rf *.txt
	-rm -rf icons
	./mk_clean
