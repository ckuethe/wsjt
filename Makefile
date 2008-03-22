#Makefile for Windows and MinGW
CC = gcc
FC = g95

FFLAGS = -cpp
CFLAGS = -I. -fbounds-check

OBJS2 = wspr_tx.o genmept.o inter_mept.o nchar.o grid2deg.o \
	packcall.o packgrid.o pack50.o unpack50.o unpackcall.o \
	unpackgrid.o deg2grid.o ptt_unix.o set.o gran.o encode232.o \
	playsound.o 

OBJS3 = wspr_rx.o inter_mept.o \
	mix162.o xfft.o four1.o four2.o sync162.o ps162.o \
	mept162.o nchar.o grid2deg.o unpack50.o unpackcall.o \
	unpackgrid.o deg2grid.o getrms.o \
	set.o encode232.o fano232.o wfile5.o \
	xcor162.o slope.o peakup.o pctile.o db.o sort.o \
	ssort.o decode162.o getsound.o spec162.o flat3.o


all:    wspr_tx.exe wspr_rx.exe

wspr.exe: wspr.spec
	python c:/python25/pyinstaller-1.3/Build.py wspr.spec

wspr.spec: wspr.py g.py options.py palettes.py
	python c:/python25/pyinstaller-1.3/makespec.py --icon \
	   wsjt.ico --tk --onefile wspr.py

wspr_tx.exe: $(OBJS2)
	$(FC) -o wspr_tx.exe $(FFLAGS) $(OBJS2) -lpthread libportaudio2.a

wspr_rx.exe: $(OBJS3)
	$(FC) -o wspr_rx.exe $(FFLAGS) $(OBJS3) -lpthread libportaudio2.a

gran.o: gran.f90
	$(FC) -c $(FFLAGS) gran.f90
mept_rx.o: mept_rx.f90
	$(FC) -c $(FFLAGS) mept_rx.f90
mept_tx.o: mept_tx.f90
	$(FC) -c $(FFLAGS) mept_tx.f90
wspr.o: wspr.f90
	$(FC) -c $(FFLAGS) wspr.f90
wspr_rx.o: wspr_rx.f90
	$(FC) -c $(FFLAGS) wspr_rx.f90
wspr_tx.o: wspr_tx.f90
	$(FC) -c $(FFLAGS) wspr_tx.f90

.PHONY : clean

clean:
	rm *.o wspr.exe wspr_tx.exe wspr_rx.exe



