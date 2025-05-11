# 📘 Usage Guide – Copy Directory Structure Only

This guide explains how to use the batch script to copy only the folder structure (excluding files) from one directory to another on Windows systems.

---

## 🧰 Requirements

- Windows 7 or newer
- `robocopy` (included by default in Windows Vista and later)

---

## 🚀 Running the Script

### 1. Open Command Prompt

- Press `Windows + R`, type `cmd`, and hit `Enter`.

### 2. Navigate to the Script Directory

Use the `cd` command to move into the `script/` folder of the project.

```cmd
cd path\to\copy-directory-structure\script
```
### 3. Run the Script
Type the name of the batch file and press Enter:
`dir-copy.bat`

## 📝 Script Prompts

The script will ask for two inputs:

    Source Directory
    The full path of the directory you want to copy the structure from.

    Target Directory
    The full path where you want to recreate the folder structure.

Example input:

Enter the source directory: C:\Projects\MyApp
Enter the target directory: D:\Backup\MyApp

## ⚙️ What Happens Next

The script uses the following command internally:

robocopy "%source%" "%target%" /E /XF *.*

    /E: Copies all subdirectories, including empty ones.

    /XF *.*: Excludes all files.

The result is a duplicate of the folder tree at the target location—without any of the files.

## ❗ Notes

    Make sure both source and target directories exist.

    If the target path doesn't exist, robocopy will create it.

    This script does not handle errors (e.g., invalid paths), so double-check inputs.
    
## 📦 Example Folder Tree

Before running:

C:\Projects\MyApp\
├── src\
│   └── main.c
├── assets\
└── docs\

After running the script:

D:\Backup\MyApp\
├── src\
├── assets\
└── docs\

(No files are copied.)

##🔄 To Customize

If you want to copy only certain types of folders, or want to include some files, modify the robocopy options in the batch file.

See Microsoft Docs – robocopy for all available options.

