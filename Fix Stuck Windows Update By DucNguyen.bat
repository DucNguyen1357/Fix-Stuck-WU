@echo off
color 09
title Fix Loi ket tai file Windows Update By DucNguyen
:Start
cls
echo ---------------Fix Stuck Windows Update---------------
echo                Duoc viet boi DucNguyen
echo       Sau khi fix xong se tu dong reset lai may
echo   Phan mem nay danh cho nhung ai Windows Update dang
echo           bi ket trong luc tai file Update
echo ------------------------------------------------------
echo.
echo Bam Start de chay chuong trinh
pause
cls
echo ---------------Fix Stuck Windows Update by DucNguyen---------------
echo.
echo Chon 1 trong 2 duoi day :
echo 1) Fix Windows Update
echo 2) Bat lai Windows Update Sevices va Background Intelligent Transfer Service
echo.
set input=
set /p input= Ban chon : 
if %input%==1 goto E if NOT goto Start
if %input%==2 goto F if NOT goto Start
:A
cls
echo Dang tat Background Intelligent Transfer Service...
net stop bits
echo Da tat thanh cong!
goto B
:B
echo Dang tat Windows Update Services...
net stop wuauserv
echo Da tat thanh cong!
goto C
:C
echo Dang xoa File Update...
echo Bam Y de xoa File!
del C:\Windows\SoftwareDistribution\
echo Da xoa thanh cong!
goto D
:D
echo May cua ban se Reset trong vong 10 giay nua!
echo Hay luu nhung thu quan trong truoc khi he thong tu dong khoi dong lai.
shutdown.exe -r -t 10
:E
cls
goto A
:F
echo Dang bat Background Intelligent Transfer Service...
net start bits
echo Da bat thanh cong!
goto G
:G
echo Dang bat Windows Update Services...
net start wuauserv
echo Da bat thanh cong!
goto H
:H
cls
echo Da bat Windows Update Services va Background Intelligent Transfer Service thanh cong!
echo Bam Enter de thoat khoi chuong trinh!
pause
exit
