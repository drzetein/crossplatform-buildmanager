## Cross-Platform Build Manager
A simple cross-platform build environment, with a program that outputs its own build information.

###### Windows must contain MSys2 and MinGW:
###### https://www.msys2.org/

###### Linux must contain MinGW to compile for Windows:
###### http://mingw-w64.org/doku.php/download

## Currently accepted build.sh arguments
**1st parameter (required):  Target operational system**
- --linux  
  -l
- --windows  
  -w

**2nd parameter (optional):  Delete all previous files in build directory**
- --clean  
  -c

**3rd parameter (optional): Don't ask for confirmation when deleting files with --clean**
- --no-questions  
  -y

**Last parameters (required): source files and path to the generated binary, including filename**
###### Example:
> ./build.sh --linux   main.cpp foo.cpp bar.cpp obj/linux/main  
> ./build.sh --windows main.cpp foo.cpp bar.cpp obj/windows/main.exe  

A \*.version file named after the generated object will be created in the target directory, containing build details  
(e.g.: *main.version* or *main.exe.version*).
