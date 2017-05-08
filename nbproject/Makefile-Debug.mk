#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Command.o \
	${OBJECTDIR}/Communication.o \
	${OBJECTDIR}/Control.o \
	${OBJECTDIR}/Logger.o \
	${OBJECTDIR}/OutputVideo.o \
	${OBJECTDIR}/Settings.o \
	${OBJECTDIR}/Undistort.o \
	${OBJECTDIR}/UserInterface.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=/usr/local/lib/libopencv_features2d.so /usr/local/lib/libopencv_photo.so /usr/local/lib/libopencv_calib3d.so /usr/local/lib/libopencv_core.so /usr/local/lib/libopencv_features2d.so /usr/local/lib/libopencv_flann.so /usr/local/lib/libopencv_hal.a /usr/local/lib/libopencv_highgui.so /usr/local/lib/libopencv_imgcodecs.so /usr/local/lib/libopencv_imgproc.so /usr/local/lib/libopencv_ml.so /usr/local/lib/libopencv_objdetect.so /usr/local/lib/libopencv_photo.so /usr/local/lib/libopencv_shape.so /usr/local/lib/libopencv_stitching.so /usr/local/lib/libopencv_superres.so /usr/local/lib/libopencv_ts.a /usr/local/lib/libopencv_video.so /usr/local/lib/libopencv_videoio.so /usr/local/lib/libopencv_videostab.so /usr/local/lib/libopencv_viz.so

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_features2d.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_photo.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_calib3d.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_core.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_features2d.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_flann.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_hal.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_highgui.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_imgcodecs.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_imgproc.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_ml.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_objdetect.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_photo.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_shape.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_stitching.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_superres.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_ts.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_video.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_videoio.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_videostab.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: /usr/local/lib/libopencv_viz.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas ${OBJECTFILES} ${LDLIBSOPTIONS} -lserial

${OBJECTDIR}/Command.o: Command.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Command.o Command.cpp

${OBJECTDIR}/Communication.o: Communication.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Communication.o Communication.cpp

${OBJECTDIR}/Control.o: Control.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Control.o Control.cpp

${OBJECTDIR}/Logger.o: Logger.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Logger.o Logger.cpp

${OBJECTDIR}/OutputVideo.o: OutputVideo.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/OutputVideo.o OutputVideo.cpp

${OBJECTDIR}/Settings.o: Settings.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Settings.o Settings.cpp

${OBJECTDIR}/Undistort.o: Undistort.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Undistort.o Undistort.cpp

${OBJECTDIR}/UserInterface.o: UserInterface.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/UserInterface.o UserInterface.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/opencv -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} -r ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_objdetect.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_shape.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_videostab.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_highgui.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_superres.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_ml.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_imgcodecs.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_calib3d.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_flann.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_video.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_features2d.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_core.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_videoio.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_photo.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_stitching.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_imgproc.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libopencv_viz.so
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/dynammmas

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
