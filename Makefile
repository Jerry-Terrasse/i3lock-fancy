PRGM = i3lock-fancy
PREFIX ?= /usr
SHRDIR ?= $(PREFIX)/share
BINDIR ?= $(PREFIX)/bin

install:
	@install -Dm755 i3lock-fancy          -t $(DESTDIR)$(BINDIR)
	@install -Dm644 icons/*               -t $(DESTDIR)$(SHRDIR)/$(PRGM)/icons
	@install -Dm644 doc/i3lock-fancy.1    -t $(DESTDIR)$(SHRDIR)/man/man1
	@install -Dm644 LICENSE               -t $(DESTDIR)$(SHRDIR)/licenses/$(PRGM)

uninstall:
	@unlink $(BINDIR)/$(PRGM) # Remove binary
	@rm -Rf $(SHRDIR)/$(PRGM) # Remove icons
	@unlink $(SHRDIR)/man/man1/i3lock-fancy.1 # Remove man
	@rm -Rf $(SHRDIR)/licenses/$(PRGM) # Remove license
