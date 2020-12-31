PREFIX=/usr/bin

.PHONY: install
install: xdg-open config
	mkdir -p $(DESTDIR)$(PREFIX)
	mkdir -p $(DESTDIR)/etc/xdg/busking
	install -D xdg-open $(DESTDIR)$(PREFIX)/xdg-open
	cp -v config $(DESTDIR)/etc/xdg/busking/config

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/xdg-open
	rm -rf $(DESTDIR)/etc/xdg/busking
