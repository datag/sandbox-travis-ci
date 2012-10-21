# Makefile
# mingw32-make

CC ?= gcc
WINDRES ?= windres
STRIP ?= strip

SRCDIR=src
RESDIR=res
BINDIR=bin

all: $(BINDIR)/Test.exe


$(BINDIR)/Test.exe: $(BINDIR)/Test.obj $(BINDIR)/resource.obj
	$(CC) -mwindows -o $(BINDIR)/Test.exe $(BINDIR)/Test.obj $(BINDIR)/resource.obj

$(BINDIR)/Test.obj: $(SRCDIR)/main.c $(SRCDIR)/config.h
	$(CC) -c -o $(BINDIR)/Test.obj $(SRCDIR)/main.c

$(BINDIR)/resource.obj:	$(RESDIR)/appicon.ico $(SRCDIR)/resource.rc $(SRCDIR)/config.h
	$(WINDRES) $(SRCDIR)/resource.rc $(BINDIR)/resource.obj

strip: $(BINDIR)/Test.exe
	$(STRIP) --strip-all $(BINDIR)/Test.exe

clean:
	rm $(BINDIR)/*

.PHONY: all clean strip

