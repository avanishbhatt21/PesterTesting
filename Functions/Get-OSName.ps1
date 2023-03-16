function Get-OSName {

    try {

        $OS = (Get-ComputerInfo).OSName

        if ($OS -match 'Windows' ){
            return 'OS is Windows'
        }

        elseif ($OS -match 'Linux') {
            return 'OS is Linux'
        }

        elseif ($OS -match 'MacOS') {
            return 'OS is MacOS'
        }

    } catch {
        throw $_
    }

}