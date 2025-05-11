@echo off
set /p source="Enter the source directory: "
set /p target="Enter the target directory: "
robocopy "%source%" "%target%" /E /XF *.*
pause
