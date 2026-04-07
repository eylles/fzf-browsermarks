# fzf-browsermarks

An fzf script to search your web browser bookmars

## install

```sh
git clone https://github.com/eylles/fzf-browsermarks

cd fzf-browsermarks
make
make install-all
```

just like that


## config

Installation will provide an example config file to customize the bindings, appearance and colors of fzf, as well as your preferred terminal emulator, the default is `x-terminal-emulator`

## notes

At the time fzf-browsermarks only supports chromium based web browsers altho there's a template to add support for firefox and forks.

The terminal emulator `x-terminal-emulator` is a debianism, usually a
symlink pointing to an appropriate wrapper script that does the work of normalizing the command line
to provide scripts an interface that is compatible with the common [xterm](https://manpages.debian.org/unstable/xterm/xterm.1.en.html)
parameter flags and behaviours for example the [gnome-terminal.wrapper](https://sources.debian.org/src/gnome-terminal/3.56.1-1/debian/gnome-terminal.wrapper/)
however you may not need to build your own x-terminal-emulator wrapper as by policy debian will
provide such wrapper for the terminal emulators that DO need it, you can check from the following
list of terminals that provide the x-terminal-emulator interface in debian to simply yank the needed
wrapper: [x-terminal-emulator list](https://packages.debian.org/sid/x-terminal-emulator)
