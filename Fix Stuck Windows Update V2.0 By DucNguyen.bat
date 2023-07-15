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
