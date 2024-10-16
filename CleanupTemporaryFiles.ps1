# Specify the path to the temporary files
$tempDir = "C:\Users\User\AWS-Session\*"
# Get a list of all files in the directory
$files = Get-ChildItem -Path $tempDir -Force

# Loop through the files and delete each one
foreach ($file in $files) {
    try {
        Remove-Item $file.FullName -Force
        Write-Host "Deleted: $($file.FullName)"
    } catch {
        Write-Host "Error deleting $($file.FullName): $_"
    }
}

Write-Host "Cleanup complete."
