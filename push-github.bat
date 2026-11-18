@echo off
chcp 65001 > nul
title Đẩy mã nguồn lên GitHub - giai-cau-long
echo ========================================================
echo   DANG TIEN HANH DAY CODE LEN GITHUB
echo   Tài khoản: luuvutuantu3012 (luuvutuantu3012@gmail.com)
echo   Repository: https://github.com/luuvutuantu3012/giai-cau-long.git
echo ========================================================
echo.
"C:\Program Files\Git\cmd\git.exe" push -u origin main
echo.
pause
