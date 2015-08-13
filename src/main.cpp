#include <iostream>
#include <string>

using namespace std;

const string BIN_NAME = "xim";

int printHelpMessage() 
{
	cout << "\n"
	     << "Usage: " << BIN_NAME << " <command> [<arguments>]\n"
	     << "\n"
	     << "The commands are:\n"
	     << "    help    show the help message\n"
	     << "    build   compile packages and dependencies\n"
	     << endl;
	return 0;
}

int main(int argc, char* argv[])
{
	if (argc==1) {
		printHelpMessage();
		return 0;
	}

	string command = argv[1];
	if (command.compare("help")==0){
		printHelpMessage();
	}
	else if (command.compare("build")==0){
		//build a binary
	}
	else {
		cout << "TODO!" << endl;
	}

    return 0;
}
