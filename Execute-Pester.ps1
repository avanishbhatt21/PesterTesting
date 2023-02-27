Install-Module -Name Pester -Force -SkipPublisherCheck

$Module = Get-ChildItem -Path "$PSScriptRoot\Tests\Do-Addition.tests.ps1"

$OriginScript = "$PSScriptRoot\Functions\Do-Addition.ps1"

Import-Module -Force $OriginScript -DisableNameChecking

$config = [PesterConfiguration]@{
    Run = @{
        Path = $Module
    }
    CodeCoverage = @{
        Enabled = $false
        Path = $OriginScript
        OutputPath = "coverage.xml"
    }
    Output = @{
        Verbosity = "Detailed"
    }
    TestResult = @{
        Enabled = $true 
        OutputPath = '$PSScriptRoot\Test-Results\Result.xml'
        OutputFormat = 'JUnitXml'
    }
}

Invoke-Pester -Configuration $config