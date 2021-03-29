#!/bin/bash
#LINUX BUILD
echo "Working directory $(pwd)"
if [[ ! -d obj ]]; then mkdir obj; fi

if [[ $1 == "--linux" ]] || [[ $1 == "-l" ]]; then
    echo "Building for Linux with G++"
    if [[ ! -d obj/linux ]]; then mkdir obj/linux; fi
    if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then rm --verbose -R obj/linux/*; fi
    #======================================G++ COMMAND==========================================#
    $(
        g++ -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++\
        main.cpp\
        -o obj/linux/main\
        -D LINUX_BUILD=
    )
    #===========================================================================================#
    exitCode=$?
    if [ $exitCode != 0 ]; then
        echo "G++ exit code: $exitCode"
    else
        echo "Built with native G++ using $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> version
        echo "$(cat version)"
        mv --verbose version obj/linux/version
    fi
    exit
fi
#WINDOWS BUILD
if [[ $1 == "--windows" ]] || [[ $1 == "-w" ]]; then
    echo "Building for Windows with MinGW64/G++"
    if [[ ! -d obj/windows ]]; then mkdir obj/windows; fi
    if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
        if [[ -f obj/windows/* ]]; then rm --verbose -R obj/windows/*; fi
    fi
    #======================================G++ COMMAND==============================================#
    $(
        C:/msys64/mingw64/bin/g++.exe -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++\
        main.cpp\
        -o\
        obj/windows/main.exe\
        -D WINDOWS_BUILD=
    )
    #===============================================================================================#
    exitCode=$?
    if [ $exitCode != 0 ]; then
        echo "G++ exit code: $exitCode"
    else
        echo "Built with MinGW64/G++ using $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> version
        echo "$(cat version)"
        mv --verbose version obj/windows/version
    fi
    exit
fi
#WINDOWS BUILD FROM LINUX
if [[ $1 == "--windows-from-linux" ]] || [[ $1 == "-wl" ]]; then
    echo "Building for Windows with MinGW32/G++"
    if [[ ! -d obj/windows-from-linux ]]; then mkdir obj/windows-from-linux; fi
    if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
        if [[ -f obj/windows-from-linux/* ]]; then rm --verbose -R obj/windows-from-linux/*; fi
    fi
    #======================================G++ COMMAND==============================================#
    $(
        x86_64-w64-mingw32-g++ -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++\
        main.cpp\
        -o\
        obj/windows-from-linux/main.exe\
        -D WINDOWS_BUILD=
    )
    #===============================================================================================#
    exitCode=$?
    if [[ $exitCode != 0 ]]; then echo "G++ exit code: $exitCode"
    else
        echo "Built with MinGW32/G++ using $OSTYPE system on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> version
        echo "$(cat version)"
        mv --verbose version obj/windows-from-linux/version
    fi
    exit
fi
