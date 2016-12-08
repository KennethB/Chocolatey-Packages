Import-Module (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'VSModules.psm1')

Install-VS 'VisualStudio2015Professional' 'https://download.microsoft.com/download/5/8/9/589A8843-BA4D-4E63-BCB2-B2380E5556FD/vs_professional.exe' 'vs_professional.exe' '2A471C57A658CEBEFAA22EACCBAC2AE042A316F37E2522A3E4662D2224D5B2DF'
