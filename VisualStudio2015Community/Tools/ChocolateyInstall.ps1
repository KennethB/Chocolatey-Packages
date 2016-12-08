Import-Module (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'VSModules.psm1')

Install-VS 'VisualStudio2015Community' 'https://download.microsoft.com/download/0/B/C/0BC321A4-013F-479C-84E6-4A2F90B11269/vs_community.exe' 'vs_community.exe' 'ED8D88D0AB88832754302BFC2A374E803B3A21C1590B428092944272F9EA30FE'
