# Install-Module -Name Pester -Force -SkipPublisherCheck

$Module = Get-ChildItem -Path "$PSScriptRoot\Tests\*.tests.ps1"

$OriginScript = Get-ChildItem -Path "$PSScriptRoot\Functions\*.ps1"

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
        OutputPath = Join-Path $PSScriptRoot "\Test-Results\Result.xml" #"$PSScriptRoot\Test-Results\Result.xml"
        OutputFormat = 'JUnitXml'
    }
}

Invoke-Pester -Configuration $config