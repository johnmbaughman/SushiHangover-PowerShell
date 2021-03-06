function Close-AllOpenedFiles
{
    <#
    .Synopsis
        Automatically closes all saved open files
    .Description
        Checks each file in the current tab to see if it is saved.
        If the file is saved, then the file will be closed.
    .Example
        Close-AllOpenedFiles
    #>
    foreach ($file in @($psise.CurrentPowerShellTab.Files)) {
        if ($file.IsSaved) {
            $null = $psise.CurrentPowerShellTab.Files.Remove($file)
        }
    }
}

