##########################################################
#
# $Id:$
#
# $Log:$
#
#

CC=gcc
CFLAGS=-O -DNORMALUNIX -DLINUX
LDFLAGS=
LIBS=-lm

O=build

all: clean $(O)/sndserver
.PHONY: all

clean:
	rm -f *.o *~ *.flc
	rm -f $(O)/*

# Target
$(O)/sndserver: \
	$(O)/soundsrv.o \
	$(O)/sounds.o \
	$(O)/wadread.o \
	$(O)/linux.o
	$(CC) $(CFLAGS) $(LDFLAGS) \
	$(O)/soundsrv.o \
	$(O)/sounds.o \
	$(O)/wadread.o \
	$(O)/linux.o -o $(O)/sndserver $(LIBS)
	echo make complete.

# Rule
$(O)/%.o: %.c
	mkdir -p $(O)
	$(CC) $(CFLAGS) -c $< -o $@


