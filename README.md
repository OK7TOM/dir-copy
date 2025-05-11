# Copy Directory Structure Only (Windows Batch Script)

This Windows batch script uses `robocopy` to replicate the directory structure of a source folder into a target location **without copying the actual files**. It's useful for backup setups, staging folder hierarchies, or system migrations.

## 📁 What It Does

- Prompts the user to input:
  - A source directory path
  - A target directory path
- Uses `robocopy` with `/E` (copy subdirectories, including empty ones) and `/XF *.*` (exclude all files)
- Copies only the folder structure from source to target

## 📜 Script

Located in the `script/` directory:

```bat
@echo off
set /p source="Enter the source directory: "
set /p target="Enter the target directory: "
robocopy "%source%" "%target%" /E /XF *.*
pause

