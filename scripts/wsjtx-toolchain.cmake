# WSJT-X CMake Build Tool Chain File
# Part of the WSJT Documentation Project
SET (CMAKE_SYSTEM_NAME Windows)
SET (QTDIR /wsjt-env/Qt5/5.2.1/mingw48_32)
SET (FFTW3DIR /wsjt-env/fftw3f)
SET (HAMLIBDIR /wsjt-env/hamlib)
SET (WSJTXLIBS /wsjt-env/src/wsjtx)
SET (CMAKE_PREFIX_PATH ${QTDIR} ${FFTW3DIR} ${HAMLIBDIR} ${HAMLIBDIR}/bin)
SET (CMAKE_FIND_ROOT_PATH ${QTDIR} ${WSJTXLIBS})
SET (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
SET (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)