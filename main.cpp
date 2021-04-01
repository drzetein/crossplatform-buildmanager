#include <iostream>
#include <string>
#include <fstream>

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

int main()
{
    ssize_t _bufsize = 256;
    char _256charbuf[_bufsize];
    string programPath, programName;

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
        programPath = _256charbuf;
        // Read the path backwards until we hit a slash 
        int filenameSize = 0;
        string::reverse_iterator i;
        for ( i = programPath.rbegin();
              *i.base() != '\\' && *i.base() != '/';
              i++, filenameSize++
        );
        filenameSize--, i--;

        // Reverse the iterator to read the filename
        for (int j = 0; j < filenameSize; i--, j++) {
            programName+=*i.base();
        }
        
        // Remove the filename from the path to get the directory
        string programDirectory = programPath.erase(programPath.length() - filenameSize);

        // Read version file
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
