
ACLOCAL_AMFLAGS=-I m4
SUBDIRS = src solbuild tgzbuild tgz2build winbuild

if !IS_WIN32
SUBDIRS += tests
endif

EXTRA_DIST = VERSION NEWS PORTS CREDITS doc/API.txt doc/DESIGN.txt doc/configuration.txt \
	debian/changelog debian/changelog.in debian/compat debian/control debian/copyright \
	debian/libevtlog-dev.install debian/libevtlog0.install debian/libevtlog0.shlibs debian/rules \
	balabit-vs-build balabit-unix-build makefile.msc

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = eventlog.pc

debian/changelog: debian/changelog.in
	$(top_builddir)/config.status --file $@:$<
