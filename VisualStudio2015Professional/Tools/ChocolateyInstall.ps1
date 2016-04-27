Import-Module (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'VSModules.psm1')

Install-VS 'VisualStudio2015Professional' 'http://download.microsoft.com/download/c/8/6/c868d99e-f6cb-4b6f-955e-4571614e6fdb/vs2015.2.exe'
