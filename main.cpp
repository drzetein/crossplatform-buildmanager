#include <iostream>
#include <string>
#include <fstream>

#define GetProgramDirectory main

// Get target system from compiler argument -D _<OS>_BUILD_
// These macros with _surrounding_underscores_ are only meant to be defined in the compiler
// checking for them in code may lead to undefined behaviour

// Therefore, use only LINUX_BUILD or WINDOWS_BUILD to define OS specific instructions
#define LINUX_BUILD
#define WINDOWS_BUILD

#ifdef _LINUX_BUILD_
    #undef WINDOWS_BUILD
#endif

#ifdef _WINDOWS_BUILD_
    #undef LINUX_BUILD
#endif

#ifdef LINUX_BUILD
    #include <unistd.h>
    // Work around undefined behaviour from Windows instructions
    #define GetModuleFileName 0;
#endif

#ifdef WINDOWS_BUILD
    #include <libloaderapi.h>
    // Work around undefined behaviour from Linux instructions
    #define readlink 0;
#endif

using namespace std;

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
int GetProgramDirectory(int argc, char **argv=(char**)" ")
{
    #pragma GCC diagnostic pop

    ssize_t _bufsize = 256;
    char _256charbuf[_bufsize];
    string programDirectory;
    string programName;

    // Get program path
    #ifdef LINUX_BUILD
        _bufsize = readlink("/proc/self/exe", _256charbuf, _bufsize);
    #endif
    #ifdef WINDOWS_BUILD
        _bufsize = GetModuleFileName(NULL, _256charbuf, _bufsize);
    #endif

    if (!_bufsize) {
        cout << "Error getting path to the program" << endl;
    } else {
        // Read the path backwards until we hit a slash to get the length of the filename
        programDirectory = _256charbuf;
        string::reverse_iterator i;
        int filenameSize = 0;
        for ( i = programDirectory.rbegin();
              *i.base() != '\\' && *i.base() != '/';
              i++, filenameSize++
        );
        filenameSize--, i--;

        // Reverse the iterator to read the filename
        for (int j = 0; j < filenameSize; i--, j++) {
            programName+=*i.base();
        }

        // Remove the filename from the path to get the directory
        programDirectory.erase(programDirectory.length() - filenameSize);

        // Use the directory string to open local files
        ifstream version(programDirectory + programName + ".version", ios::in);
        if (version.is_open()) { 
            version.getline(_256charbuf, 256, '\0');
            cout << _256charbuf;
            version.close();
            return 0;
        }
    }
    return -1;
}