
#include <windows.h>
#include <process.h>
#include <processthreadsapi.h>

#ifdef LIVE_MAIN


s32 live_reloaded = 0;
s32 live_initialized = 0;

void liveInit(s32 argc, char **argv, const char* folder)
{
	live_reloaded =0;
	live_initialized = 0;
	printf("LIVE is ON\n");


}
void liveTick();

#endif
extern s32 live_initialized;
extern s32 live_reloaded;
#ifdef LIVE_STUDIO



void liveTick()
{

    #if defined(BUILD_EDITORS)
	if (!live_initialized)
	{
		AllocConsole();
		live_initialized = 1;
	}

	if (live_reloaded > 0)
	{
		OutputDebugStringA("LIVE HOT RELOADED!"); 
		OutputDebugStringA("\n");
		STARTUPINFO si;
		PROCESS_INFORMATION pi;

		ZeroMemory(&si, sizeof(si));
		si.cb = sizeof(si);
		ZeroMemory(&pi, sizeof(pi));
		
		//LPTSTR szCmdline[] = _tcsdup(TEXT("..\\pactic.bat road.lua -o road_packed.tic -s -c -t"));
		CreateProcessA(NULL, "..\\pactic.bat road.lua -o road_packed.tic -s -c -t", NULL, NULL, 0, 0, NULL, NULL,  &si, &pi);
		WaitForSingleObject(pi.hProcess, INFINITE);
		CloseHandle(pi.hProcess);
		CloseHandle(pi.hThread);
//		_spawnl(_P_NOWAIT, "../pactic.bat")
		//	system("..\\pactic.bat -s -c road.lua -o road.lua.tic");
		live_reloaded = 0;

	}
	
    #endif
	
}
#endif