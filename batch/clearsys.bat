@echo off
　　color 1e
　　for /r c:\ %%a in (*.tmp *.chk *.gid *._mp *.old *.bak *.log) do del /f /s /q "%%a"
　　for /r c:\windows\temp %%a in (*.*) do del /f /s /q "%%a"
　　for /r c:\windows\Prefetch %%a in (*.*) do del /f /s /q "%%a"
　　for /r %userprofile%\AppData\Local\Temp %%a in (*.*) do del /f /s /q "%%a"
　　for /r "%localappdata%\Microsoft\Windows\Temporary Internet Files" %%a in (*.*) do del /f /s /q "%%a"
　　for /r %localappdata%\Microsoft\Windows\History %%a in (*.*) do del /f /s /q "%%a"
　　for /r %appdata%\Microsoft\Windows\Cookies %%a in (*.*) do del /f /s /q "%%a"
　　for /r %windir%\SoftwareDistribution\Download %%a in (*) do del /f /s /q "%%a"
　　for /r "%windir%\Downloaded Program Files" %%a in (*) do del /f /s /q "%%a"
　　for /r %windir%\System32\LogFiles %%a in (*) do del /f /s /q "%%a"
　　del /f /s /q %systemdrive%\hiberfil.sys
　　pause & exit 