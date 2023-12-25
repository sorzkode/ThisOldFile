# This Old File

## Overview

Welcome to the This Old File script! This PowerShell script is designed to help you identify and display the oldest file in a specified directory. Use this tool to quickly find information about the file that has been present in the directory the longest.

## Instructions

Follow the steps below to run the script:

1. **Download the Script:**
   - Download the script file (`ThisOldFile.ps1`) to your local machine.

2. **Run the Script:**
   - Open PowerShell on your machine.
   - Navigate to the directory where you saved the script using the `cd` command.
   - Execute the script by entering `.\ThisOldFile.ps1` and pressing Enter.

3. **Input Directory Path:**
   - The script will prompt you to enter the directory path where you want to find the oldest file.

4. **Review Results:**
   - The script will display details of the oldest file in the specified directory, including its name, size, creation time, and last modified time.

5. **Repeat or Exit:**
   - After reviewing the results, you can choose to search for the oldest file in another directory by entering 'Y' when prompted.
   - To exit the script, enter 'N' when prompted.

## Important Notes

- Ensure that you have the necessary permissions to access the directories you intend to search.
- The script considers the oldest file based on the creation time.

## Example Usage

```powershell
Welcome to the This Old File script!
This script will list the oldest file in a directory.
Please follow the instructions below:

Enter the directory path: C:\Users\Username\Documents
Oldest file in C:\Users\Username\Documents:
Name: OldestFile.txt
Size: 1024 bytes
Creation Time: 2022-01-01 08:00:00
Last Modified Time: 2022-01-02 10:30:15

Do you want to search for files in a different directory? (Y/N): Y
Enter the directory path: D:\Projects
No files found in D:\Projects.

Do you want to search for files in a different directory? (Y/N): N