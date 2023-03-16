Describe 'Tests for Get-OSName' {
    It "Should check for Windows" {
        Mock Get-ComputerInfo {
            return @{OsName = 'Windows'}
        }
        Get-OSName | Should -Be "OS is Windows"
    }

    It "Should check for Linux" {
        Mock Get-ComputerInfo {
            return @{OsName = 'Linux'}
        }
        Get-OSName | Should -Be "OS is Linux"
    }
    
    It "Should check for MacOS" {
        Mock Get-ComputerInfo {
            return @{OsName = 'MacOS'}
        }
        Get-OSName | Should -Be "OS is MacOS"
    }

    It "Should catch error in Get-ComputerInfo" {
        Mock Get-ComputerInfo {
            throw "404 Error"
        }
        {Get-OSName} | Should -Throw "404 Error"
    }


}