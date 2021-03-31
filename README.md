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

**Delete all previous files in build directory**
- --clean  f
  -c

**Don't ask for confirmation when deleting files with --clean**
- --no-questions  
  -y

**Generate Assembler code instead of a binary**
- --asm-output

**Last parameters (required): source files and target path, including filename**
###### Example:
> ./build.sh --linux   main.cpp foo.cpp bar.cpp build/linux/main  
> ./build.sh --windows main.cpp foo.cpp bar.cpp build/windows/main.exe  

A \*.version file named after the generated object will be created in the target directory, containing build details  
(e.g.: *main.version* or *main.exe.version*).
