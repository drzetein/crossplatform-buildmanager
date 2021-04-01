#!/bin/bash
if [[ $# < 3 ]]; then echo "Expected at least 3 arguments"; exit 1; fi
if [[ $OSTYPE != "linux-gnu" && $OSTYPE != "msys" && $OSTYPE != "cygwin" ]]; then
    echo "Error: Unsupported system $OSTYPE.
You can try to set the OSTYPE environment variable to a supported system name.
Supported systems are: 'linux-gnu' 'msys' 'cygwin'
";  exit -1
fi

echo "Working directory: $(pwd)"

# Setup this script's arguments #
Arguments=" $@"
Files=$(echo $Arguments | sed -e "s/-[a-zA-Z\-]* //g")
SourceFiles=${Files% *}
BuildPath=${Files##* }
BuildFilename=${BuildPath##*/}
BuildDirectory=${BuildPath%%$BuildFilename}

ReturnFromBuildDirectory=$(echo $BuildDirectory | sed -e "s/[^\/]*\?\//..\//g" )

# Get common build settigs from build.config #
CopyToBuildFolder=$(echo $(cat build.config) | grep -oP "CopyToBuildFolder=\"\K.*?(?=\")")
CommonArguments=$(echo $(cat build.config)   | grep -oP "CommonArguments=\"\K.*?(?=\")")
CommonLibraries=$(echo $(cat build.config)   | grep -oP "CommonLibraries=\"\K.*?(?=\")")

echo "Source files:      $SourceFiles"
echo "Build directory:   $BuildDirectory"
echo "Build filename:    $BuildFilename"
echo "Common arguments:  \"$CommonArguments\""
echo "Common libraries:  \"$CommonLibraries\""

if [[ ! -d $BuildDirectory && ! $BuildDirectory == '' ]]; then
    mkdir -p --verbose $BuildDirectory;
fi

if [[ "$Arguments" == *" --clean"* || "$Arguments" == *" -c"* ]]; then
    # Prevent accidentally cleaning in source directory #
    if   [[ $BuildDirectory == '' ]]; then
        echo "Error: refused to run --clean inside source directory."
        exit 1
    elif [[ $(readlink -f "$BuildDirectory") == $(pwd) ]]; then
        echo "Error: refused to run --clean inside source directory."
        exit 1
    # Should any questions be asked before deleting? #
    elif [[ "$Arguments" == *" --no-questions"* || "$Arguments" == *" -y"* ]]; then
        Questions=""
    else
        Questions="-i"
    fi
    # Clean build directory #
    FilesToDelete=$(ls $BuildDirectory)
    if [[ $FilesToDelete != '' ]]; then
        cd $BuildDirectory
        echo "Working directory: $(pwd)"
        rm -r --verbose $Questions $FilesToDelete
        echo "Returning $ReturnFromBuildDirectory"
        cd $ReturnFromBuildDirectory
    fi
    echo ''
fi

# Check if compiler should output ASM #
if [[ "$Arguments" == *" --asm-output"* ]]; then 
    AssemblerOutput="-O2 -S -fverbose-asm"
    BuildPath="$BuildPath.s"
else
    AssemblerOutput=""
fi

#=============#
# LINUX BUILD #
#=============#
if [[ $1 == "--linux" || $1 == "-l" ]]; then
    echo "Building $BuildFilename for Linux from $OSTYPE"
    # Get Linux specific build settigs from build.config #
    LinuxArguments=$(echo $(cat build.config) | grep -oP 'LinuxArguments=\"\K.*?(?=\")')
    LinuxLibraries=$(echo $(cat build.config) | grep -oP 'LinuxLibraries=\"\K.*?(?=\")')
    echo "Linux arguments:   \"$LinuxArguments\""
    echo "Linux libraries:   \"$LinuxLibraries\""
    #==========================================================G++ COMMAND==========================================================#
    if [[ $OSTYPE == "linux-gnu" ]]; then
        $(  g++ $AssemblerOutput $CommonArguments $LinuxArguments                                                               \
            $SourceFiles                                                                                                        \
            -o $BuildPath                                                                                                       \
            $CommonLibraries                                                                                                    \
            $LinuxLibraries                                                                                                     \
            -D _LINUX_BUILD_=
        )
    elif [[ $OSTYPE == "msys" || $OSTYPE == "cygwin" ]]; then
        $(  C:/msys64/usr/bin/g++.exe $AssemblerOutput $CommonArguments $LinuxArguments                                         \
            $SourceFiles                                                                                                        \
            -o $BuildPath                                                                                                       \
            $CommonLibraries                                                                                                    \
            $LinuxLibraries                                                                                                     \
            -D _LINUX_BUILD_=
        )
    #===============================================================================================================================#
    fi
    exitCode=$?
    if [ -f "$BuildPath.exe" ]; then 
        mv "$BuildPath.exe" "$BuildPath"
    fi

#===============#
# Windows Build #
#===============#
elif [[ $1 == "--windows" ]] || [[ $1 == "-w" ]]; then
    echo "Building $BuildFilename for Windows from $OSTYPE"
    # Get windows specific build settigs from build.config #
    WindowsArguments=$(echo $(cat build.config) | grep -oP "WindowsArguments=\"\K.*?(?=\")")
    WindowsLibraries=$(echo $(cat build.config) | grep -oP "WindowsLibraries=\"\K.*?(?=\")")
    echo "Windows arguments: \"$WindowsArguments\""
    echo "Windows libraries: \"$WindowsLibraries\""
    if [[ $OSTYPE == "msys" || $OSTYPE == "cygwin" ]]; then
    #==========================================================G++ COMMAND==========================================================#
        $(  C:/msys64/mingw64/bin/g++.exe $AssemblerOutput $CommonArguments $WindowsArguments                                   \
            $SourceFiles                                                                                                        \
            -o $BuildPath                                                                                                       \
            $CommonLibraries                                                                                                    \
            $WindowsLibraries                                                                                                   \
            -D _WINDOWS_BUILD_=
        )
    elif [[ $OSTYPE == "linux-gnu" ]]; then
        $(  x86_64-w64-mingw32-g++ $AssemblerOutput $CommonArguments $WindowsArguments                                          \
            $SourceFiles                                                                                                        \
            -o $BuildPath                                                                                                       \
            $CommonLibraries                                                                                                    \
            $WindowsLibraries                                                                                                   \
            -D _WINDOWS_BUILD_=
        )
    #===============================================================================================================================#
    fi
    exitCode=$?
else
    echo "Error: Unknown target operational system ${1#--}. Please specify either --linux or --windows as the first argument."
    exit 1
fi

# Post-build tasks #
if [[ $exitCode != 0 ]]; then
    echo "G++ exit code: $exitCode"
    exit $exitCode
else
    if [[ $CopyToBuildFolder != '' ]]; then for file in $CopyToBuildFolder; do cp -r $CopyToBuildFolder $BuildDirectory; done; fi
    echo "$BuildFilename: built from $OSTYPE with G++ on $(date +%F), at $(date +%T) (GMT$(date +%Z))" >> $BuildPath.version
    echo "$(cat $BuildPath.version)"
    exit 0
fi
