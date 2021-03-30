### Crossplatform build manager
A simple crossplatform build environment with a program that outputs its own build information.

###### Windows must contain MSys2 and MinGW:
###### https://www.msys2.org/

###### Linux must contain MinGW to compile for Windows:
###### http://mingw-w64.org/doku.php/download

## Currently accepted build.sh arguments
##### ** 1st parameter: ** Target operational system  
- --linux  
  -l
- --windows  
  -w
- --windows-from-linux  
  -wl
  
*(TODO: --linux-from-windows)*

##### ** 2nd parameter: ** Delete all previous files in build directory
- --clean
