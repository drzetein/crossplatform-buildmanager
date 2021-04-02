#!/bin/bash
export LANG=C
if (( $# < 2 )); then echo "Expected at least 2 arguments, received $#"; exit 1; fi
if [[ $OSTYPE=="linux-gnu" ]]; then CurrentSystem="linux";
elif [[ $OSTYPE=="msys" || $OSTYPE=="cygwin" ]]; then CurrentSystem="windows";
else echo "Error: Unsupported system $OSTYPE.
You can try to set the OSTYPE environment variable to a supported system name.
Supported systems are: 'linux-gnu' 'msys' 'cygwin'
";  exit -1
fi

echo "Working directory: $(pwd)"

# Get common build settings from build.config #
SourceFiles=$(echo $(cat build.config) | grep -oP 'CommonSourceFiles=\"\K.*?(?=\")')
CommonArguments=$(echo $(cat build.config) | grep -oP 'CommonArguments=\"\K.*?(?=\")')
CommonLibraries=$(echo $(cat build.config) | grep -oP 'CommonLibraries=\"\K.*?(?=\")')
CopyToBuildFolder=$(echo $(cat build.config) | grep -oP 'CopyToBuildFolder=\"\K.*?(?=\")')

# Get system specific build settings from build.config #
if [[ $CurrentSystem == "linux" ]]; then
    SourceFilesSys=$(echo $(cat build.config) | grep -oP 'SourceFilesLinux=\"\K.*?(?=\")')
    ArgumentsSys=$(echo $(cat build.config) | grep -oP 'ArgumentsLinux=\"\K.*?(?=\")')
    LibrariesSys=$(echo $(cat build.config) | grep -oP 'LibrariesLinux=\"\K.*?(?=\")')
    BuildPath=$(echo $(cat build.config) | grep -oP 'BuildPathLinux=\"\K.*?(?=\")')
elif [[ $CurrentSystem == "windows" ]]; then
    SourceFilesSys=$(echo $(cat build.config) | grep -oP 'SourceFilesWindows=\"\K.*?(?=\")')
    ArgumentsSys=$(echo $(cat build.config) | grep -oP 'ArgumentsWindows=\"\K.*?(?=\")')
    LibrariesSys=$(echo $(cat build.config) | grep -oP 'LibrariesWindows=\"\K.*?(?=\")')
    BuildPath=$(echo $(cat build.config) | grep -oP 'BuildPathWindows=\"\K.*?(?=\")')
fi
BuildDirectory=${BuildPath%/*}
BuildFilename=${BuildPath##*/}
ReturnFromBuildDirectory=$(echo $BuildDirectory | sed -re 's/[^\/].*\//..\//g' -re 's/\/.*[^\/]/\/../g')

echo "Target build directory: $BuildDirectory"
echo "Target filename: $BuildFilename"

if [ ! -d $BuildDirectory ]; then
    mkdir -p --verbose $BuildDirectory
fi

# Clean task #
if [[ $@ == *" --clean"* || $@ == *" -c"* ]]; then
    # Prevent accidentally cleaning source directory #
    if   [[ $BuildDirectory == '' ]]; then
        echo "Error: refused to run --clean inside source directory."
        exit 1
    elif [[ $(readlink -f "$BuildDirectory") == $(pwd) ]]; then
        echo "Error: refused to run --clean inside source directory."
        exit 1
    # Define if confirmation is required to clear build directory #
    elif [[ "$@" == *" --no-questions"* || "$@" == *" -y"* ]]; then
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
        echo "Working directory: $(pwd)"
    fi
fi

# Check if compiler should output ASM #
if [[ $@ == *" --asm-output"* ]]; then 
    AssemblerOutput="-O2 -S -fverbose-asm"
    BuildPath="$BuildPath.s"
else
    AssemblerOutput=""
fi

#=============#
# Linux Build #
#=============#
if [[ $1 == "--linux" || $1 == "-L" ]]; then
    echo "Building $BuildFilename for Linux from $OSTYPE"
    Sources="$SourceFilesSys $SourceFiles"
    BuildArgs="$AssemblerOutput $CommonArguments $LinuxArguments $Sources -o $BuildPath $CommonLibraries $OSlibraries -D _LINUX_BUILD_="
    if [[ $OSTYPE == "linux-gnu" ]]; then
        $(g++ $BuildArgs)
    elif [[ $OSTYPE == "msys" || $OSTYPE == "cygwin" ]]; then
        $(C:/msys64/usr/bin/g++.exe $BuildArgs)
    fi
    exitCode=$?
    if [ -f "$BuildPath.exe" ]; then 
        mv "$BuildPath.exe" "$BuildPath"
    fi

#===============#
# Windows Build #
#===============#
elif [[ $1 == "--windows" ]] || [[ $1 == "-W" ]]; then
    echo "Building $BuildFilename for Windows from $OSTYPE"
    Sources="$SourceFilesSys $SourceFiles"
    BuildArgs="$AssemblerOutput $CommonArguments $WindowsArguments $Sources -o $BuildPath $CommonLibraries $OSlibraries -D _LINUX_BUILD_="
    if [[ $CurrentSystem == "windows" ]]; then
        $(C:/msys64/mingw64/bin/g++.exe $BuildArgs)
    elif [[ $CurrentSystem == "linux" ]]; then
        $(x86_64-w64-mingw32-g++ $BuildArgs)
    fi
    exitCode=$?
else
    echo "Error: Unknown target OS option: '${1//-/}'
Please specify either --linux (-L) or --windows (-W) as the first argument."
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