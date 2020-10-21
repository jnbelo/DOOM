DISTDIR=dist
BUILDDIR=build

DOOM=linuxdoom-1.10
SOUNDSERVER=sndserv

all: clean doom sndserv
	cp -f $(DOOM)/$(BUILDDIR)/linuxxdoom $(DISTDIR)/
	cp -f $(SOUNDSERVER)/$(BUILDDIR)/sndserver $(DISTDIR)/

clean:
	mkdir -p $(DISTDIR)
	$(RM) $(DISTDIR)/linuxxdoom $(DISTDIR)/sndserver

doom:
	(cd $(DOOM); make all)

sndserv:
	(cd $(SOUNDSERVER); make all)