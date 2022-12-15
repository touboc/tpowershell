@echo off
setlocal enableDelayedExpansion

REM how to loop the counter
for /l %%x in (2,1,5) do (
	echo d:\temp\%%x.vbs
	set chk=NG
REM how to loop the folder
	for %%f in ("d:\temp\*") do (
		fc /b d:\temp\basic.bmp %%f > nul
		if !errorlevel! equ 0 (
			set chk=OK
		)
		echo "Result is !chk!" 
	)
)
