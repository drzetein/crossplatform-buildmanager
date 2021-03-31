#!/bin/bash
echo "Working directory: $(pwd)"
echo ""
if [[ $# < 2 ]]; then echo "Expected at least 2 arguments"; exit 1; fi

Arguments=$@
ObjectPath=${Arguments//-* /}
ObjectFilename=${ObjectPath##*/}
ObjectDirectory=${ObjectPath%$ObjectFilename}

echo "Object filename:   $ObjectFilename"
echo "Object directory:  $ObjectDirectory"
echo "Object path:       $ObjectPath"
echo ""

if [[ ! -d obj ]]; then mkdir --verbose obj; fi

# LINUX BUILDS #
if [[ $1 == "--linux" ]] || [[ $1 == "-l" ]]; then
    if [[ $OSTYPE == "linux-gnu" ]]; then
        if [ ! -d obj/linux ]; then
            mkdir --verbose obj/linux;
        fi
        if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
            if [[ -f obj/linux/* ]]; then
                rm --verbose -R obj/linux/*;
            fi
        fi
        echo "Building for Linux with G++"
        #=========================================================G++ COMMAND=========================================================#
            $(  g++ -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++                            \
                main.cpp                                                                                                          \
                -o $ObjectPath                                                                                                    \
                -D _LINUX_BUILD_=
            )
        #=============================================================================================================================#
        exitCode=$?
        if [ $exitCode != 0 ]; then
            echo "G++ exit code: $exitCode"
        else
            if [[ -f $ObjectPath.version ]]; then rm $ObjectPath.version; fi
            echo "$ObjectFilename: built with native G++ from $OSTYPE on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ObjectPath.version
            echo "$(cat $ObjectPath.version)"
        fi
        exit
    elif [[ $OSTYPE == "msys" ]]; then
        if [ ! -d obj/linux ]; then
            mkdir --verbose obj/linux;
        fi
        if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
            if [[ -f obj/linux/* ]]; then
                rm --verbose -R obj/linux/*;
            fi
        fi
        echo "Building for Linux with G++"
        #=========================================================G++ COMMAND=========================================================#
            $(  C:/msys64/mingw64/bin/g++.exe -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++  \
                main.cpp                                                                                                          \
                -o $ObjectPath                                                                                                    \
                -D _LINUX_BUILD_=
            )
        #=============================================================================================================================#
        exitCode=$?
        if [ $exitCode != 0 ]; then
            echo "G++ exit code: $exitCode"
        else
            if [[ -f $ObjectPath.version ]]; then rm $ObjectPath.version; fi
            echo "$ObjectFilename: built with MinGW/G++ from $OSTYPE on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ObjectPath.version
            echo "$(cat $ObjectPath.version)"
        fi
        exit
    fi

# WINDOWS BUILDS #
elif [[ $1 == "--windows" ]] || [[ $1 == "-w" ]]; then
    echo "Building for Windows from $OSTYPE with MinGW64/G++"

    if [[ $OSTYPE == "msys" ]]; then
        if [ ! -d obj/windows ]; then
            mkdir --verbose obj/windows
        fi
        if [[ $2 == "--clean" ]] || [[ $2 == "-c" ]]; then
            if [[ -f obj/windows/* ]]; then rm --verbose -R obj/windows/*; fi
        fi
    #=========================================================G++ COMMAND=========================================================#
        $(  C:/msys64/mingw64/bin/g++.exe -g -Wall -Wextra -march=native -std=c++1z -static -static-libgcc -static-libstdc++  \
            main.cpp                                                                                                          \
            -o $ObjectPath                                                                                                    \
            -D _WINDOWS_BUILD_=
        )
    #=============================================================================================================================#
        exitCode=$?
        if [ $exitCode != 0 ]; then
            echo "G++ exit code: $exitCode"
        else
            if [[ -f $ObjectPath.version ]]; then rm $ObjectPath.version; fi
            echo "$ObjectFilename: built with MinGW/G++ from $OSTYPE on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ObjectPath.version
            echo "$(cat $ObjectPath.version)"
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
            -o $ObjectPath                                                                                                    \
            -D _WINDOWS_BUILD_=
        )
    #=============================================================================================================================#
        exitCode=$?
        if [[ $exitCode != 0 ]]; then
            echo "G++ exit code: $exitCode"
        else
            if [[ -f $ObjectPath.version ]]; then rm $ObjectPath.version; fi
            echo "$ObjectFilename: built with MinGW/G++ from $OSTYPE on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $ObjectPath.version
            echo "$(cat $ObjectPath.version)"
        fi
        exit
    fi
else
    echo "Error: Unknown target operational system ${1#--}. Please specify either --linux or --windows as the first argument."
fi