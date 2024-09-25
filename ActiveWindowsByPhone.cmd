chcp 65001 >nul
@echo off
title ACTIVATE WINDOWS 7 8 8.1 10 11 By Phone - Copyright (C) Dominic Savio. All rights reserved.
mode con: cols=115 lines=40
chcp 65001 >nul
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo  Run CMD as Administrator...
    goto goUAC 
) else (
 goto goADMIN )

:goUAC
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:goADMIN
    pushd "%CD%"
    CD /D "%~dp0"
cls
type Text\Win\WinByPhone.txt
color f0
ver
@echo.
@echo 1. Dang kiem tra ban quyen
cscript //nologo %windir%\system32\slmgr.vbs /xpr |findstr "permanently"  >nul
if %errorlevel%==0  (
@echo                                 === WINDOWS DA KICH HOAT BAN QUYEN VINH VIEN ===
pause >nul
exit
) else (
@echo                              === WINDOWS CHUA DUOC KICH HOAT BAN QUYEN VINH VIEN ===
@echo.
@echo Nhan phim bat ky de tiep tuc kich hoat...
pause >nul
goto begin
)

:begin
@echo.
set /p key= 2. Nhap Key : 
@echo.

@echo 3. Dang go bo key cu ra khoi may
cscript //nologo %windir%\system32\slmgr.vbs /upk

@echo 4. Dang xoa may chu KMS neu co
cscript //nologo %windir%\system32\slmgr.vbs /ckms

@echo 5. Dang xoa key trong Registry
cscript //nologo %windir%\system32\slmgr.vbs /cpky

@echo 6. Dang cai dat key moi
cscript //nologo %windir%\system32\slmgr.vbs /ipk %key%

@echo 7. Hay copy day so trong Installations ID ben duoi de Get Confirmation ID
cscript //nologo %windir%\system32\slmgr.vbs /dti

@echo 8. Nhap Confirmation ID
@echo Nhan phim bat ky de nhap CID
pause >nul
slui 4
@echo.
@echo Nhan phim bat ky de tiep tuc
pause >nul

@echo 9. Dang kiem tra ban quyen
cscript //nologo %windir%\system32\slmgr.vbs /xpr |findstr "permanently" >nul
if %errorlevel%==0  (
@echo   === Da kich hoat ban quyen VINH VIEN ===
@echo %key% >Key_Win.txt
start Key_Win.txt
pause >nul
exit
) else (
@echo   === Loi khong mong muon hoac Step 3 - CID khong chinh xac ===
@echo       === Kich hoat khong thanh cong. Vui Long thu lai! ===
@echo.
@echo Nhan phim bat ky de thu kich hoat lai...
pause >nul
exit
)

