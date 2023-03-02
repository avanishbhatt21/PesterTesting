function Get-OSName {

    # Param (
    #     $Num1,
    #     $Num2
    # )

    try {

        $OS = (Get-ComputerInfo).OSName
        write-host $OS

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