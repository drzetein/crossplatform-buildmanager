#include <iostream>
#include <string>
#include <fstream>

#define ExecutableDirectory main
// Get target system from compiler argument -D <OS>_BUILD
// These macros with "_surrounding_underscores_" are only meant to be defined by the compiler
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

int ExecutableDirectory(int argc, char **argv=(char**)"")
{
    if (argc > 1) {
        // Get program arguments
        string argvx = argv[1];
        argvx.clear();
    }

    size_t _bufsize = 256;
    char _256charbuf[_bufsize];
    string executableDirectory;

    // Get executable path
    #ifdef LINUX_BUILD
        _bufsize = readlink("/proc/self/exe", _256charbuf, _bufsize);
    #endif
    #ifdef WINDOWS_BUILD
        _bufsize = GetModuleFileName(NULL, _256charbuf, _bufsize);
    #endif

    if (!_bufsize) {
        cout << "Error getting path to the executable" << endl;
    } else { 
        // Remove filename from path to get the executable's directory
        executableDirectory = _256charbuf;
        string::reverse_iterator i;
        int filenameSize = 0;
        for (i=executableDirectory.rbegin(); *i.base() != '\\' && *i.base().base()!= '/'; i++, filenameSize++);
        filenameSize--;
        executableDirectory.erase(executableDirectory.length()-filenameSize);
        cout << executableDirectory;
        // Use directory string to open local files
        ifstream version(executableDirectory + "main.version", ios::in);
        if (version.is_open()) { 
            version.getline(_256charbuf, 256, '\0');
            cout << _256charbuf;
            version.close();
        }
        else
        {   version.open(executableDirectory + "main.exe.version", ios::in);
            if (version.is_open()) { 
                version.getline(_256charbuf, 256, '\0');
                cout << _256charbuf;
                version.close();
            } 
        }
    return 0;
    }
}