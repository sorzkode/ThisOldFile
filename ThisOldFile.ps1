'''
ThisOldFile.ps1 v1.0
12/25/2023

PowerShell script that lists the oldest file in a directory.

Author: Mister Riley
GitHub: https://github.com/sorzkode

MIT License
'''

Write-Host "Welcome to the This Old File script!"
Write-Host "This script will list the oldest file in a directory."
Write-Host "Please follow the instructions below:"

do {
    try {
        # Prompt the user to enter a directory path
        $dir = Read-Host "Enter the directory path"

        # Validate the directory path
        if (-not (Test-Path -Path $dir -PathType Container)) {
            throw "Invalid directory path: $dir"
        }

        # Set the path to search for files
        $path = Join-Path -Path $dir -ChildPath "*"

        # Use the Get-ChildItem cmdlet to get all files in the specified directory
        $files = Get-ChildItem -Path $path -File

        # Check if there are files
        if ($files.Count -eq 0) {
            Write-Output "No files found in $dir."
        }
        else {
            # Sort the files by creation time in ascending order
            $sortedFiles = $files | Sort-Object -Property CreationTime

            # Get the oldest file
            $oldestFile = $sortedFiles[0]

            # Print the details of the oldest file
            Write-Output "Oldest file in ${dir}:"
            Write-Output "Name: $($oldestFile.Name)"
            Write-Output "Size: $($oldestFile.Length) bytes"
            Write-Output "Creation Time: $($oldestFile.CreationTime)"
            Write-Output "Last Modified Time: $($oldestFile.LastWriteTime)"
        }
    }
    catch {
        Write-Output "An error occurred: $_"
    }

    # Prompt the user to select Y/N to search for files in another directory or exit the script
    $choice = Read-Host "Do you want to search for files in a different directory? (Y/N)"

    if ($choice -eq "Y") {
        continue
    }
    else {
        break
    }
} while ($true)