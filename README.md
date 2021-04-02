## Cross-Platform Build Manager
A simple cross-platform build environment, with a program that outputs its own build information.

###### Windows must contain MSys2 and MinGW:
###### https://www.msys2.org/

###### Linux must contain MinGW to compile for Windows:
###### http://mingw-w64.org/doku.php/download

## Currently accepted build.sh arguments
##### First parameter (required):  Target operational system
- --linux  
  -L
- --windows  
  -W

##### Clean build directory before compiling
- --clean  
  -c

##### Don't ask for confirmation when cleaning
- --no-questions  
  -y

##### Generate Assembler file instead of a binary
- --asm-output

##### Last parameters (required): source files and target path, including filename
###### Example:
> ./build.sh --linux   main.cpp foo.cpp bar.cpp build/linux/main  
> ./build.sh --windows main.cpp foo.cpp bar.cpp build/windows/main.exe  

A \*.version file named after the generated object will be created in the target directory, containing build details  
(e.g.: *main.version* or *main.exe.version*).

## Settings ##
The file **build.config** is used to define custom build and post-build configurations and tasks. The options are given in this format:
> OptionName="some stuff"

The build script will read everything inside quotes, if it is a valid option.
Currently accepted options are:

**CommonArguments**  
Arguments passed to G++ regardless of the target OS.

**LinuxArguments**  
Arguments passed to G++ when building for Linux.

**WindowsArguments**  
Arguments passed to G++ when building for Windows.

**CommonLibraries**  
Libraries to be linked by G++ regardless of the target OS. In the format -l*library*

**LinuxLibraries**  
Libraries to be linked by G++ when building for Linux. In the format -l*library*

**WindowsLibraries**  
Libraries to be linked by G++ when building for Windows. In the format -l*library*

**CopyToBuildFolder**  
Files or folders to be copied to the build directory if the build was successful.
