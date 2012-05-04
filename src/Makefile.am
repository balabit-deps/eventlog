
lib_LTLIBRARIES = libevtlog.la

libevtlog_la_SOURCES = evtrec.c evtfmt.c evtstr.c evtctx.c evttags.c
if !IS_WIN32
libevtlog_la_SOURCES += evtout.c evtsyslog.c
endif
libevtlog_la_LDFLAGS = $(LDFLAGS) $(MODULE_LDFLAGS)

noinst_HEADERS = evt_internals.h 

pkginclude_HEADERS = evtmaps.h evtlog.h 

EXTRA_DIST=makefile.msc
