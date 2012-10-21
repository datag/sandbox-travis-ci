#include <windows.h>
#include "config.h"

int APIENTRY WinMain(HINSTANCE	hInstance,
					 HINSTANCE	hPrevInstance,
					 LPSTR		lpCmdLine,
					 int		nCmdShow)
{
	MessageBox(NULL,
		"This is just a test",
		"Test " JAVA_APP_NAME,
		MB_OK);
	
	return 0;
}


