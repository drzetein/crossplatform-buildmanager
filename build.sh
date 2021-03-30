#!/bin/bash
echo "Working directory $(pwd)"
parameters=$@
clength=$#
if [[ $clength<2 ]]; then echo "Error: Expected at least 2 arguments"; exit $clength; fi

function getLastArgument {
    if   [[ $#!=2 ]]; then echo "getLastArgument::Error: Expected 2 arguments"; exit $#
    elif [[ $#=2 ]]; then cmdString=$1; j=$2;
    fi
    i=0
    for i in $j; do echo "${cmdString//* /}"; done
}
ExecutablePath=$(getLastArgument "$parameters" $clength)
echo $ExecutablePath
 

if [[ ! -d obj ]]; then mkdir --verbose obj; fi
# LINUX BUILDS #
if [[ $1 == "--linux" ]] || [[ $1 == "-l" ]]; then
    echo "Building for Linux with G++"
    if [ ! -d obj/linux ]; then mkdir obj/linux; fi
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
        echo "$ExecutablePath: built with native G++ on $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ExecutablePath.version
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
            echo "$ExecutablePath: built with MinGW64/G++ on $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ExecutablePath.version
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
            echo "$ExecutablePath: built with MinGW32/G++ on $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ExecutablePath.version
            echo "$(cat $ExecutablePath.version)"
        fi
        exit
    fi
fi