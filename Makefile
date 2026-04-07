.POSIX:
NAME = fzf-browser-bookmarks
PREFIX = ${HOME}/.local
BIN_LOC = $(DESTDIR)$(PREFIX)/bin
DESK_LOC = $(DESTDIR)$(PREFIX)/share/applications
.PHONY: install uninstall install-all clean all

all: $(NAME) $(NAME).desktop

$(NAME):
	cp fzf-browser-bookmarks.sh $@
	chmod 755 $@

$(NAME).desktop:
	sed "s|@NAME@|$(NAME)|;" \
		fzf-browser-bookmarks.desktop.in > $(NAME).desktop

install: $(NAME)
	mkdir -p $(BIN_LOC)
	cp -v $(NAME) $(BIN_LOC)/

install-desktop: $(NAME).desktop
	mkdir -p $(DESK_LOC)
	cp $(NAME).desktop $(DESK_LOC)/$(NAME).desktop

install-all: install install-desktop

uninstall:
	rm -vf $(BIN_LOC)/$(NAME)
	rm -vf $(DESK_LOC)/fzf-copypasta.desktop

clean:
	rm -vf $(NAME) $(NAME).desktop
