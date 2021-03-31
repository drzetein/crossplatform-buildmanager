#!/bin/bash
echo "Working directory: $(pwd)"
echo ''
if [[ $# < 2 ]]; then echo "Expected at least 2 arguments"; exit 1; fi

Arguments=$@
BuildPath=${Arguments//-* /}
BuildFilename=${BuildPath##*/}
BuildDirectory=${BuildPath%$BuildFilename}


echo "Build filename:   $BuildFilename"
echo "Build directory:  $BuildDirectory"
echo "Build path:       $BuildPath"
echo ''

if [[ $3 == "--no-questions" || $3 == "-y" ]]; then
    i=""
else
    i="-i"
fi

if [[ $2 == "--clean" || $2 == "-c" ]]; then
    for file in $BuildDirectory*; do
        rm -R $i --verbose $file
    done
    echo ''
fi

if [ ! -d $BuildDirectory ]; then
    mkdir -p --verbose $BuildDirectory;
fi


# LINUX BUILD #
if [[ $1 == "--linux" ]] || [[ $1 == "-l" ]]; then
    echo "Building for Linux from $OSTYPE"
    #==========================================================G++ COMMAND==========================================================#
    if [[ $OSTYPE == "linux-gnu" ]]; then
        $(  g++ -g -Wall -Wextra -march=native -std=gnu++17 -static -static-libgcc -static-libstdc++                            \
            main.cpp                                                                                                            \
            -o $BuildPath                                                                                                       \
            -D _LINUX_BUILD_=
        )
    elif [[ $OSTYPE == "msys" || $OSTYPE == "cygwin" ]]; then
        $(  C:/msys64/usr/bin/g++.exe -g -Wall -Wextra -march=native -std=gnu++17 -static -static-libgcc -static-libstdc++      \
            main.cpp                                                                                                            \
            -o $BuildPath                                                                                                       \
            -D _LINUX_BUILD_=
        )
    #===============================================================================================================================#
    fi
    exitCode=$?

# WINDOWS BUILD #
elif [[ $1 == "--windows" ]] || [[ $1 == "-w" ]]; then
    echo "Building for Windows from $OSTYPE"
    if [[ $OSTYPE == "msys" || $OSTYPE == "cygwin" ]]; then
    #==========================================================G++ COMMAND==========================================================#
        $(  C:/msys64/mingw64/bin/g++.exe -g -Wall -Wextra -march=native -std=c++17 -static -static-libgcc -static-libstdc++    \
            main.cpp                                                                                                            \
            -o $BuildPath                                                                                                       \
            -D _WINDOWS_BUILD_=
        )
    elif [[ $OSTYPE == "linux-gnu" ]]; then
        $(  x86_64-w64-mingw32-g++ -g -Wall -Wextra -march=native -std=c++17 -static -static-libgcc -static-libstdc++           \
            main.cpp                                                                                                            \
            -o $BuildPath                                                                                                       \
            -D _WINDOWS_BUILD_=
        )
    #===============================================================================================================================#
    fi
    exitCode=$?
else
    echo "Error: Unknown target operational system ${1#--}. Please specify either --linux or --windows as the first argument."
    exit 1
fi

# POST BUILD TASKS #
if [[ $exitCode != 0 ]]; then
    echo "G++ exit code: $exitCode"
    exit $exitCode
else
    echo "$BuildFilename: built with G++ from $OSTYPE on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $BuildPath.version
    echo "$(cat $BuildPath.version)"
    exit 0
fi