# Makefile for Linux

# Re-direct stdout and stderr:	bash
#								make >& junk

# Prerequisites: Python 3.x, numpy-1.8.1, PIL, Pmw-2.0.0+

MV			?= 	mv
RM			?=	/bin/rm
MKDIR		?= 	mkdir
INSTALL		=	install
PYTHON		?=	/usr/bin/python3
F2PY		?=	/usr/local/bin/f2py3

CC			?=	gcc
FFLAGS		=	-g -O2 -fbounds-check -fno-second-underscore -Wall -Wno-conversion -Wno-character-truncation -fPIC -m64
LDFLAGS		=	-L/usr/lib -L/usr/include -L/usr/x86_64-linux-gnu -L/usr/lib/i386-linux-gnu -L/usr/local/lib  
LIBS		=	-lpthread -lportaudio -lfftw3f 
CPPFLAGS	=	-I/usr/lib -I/usr/include -I/usr/x86_64-linux-gnu -I/usr/lib/i386-linux-gnu -I/usr/local/include 
CFLAGS		=	 -Wall -O0 -g  -Wall -O0 -g
PREFIX		=	/usr/local/

# WSPR specific compiler flags
FFLAGS		+=	-O2 -fbounds-check -fno-second-underscore -Wall -Wno-conversion -Wno-character-truncation -fPIC -m64
CFLAGS		+=	-I. -DBIGSYM -DHAVE_STRUCT_TIMESPEC -fPIC

DEFS		=	-DPACKAGE_NAME=\"wspr\" -DPACKAGE_TARNAME=\"wspr\" -DPACKAGE_VERSION=\"4.0\" -DPACKAGE_STRING=\"wspr\ 4.0\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DFC_LIB_PATH=\"/usr/lib/gcc/x86_64-linux-gnu/4.8/\" -DFC=\"gfortran\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_ERRNO_H=1 -DHAVE_FCNTL_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_LIBGEN_H=1 -DHAVE_STDINT_H=1 -DHAVE_STDDEF_H=1 -DHAVE_STDIO_H=1 -DHAVE_TERMIOS_H=1 -DHAVE_WAIT_H=1 -DHAVE_LINUX_PPDEV_H=1 -DHAVE_SYS_IOCTL_H=1 -DHAVE_SYS_RESOURCE_H=1 -DHAVE_SYS_RESOURCE_H=1 -DHAVE_SYS_PARAM_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_SYS_SYSLOG_H=1 -DHAVE_SYS_TIME_H=1 -DHAVE_SYS_WAIT_H=1 -DHAVE_SAMPLERATE_H=1 -DHAVE_PORTAUDIO_H=1 -DHAVE_FFTW3_H=1 -DSTRING_WITH_STRINGS=1 -DNDEBUG=1

CFLAGS		+=	${DEFS}
CPPFLAGS	+=	${DEFS} -I.

all:	libwspr.a thnix.o WsprMod/w.so fmt fmtave fcal fmeasure wsprcode
# wsprcode

# Default rules
%.o: %.c
	${CC} ${CPPFLAGS} ${CFLAGS} -c $<
%.o: %.f
	${FC} ${FFLAGS} -c $<
%.o: %.F
	${FC} ${FFLAGS} -c $<
%.o: %.f90
	${FC} ${FFLAGS} -c $<
%.o: %.F90
	${FC} ${FFLAGS} -c $<

OS			=	Linux
FC			=	gfortran
FCV			=	gnu95
FC_LIB_PATH	+=	/usr/lib/gcc/x86_64-linux-gnu/4.8/
LDFLAGS		+=	-L${FC_LIB_PATH}

OBJS1 = wspr0.o wspr0init.o wspr0_rx.o wspr0_tx.o thnix_stub.o

wspr0:  ${OBJS1}
	$(FC) ${FFLAGS} -o wspr0 $(FFLAGS) ${OBJS1} libwspr.a libportaudio.a libfftw3f.a

wsprcode: wsprcode.o thnix_stub.o
	$(FC) -o wsprcode wsprcode.o thnix_stub.o libwspr.a

OBJS3 = azdist.o ccf2.o chklevel.o db.o decode.o decode162.o deg2grid.o \
	encode232.o fano232.o fchisq.o fil1.o flat3.o four2a.o\
	fthread.o gencwid.o genwspr.o geodist.o getrms.o getutc.o \
	gmtime2.o gran.o grid2deg.o hash.o inter_mept.o iqdemod.o \
	mept162.o mix162.o morse.o msgtrim.o nchar.o nhash.o pack50.o \
	packcall.o packgrid.o packname.o packpfx.o packprop.o packtext2.o \
	padevsub.o pctile.o peakup.o phasetx.o ps162.o ptt_unix.o rx.o \
	rxtxcoord.o set.o sort.o sound.o spec162.o speciq.o ssort.o \
	start_threads.o startdec.o startrx.o starttx.o sync162.o \
	twkfreq.o tx.o unpack50.o unpackcall.o unpackgrid.o \
	unpackname.o unpackpfx.o unpackprop.o unpacktext2.o wfile5.o \
	wqdecode.o wqencode.o wspr2.o xcor162.o xfft.o 

# Build the library libwspr.a
libwspr.a: $(OBJS3) acom1.f90 acom2.f90
	ar cr libwspr.a $(OBJS3)
	ranlib libwspr.a

fmt: fmt.f90 libwspr.a
	$(FC) -o fmt fmt.f90 libwspr.a -lfftw3f -lportaudio

fmtave: fmtave.f90
	$(FC) -o fmtave fmtave.f90

fcal: fcal.f90
	$(FC) -o fcal fcal.f90

fmeasure: fmeasure.f90
	$(FC) -o fmeasure fmeasure.f90

F2PYSRCS = wspr1.f90 getfile.f90 paterminate.f90 audiodev.f90

WsprMod/w.so:	libwspr.a ${F2PYSRCS} acom1.f90 
	${F2PY} -c -I. --fcompiler=gnu95 --f77exec=gfortran --f90exec=gfortran \
	--opt="-cpp -fbounds-check -O2" thnix.o ${LDFLAGS} ${LIBS} libwspr.a \
	-m w ${F2PYSRCS}
	
	${MKDIR} -p build/lib/WsprMod
	${MV} w.*.so WsprMod/w.so

install: WsprMod/w.so
	${RM} -rf build/
	${PYTHON} setup.py install
	${INSTALL} wspr ${PREFIX}/bin

.PHONY : clean
clean:
	${RM} -f *.o libwspr.a *.pyc *.pyo WsprMod/*.pyc WsprMod/*.pyo WsprMod/w.so \
	WsprMod/*.so w.so *~ wsprcode fmt fmtave fcal fmeasure wspr0
	${RM} -rf build/

distclean:
	${RM} -f config.log config.status Makefile
	${RM} -r autom4*
