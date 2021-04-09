#include <iostream>
#include <fstream>

/**
 * Get target system from the compiler-defined macro _<OS>_BUILD_
 * 
 * These macros with _surrounding_underscores_ are only meant to be defined in the compiler
 * checking for them in code may lead to undefined behaviour
 *
 * Therefore, use only LINUX_BUILD or WINDOWS_BUILD to define OS specific instructions
 **/

#define LINUX_BUILD
#define WINDOWS_BUILD

#ifdef _LINUX_BUILD_
    #undef WINDOWS_BUILD
#endif

#ifdef _WINDOWS_BUILD_
    #undef LINUX_BUILD
#endif

using namespace std;

int main(int argc, char** argv)
{   // Read version file
    string ProgramPath;
    if(argc) ProgramPath = argv[0];
    ifstream version(ProgramPath + ".version", ios::in);
    if (version.is_open()) {
        while(char c = version.get())
            if (c!=-1) cout << c;
    }
    return 1;
}
