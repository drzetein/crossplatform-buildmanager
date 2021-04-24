#include <iostream>
#include <fstream>

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
    return 0;
}
