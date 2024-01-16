@echo off
chcp 65001
mode 117,29
:ippinger
cls
title .                              		+ CHULY + IP PINGER
echo.
echo.
echo                                     [7;31m ██████╗░██╗███╗░░██╗░██████╗░███████╗██████╗░[0m
echo                                     [7;31m ██╔══██╗██║████╗░██║██╔════╝░██╔════╝██╔══██╗[0m  
echo                                     [7;31m ██████╔╝██║██╔██╗██║██║░░██╗░█████╗░░██████╔╝[0m
echo                                     [7;31m ██╔═══╝░██║██║╚████║██║░░╚██╗██╔══╝░░██╔══██╗[0m
echo                                     [7;31m ██║░░░░░██║██║░╚███║╚██████╔╝███████╗██║░░██║[0m
echo                                     [7;31m ╚═╝░░░░░╚═╝╚═╝░░╚══╝░╚═════╝░╚══════╝╚═╝░░╚═╝[0m
echo.   
echo                                      [40;31m╔═════════════[ [40;37m  CRIAS   [0m[40;31m]═════════════╗
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m║         [0m[[31mCrias[0m] [104m .gg/criasacademy   [0m[40;37m  [40;31m║                               
echo                                      [40;31m║        [40;37m [[31mDiscord[0m]  [7;31m CHULY2005 [0m[40;37m        [40;31m║                     
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m║[40;37m         oye!   [7;31mPRUEBA[0m UNA IP          [40;31m║
echo                                      [40;31m║                                       [40;31m║
echo                                      [40;31m╚═══════════════════════════════════════╝
echo.
set /p SPEED= [37m[root@[31mCHULY[37m] Velocidad de solicitudes: (1 = Rápido / 2 = Predeterminado / 3 = Bajo): 
if %SPEED% == 1 goto next
if %SPEED% == 2 goto next
if %SPEED% == 3 goto next
if %SPEED% == nul goto bad
:bad
echo.
echo [37m[root@[31mINFO[37m] ¡error! Elige un número entre (1, 2, 3)
timeout /t 2 /nobreak > nul
goto ippinger
echo.
:next
set /p IP= [37m[root@[31mCHULY[37m] Ponga la ip! : 
echo.
:ipping
PING -n %SPEED% %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto downed
IF NOT ERRORLEVEL 1 goto connected
:connected
echo [37m[root@[31mCHULY[37m] : [102m CONNECTED [0m to [[92m %IP% [0m] [[92m+[0m] Status : [102m ONLINE [0m BY CHULY2005
echo.
goto ipping
:downed
echo [37m[root@[31mCHULY[37m] : [41m DOWNED [0m to [[31m %IP% [0m] [[31m-[0m] Status : [41m OFFLINE [0m BY CHULY2005
echo.
goto ipping