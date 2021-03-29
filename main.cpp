#include <iostream>
#include <string>
#include <fstream>

// Get target system from compiler argument -D <OS>_BUILD
// These macros without a "_leading_underscore" are only meant to be defined by the compiler
// checking for them in code may lead to undefined behaviour

// Therefore, use only _LINUX_BUILD or _WINDOWS_BUILD to define OS specific instructions

#define _LINUX_BUILD
#define _WINDOWS_BUILD

#ifdef LINUX_BUILD
    #undef _WINDOWS_BUILD
#endif

#ifdef WINDOWS_BUILD
    #undef _LINUX_BUILD
#endif

#ifdef _LINUX_BUILD
    #include <unistd.h>
    // Work around undefined behaviour
    #define GetModuleFileName 0;
#endif

#ifdef _WINDOWS_BUILD
    #include <libloaderapi.h>
    // Work around undefined behaviour
    #define readlink 0;
#endif

using namespace std;

int main(int argc, char **argv)
{

    if (argc>1) {
        // Get program arguments
        string argv1=argv[1];
        argv1.clear();
    }
    
    size_t _bufsize = 256;
    char _256charbuf[_bufsize];
    string executableDirectory;
    #ifdef _LINUX_BUILD
        // Get executable path (Linux)
        _bufsize = readlink("/proc/self/exe", _256charbuf, _bufsize);
        if (!_bufsize) {
    #endif

    #ifdef _WINDOWS_BUILD
        // Get executable path (Windows)
        _bufsize = GetModuleFileName(NULL, _256charbuf, _bufsize);
        if (!_bufsize) {
    #endif
        cout << "Error getting path to the executable" << endl;
    } else { 
        // Remove filename from path to get the executable's directory
        executableDirectory = _256charbuf;
        string::reverse_iterator i;
        int filenameSize = 0;
        for (i=executableDirectory.rbegin(); *i.base().base() != '\\' && *i.base().base()!= '/'; i++, filenameSize++);
        filenameSize--;
        executableDirectory.erase(executableDirectory.length()-filenameSize);
        // Use directory string to open local files
        ifstream version(executableDirectory + "version", ios::in);
        if (version.is_open()) { 
            version.getline(_256charbuf, 256, '\0');
            cout << _256charbuf;
            version.close();
        }
    }
    return 0;
}