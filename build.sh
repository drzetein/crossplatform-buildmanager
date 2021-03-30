#!/bin/bash
echo "Working directory $(pwd)"
parameters=$@
clength=$#

function getLastArgument {
    if [[ ! $# == 2 ]]; then echo "getLastArgument::error $#"; exit 1;
    else
        local cmdString=$1;
        for i in $2; do echo ${cmdString//* /}; done
    fi
}
    

ExecutablePath=$(getLastArgument "$parameters" $clength)
if [ $ExecutablePath == 1 ]; then 
    echo "Expected at least 2 arguments"
    exit $ExecutablePath
fi

function getBinaryFilename {
    if [[ ! $# == 1 ]]; then echo "getBinaryFilename::error $#"; exit 1;
    else 
        local BinaryFilename=$1;
        for i in $BinaryFilename; do echo ${BinaryFilename//*\//}; done
    fi
}
BinaryFilename=$(getBinaryFilename "$ExecutablePath")
if [[ $BinaryFilename =~ [0-9] ]]; then echo $BinaryFilename; exit 1; fi

if [[ ! -d obj ]]; then mkdir --verbose obj; fi
# LINUX BUILDS #
if [[ $1 == "--linux" ]] || [[ $1 == "-l" ]]; then
    echo "Building for Linux with G++"
    if [ ! -d obj/linux ]; then mkdir --verbose obj/linux; fi
    if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
        if [[ -f obj/linux/* ]]; then
            rm --verbose -R obj/linux/*;
        fi
    fi
    #=========================================================G++ COMMAND=========================================================#
        $(  g++ -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++                            \
            main.cpp                                                                                                          \
            -o $ExecutablePath                                                                                                \
            -D _LINUX_BUILD_=
        )
    #=============================================================================================================================#
    exitCode=$?
    if [ $exitCode != 0 ]; then
        echo "G++ exit code: $exitCode"
    else
        if [[ -f $ExecutablePath.version ]]; then rm $ExecutablePath.version; fi
        echo "$BinaryFilename: built with native G++ on $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ExecutablePath.version
        echo "$(cat $ExecutablePath.version)"
    fi
    exit
fi

# WINDOWS BUILDS #
if [[ $1 == "--windows" ]] || [[ $1 == "-w" ]]; then
    echo "Building for Windows from $OSTYPE with MinGW64/G++"

    if [[ $OSTYPE == "msys" ]]; then
        if [ ! -d obj/windows ]; then mkdir --verbose obj/windows; fi
        if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
            if [[ -f obj/windows/* ]]; then rm --verbose -R obj/windows/*; fi
        fi
    #=========================================================G++ COMMAND=========================================================#
        $(  C:/msys64/mingw64/bin/g++.exe -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++  \
            main.cpp                                                                                                          \
            -o $ExecutablePath                                                                                                \
            -D _WINDOWS_BUILD_=
        )
    #=============================================================================================================================#
        exitCode=$?
        if [ $exitCode != 0 ]; then
            echo "G++ exit code: $exitCode"
        else
            if [[ -f $ExecutablePath.version ]]; then rm $ExecutablePath.version; fi
            echo "$BinaryFilename: built with MinGW64/G++ on $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ExecutablePath.version
            echo "$(cat $ExecutablePath.version)"
        fi
        exit
    elif [[ $OSTYPE == "linux-gnu" ]]; then
        if [ ! -d obj/windows ]; then mkdir --verbose obj/windows; fi
        if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
            if [[ -f obj/windows/* ]]; then rm --verbose -R obj/windows/*; fi
        fi
    #=============================================================G++ COMMAND=====================================================#
        $(  x86_64-w64-mingw32-g++ -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++         \
            main.cpp                                                                                                          \
            -o $ExecutablePath.exe                                                                                            \
            -D _WINDOWS_BUILD_=
        )
    #=============================================================================================================================#
        exitCode=$?
        if [[ $exitCode != 0 ]]; then
            echo "G++ exit code: $exitCode"
        else
            if [[ -f $ExecutablePath.version ]]; then rm $ExecutablePath.version; fi
            echo "$BinaryFilename: built with MinGW32/G++ on $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ExecutablePath.version
            echo "$(cat $ExecutablePath.version)"
        fi
        exit
    fi
fi
