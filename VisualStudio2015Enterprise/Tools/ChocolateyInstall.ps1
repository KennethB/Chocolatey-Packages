Import-Module (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'VSModules.psm1')

Install-VS 'VisualStudio2015Enterprise' 'https://download.microsoft.com/download/6/4/7/647EC5B1-68BE-445E-B137-916A0AE51304/vs_enterprise.exe' 'vs_enterprise.exe' '2848DDD11A5DB48F801A846A4C7162027CA2ADE2EF252143ABDE82AD9C9FDD97'
