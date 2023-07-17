@ECHO OFF
echo.
call apksigner verify --verbose "%~f1"
pause
@ECHO ON