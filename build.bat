
mode 400,600
GOTO %1
exit 2

:test
powershell.exe ./Execute-Pester.ps1


:: report success
exit 0
