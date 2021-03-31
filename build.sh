#!/bin/bash
if [[ $# < 3 ]]; then echo "Expected at least 3 arguments"; exit 1; fi

echo "Working directory: $(pwd)"
Arguments=$@
Files=$(echo $Arguments | sed -e "s/-[a-zA-Z\-]*//g")
SourceFiles=${Files% *}
BuildPath=${Files##* }
BuildFilename=${BuildPath##*/}
BuildDirectory=${BuildPath%%$BuildFilename}
ReturnFromBuildDirectory=$(echo $BuildDirectory | sed -e "s/[a-zA-Z0-9]*\//..\//g")

echo "Source files:   $SourceFiles"
echo "Build directory:   $BuildDirectory"
echo "Build filename:    $BuildFilename"

if [[ ! -d $BuildDirectory ]]; then
    mkdir -p --verbose $BuildDirectory;
fi

if [[ $2 == "--clean" || $2 == "-c" ]]; then
    if [[ $3 == "--no-questions" || $3 == "-y" ]]; then
        questions=""
    else
        questions="-i"
    fi
    FilesToDelete=$(ls $BuildDirectory)
    if [[ $FilesToDelete != '' ]]; then
        cd $BuildDirectory
        echo "Working directory: $(pwd)"
        rm -r --verbose $questions $FilesToDelete
        echo "Returning $ReturnFromBuildDirectory"
        cd $ReturnFromBuildDirectory
    fi
    echo ''
fi

# COMMON ARGUMENTS #
CommonArguments="-g -Wall -Wextra -march=native -static -static-libgcc -static-libstdc++"
CommonLinuxArguments="-std=gnu++17"
CommonWindowsArguments="-std=c++17"

# LINUX BUILD #
if [[ $1 == "--linux" ]] || [[ $1 == "-l" ]]; then
    echo "Building $BuildFilename for Linux from $OSTYPE"
    #==========================================================G++ COMMAND==========================================================#
    if [[ $OSTYPE == "linux-gnu" ]]; then
        $(  g++ $CommonArguments $CommonLinuxArguments                                                                          \
            $SourceFiles                                                                                                        \
            -o $BuildPath                                                                                                       \
            -D _LINUX_BUILD_=
        )
    elif [[ $OSTYPE == "msys" || $OSTYPE == "cygwin" ]]; then
        $(  C:/msys64/usr/bin/g++.exe $CommonArguments $CommonLinuxArguments                                                    \
            $SourceFiles                                                                                                        \
            -o $BuildPath                                                                                                       \
            -D _LINUX_BUILD_=
        )
    #===============================================================================================================================#
    fi
    exitCode=$?

# WINDOWS BUILD #
elif [[ $1 == "--windows" ]] || [[ $1 == "-w" ]]; then
    echo "Building $BuildFilename for Windows from $OSTYPE"
    if [[ $OSTYPE == "msys" || $OSTYPE == "cygwin" ]]; then
    #==========================================================G++ COMMAND==========================================================#
        $(  C:/msys64/mingw64/bin/g++.exe $CommonArguments $CommonWindowsArguments                                              \
            "$SourceFiles"                                                                                                      \
            -o "$BuildPath"                                                                                                     \
            -D _WINDOWS_BUILD_=
        )
    elif [[ $OSTYPE == "linux-gnu" ]]; then
        $(  x86_64-w64-mingw32-g++ $CommonArguments $CommonWindowsArguments                                                     \
            $SourceFiles                                                                                                        \
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