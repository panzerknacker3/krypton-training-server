@echo off
cd /d "%~dp0"
java -Xms2G -Xmx4G -jar paper.jar --nogui
pause
