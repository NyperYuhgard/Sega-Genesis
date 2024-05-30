@echo OFF

REM // build the ROM
call build

REM  // run fc against a Sonic 1 Rev 01 ROM
echo -------------------------------------------------------------
if exist Sega_TMSS.bin ( fc /b Sega_TMSS.bin Genesis_OS_ROM.bin
) else echo Sega_TMSS.bin does not exist, probably due to an assembly error

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause

