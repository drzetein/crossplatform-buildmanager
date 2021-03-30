### Crossplatform Build Manager
*A simple crossplatform build environment, with a program that outputs its own build information.*

###### Windows must contain MSys2 and MinGW:
###### https://www.msys2.org/

###### Linux must contain MinGW to compile for Windows:
###### http://mingw-w64.org/doku.php/download

## Currently accepted build.sh arguments
#####  1st parameter (required):  Target operational system  
- --linux  
  -l
- --windows  
  -w

#####  2nd parameter:  Delete all previous files in build directory
- --clean

#####  Last parameter (required): path to the generated object/executable, including filename
**Example:**
> ./build.sh --linux   obj/linux/main
> ./build.sh --windows obj/windows/main.exe

A \*.version file containing build details will be created in the target directory, named after the generated object
(e.g.: *main.version* or *main.exe.version*).
