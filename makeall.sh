#!/bin/bash

echo "Compile and Get your process version "

###Manage build version
# param 0 or empty : no version up
# param 1 : only patch version up
# param 2 : only minor version up
# param 3: only major version up

VER_MAJOR=`cat ./major.txt`
VER_MINOR=`cat ./minor.txt`
VER_PATCH=`cat ./patch.txt`
BUILD_DATE1=`cat ./builddt.txt`
BUILD_DATE2=`date +%Y%m%d`
BUILD_DATE=${BUILD_DATE2}

strversion=""

echo "1st param = ${1}"
BUILDTP=`expr ${1} + 0`

BUILDTP=$((BUILDTP))

if [ ${BUILDTP} -eq 1 ]; then
	echo "Compile source (patch version up) "

	echo "buildate1:${BUILD_DATE1} MAJOR:${VER_MAJOR} MINOR:${VER_MINOR} PATCH:${VER_PATCH}"

    VER_PATCH=`expr $VER_PATCH + 1`

    BUILD_DATE=${BUILD_DATE2}
    echo "BUILDDT" ${BUILD_DATE}
    
elif [ ${BUILDTP} = 2 ]; then
	echo "Compile source (minor version up) "

	echo "buildate1:${BUILD_DATE1} MAJOR:${VER_MAJOR} MINOR:${VER_MINOR} PATCH:${VER_PATCH}"

    VER_PATCH=`expr 1`
    VER_MINOR=`expr $VER_MINOR + 1`

    BUILD_DATE=${BUILD_DATE2}
    echo "BUILDDT" ${BUILD_DATE}

elif [ ${BUILDTP} = 3 ]; then
	echo "Compile source (major version up) "

	echo "buildate1:${BUILD_DATE1} MAJOR:${VER_MAJOR} MINOR:${VER_MINOR} PATCH:${VER_PATCH}"

    VER_PATCH=`expr 1`
    VER_MINOR=`expr 1`
    VER_MAJOR=`expr $VER_MAJOR + 1`

    BUILD_DATE=${BUILD_DATE2}
    echo "BUILDDT" ${BUILD_DATE}

else
    echo "Compile source (No version up) "
	echo "buildate:${BUILD_DATE1} MAJOR:${VER_MAJOR} MINOR:${VER_MINOR} PATCH:${VER_PATCH}"

    BUILD_DATE=${BUILD_DATE1}

fi

echo "buildate2:${BUILD_DATE} ${BUILD_DATE2}  MAJOR:${VER_MAJOR} MINOR:${VER_MINOR} PATCH:${VER_PATCH}"

### Process build command ###
### You must input it according to your build environment. ###
#cd $YOUR_SRC

### Go Makefile build command
#make build

cd $MAKE_DIR

rm ./builddt.txt
echo ${BUILD_DATE} >> ./builddt.txt

rm ./major.txt
echo ${VER_MAJOR} >> ./major.txt

rm ./minor.txt
echo ${VER_MINOR} >> ./minor.txt

rm ./patch.txt
echo ${VER_PATCH} >> ./patch.txt

strversion="${BUILD_DATE}.${VER_MAJOR}.${VER_MINOR}.${VER_PATCH}"
echo "version:${strversion}"
rm $YOUR_BIN/apiversion.txt
echo ${strversion} >> $YOUR_BIN/apiversion.txt	