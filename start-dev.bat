@echo off
chcp 65001 > nul
title Khởi động Server Giải Đấu Cầu Lông
echo ========================================================
echo   SMASH OPEN CUP - HE THONG QUAN LY GIAI DAU CAU LONG
echo   Dang khoi chay may chu cuc bo (Local Dev Server)...
echo ========================================================
echo.
echo Server dang khoi dong va se tu dong mo trinh duyet...
echo Nhan Ctrl + C de dung server bat cu luc nao.
echo.
call npm run dev
pause
