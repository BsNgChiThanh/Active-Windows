@echo off
color F0
mode con cols=98 lines=30
title Activate Windows 7 - https://github.com/BsNgChiThanh 
setlocal EnableExtensions EnableDelayedExpansion

:======================================================================================================================================================
:MAINMENU
cls
mode con cols=98 lines=30

echo.                                        
echo.                                     BSCK1. NGUYEN CHI THANH
echo.                     _________________________________________________________
echo.                    ^|                                                         ^|
Echo.                    ^|   [1] Windows 7 Enterprise E                            ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|   [2] Windows 7 Enterprise N                            ^|  
Echo.                    ^|                                                         ^|
Echo.                    ^|   [3] Windows 7 Enterprise                              ^|
echo.                    ^|                                                         ^|
echo.                    ^|   [4] Windows 7 Professional E                          ^| 
echo.                    ^|                                                         ^| 
echo.                    ^|   [5] Windows 7 ProfessionalN                           ^| 
echo.                    ^|                                                         ^| 
echo.                    ^|   [6] Windows 7 Professional                            ^| 
echo.                    ^|                                                         ^| 
echo.                    ^|   [7] Windows 7 Ultimate                                ^| 
echo.                    ^|                                                         ^| 
echo.                    ^|   [8] Windows 7 HomePremium                             ^| 
echo.                    ^|                                                         ^| 
Echo.                    ^|   [9] Thoat.                                            ^|
Echo.                    ^|_________________________________________________________^|
ECHO.            
choice /C:123456789 /N /M ".                 Nhap lua chon cua ban [1,2,3,4,5,6,7,8,9] : "
if errorlevel 9 goto:Exit
if errorlevel 8 goto:HomePremium
if errorlevel 7 goto:Ultimate
if errorlevel 6 goto:Professional
if errorlevel 5 goto:ProfessionalN
if errorlevel 4 goto:ProfessionalE
if errorlevel 3 goto:Enterprise
if errorlevel 2 goto:EnterpriseN
if errorlevel 1 goto:EnterpriseE


:=============================================
:Windows7
:=============================================
:HomePremium
cls
slmgr.vbs /ipk XBBVG-93K6Q-QX8F8-KYTC9-VWWWB
slmgr.vbs /ipk 6C663-7JMHW-8MBDG-QK46H-7CD6J
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU





:Ultimate
cls
slmgr.vbs /ipk XBBVG-93K6Q-QX8F8-KYTC9-VWWWB
slmgr.vbs /ipk 9DTGX-WBPXD-YH22T-RXDYX-CJM4C
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU



:Professional
cls
slmgr.vbs /ipk 7P8W4-7TC24-4XRTT-K74FV-DHR3M
slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU


:ProfessionalN
cls
slmgr.vbs /ipk WX66J-VK8XM-6HXJD-GYTPH-BP82T
slmgr.vbs /ipk MRPKT-YTG23-K7D7T-X2JMM-QY7MG
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU


:ProfessionalE
cls
slmgr.vbs /ipk WX66J-VK8XM-6HXJD-GYTPH-BP82T
slmgr.vbs /ipk W82YF-2Q76Y-63HXB-FGJG9-GF7QX
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU


:Enterprise
cls
slmgr.vbs /ipk WX66J-VK8XM-6HXJD-GYTPH-BP82T
slmgr.vbs /ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU


:EnterpriseN
cls
slmgr.vbs /ipk WX66J-VK8XM-6HXJD-GYTPH-BP82T
slmgr.vbs /ipk YDRBP-3D83W-TY26F-D46B2-XCKRJ
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU


:EnterpriseE
cls
slmgr.vbs /ipk WX66J-VK8XM-6HXJD-GYTPH-BP82T
slmgr.vbs /ipk C29WB-22CC8-VJ326-GHFJW-H9DH4
slmgr /skms kms.xspace.in
slmgr.vbs /xpr
slmgr /ato
echo Bam phim bat ki de ve menu chinh
:notsupported
:halt
pause >nul
goto:MAINMENU

