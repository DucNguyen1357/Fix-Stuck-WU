::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MAE+/Fb4I5/jH5umIrAMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsGAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIWIQMUfxCXP2D6MbwS7Ofs/KqyskkcQOdf
::eg0/rx1wNQPfEVWB+kM9LVsJDCKLJCuJEqAf46jM5uSDrVoOFNcvfI7P39Q=
::fBEirQZwNQPfEVWB+kM9LVsJDCKLJCuJEqAf46jM5uSDrVoOFNcvfI7P39Q=
::cRolqwZ3JBvQF1fEqQIWIQMUfxCXP2D6MbwS7Ofs/KqyskkcQOd/Wpab/qGNDucG80DqNaUi0G5NmdkJbA==
::dhA7uBVwLU+EWH2R92w3PQJRQkSxM22uEbQO7Yg=
::YQ03rBFzNR3SWATE0FczBhxBVQGMfFi1AKEL6fr+jw==
::dhAmsQZ3MwfNWATEVosTJwtNXg2FNH/6JKxczP34we2Su0gTFNEwfpvM26aLQA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MAE+/Fb4I5/jHyeOf4n4JQeE0OLjS1LCBN/NT31XgdIIolkwI1ptMLgIYWgeoQAghsGtM+GGdMqc=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 09
title Fix Stuck Windows Update V2.0 By DucNguyen

::Launcher chạy
:Start
cls
echo ---------------Fix Stuck Windows Update V2.0---------------
echo               Duoc viet boi DucNguyen Software
echo             Fix Stuck danh cho Windows 8 tro len
echo          Sau khi fix xong se tu dong reset lai may
echo      Phan mem nay danh cho nhung ai Windows Update dang
echo             bi ket trong luc tai file Update
echo -----------------------------------------------------------
echo.
echo Bam Start de chay chuong trinh
pause

::Menu phần mềm
:Start2
cls
echo ------------------------Fix Stuck Windows Update V2.0-------------------------
echo.
echo Chon 1 trong 2 lua chon duoi day :
echo 1) Fix Windows Update
echo 2) Khoi dong lai may
echo 3) Bat lai Windows Update Sevices va Background Intelligent Transfer Service
echo.
choice /C:123 /N /M "Ban chon / You choice :"
IF ERRORLEVEL ==3 GOTO C
IF ERRORLEVEL ==2 GOTO B
IF ERRORLEVEL ==1 GOTO A

::Lựa chọn 1 : Fix WU
:A
cls
echo Dang tat Background Intelligent Transfer Service...
net stop bits
echo Da tat thanh cong!
cls
echo Dang tat Windows Update Services...
net stop wuauserv
echo Da tat thanh cong!
cls
echo Dang xoa File Update...
echo Bam Y de xoa File!
del C:\Windows\SoftwareDistribution\
echo Da xoa thanh cong!
cls
set msgTitle="Fix Stuck Windows Update V2.0 By DucNguyen"
echo Wsh.Echo MsgBox("Da Fix Windows Update thanh cong!" + vbCrLf + "Hay khoi dong lai may de cap nhat Windows",vbOKOnly,%msgTitle%) >tmp.vbs
for /f %%i in ('cscript tmp.vbs //nologo //e:vbscript') do (set "ret=%%i")
del /q tmp.vbs
goto Start2

::Lựa chọn 2 : Bật lại máy
:B
cls
shutdown.exe -r -t 10
set msgTitle="Fix Stuck Windows Update V2.0 By DucNguyen"
echo Wsh.Echo MsgBox("May cua ban se Reset trong vong 10 giay nua!" + vbCrLf + "Hay luu nhung thu quan trong truoc khi he thong tu dong khoi dong lai.",vbOKOnly,%msgTitle%) >tmp.vbs
for /f %%i in ('cscript tmp.vbs //nologo //e:vbscript') do (set "ret=%%i")
del /q tmp.vbs
goto End

::Lựa chọn 3 : Bật lại BITS và WUS
:C
echo Dang bat Background Intelligent Transfer Service...
net start bits
echo Da bat thanh cong!
cls
echo Dang bat Windows Update Services...
net start wuauserv
echo Da bat thanh cong!
goto End

::Kết thúc chương trình
:End
cls
echo Cam on ban da su dung chuong trinh cua minh, neu ban muon co nhieu chuong 
echo trinh nhu the nay hoac hay hon, hay Subscribe va Donate cho minh o Link ben duoi.
echo Cam on ban da su dung!
echo Bam Enter de tiep tuc.
echo.
echo -----------------------------------------------------------------------
echo                               THONG TIN
echo       Cam on QuanTriMang da cung cap cach fix loi Windows Update
echo                  Toan bo chuong trinh deu do minh viet      
echo                       Lenh cai dat : QuanTriMang
echo                   Phan mem cai dat : DucNguyen Software
echo -----------------------------------------------------------------------
echo.
pause
start https://ducnguyensoftware.epizy.com
start https://www.youtube.com/channel/UCVybHqPvwB3kEds7IZWZ7Sw