Import-Module (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'VSModules.psm1')

Install-VS 'VisualStudio2015Community' 'http://download.microsoft.com/download/D/2/3/D23F4D0F-BA2D-4600-8725-6CCECEA05196/vs_community_ENU.exe' 'vs_community.exe'
