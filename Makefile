.POSIX:
PREFIX = ${HOME}/.local
BIN_LOC = $(DESTDIR)${PREFIX}/bin
.PHONY: install uninstall


install:
	mkdir -p $(BIN_LOC)
	cp -v fzf-browser-bookmarks $(BIN_LOC)/

uninstall:
	rm -v $(BIN_LOC)/fzf-browser-bookmarks
