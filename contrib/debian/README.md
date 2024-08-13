
Debian
====================
This directory contains files used to package enigd/enig-qt
for Debian-based Linux systems. If you compile enigd/enig-qt yourself, there are some useful files here.

## enig: URI support ##


enig-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install enig-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your enig-qt binary to `/usr/bin`
and the `../../share/pixmaps/enig128.png` to `/usr/share/pixmaps`

enig-qt.protocol (KDE)

