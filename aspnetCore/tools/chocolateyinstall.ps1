$ErrorActionPreference = 'Stop';
$packageName= 'aspnetcore'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://go.microsoft.com/fwlink/?LinkId=627627'
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs    = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'Microsoft ASP.NET 5 RC1*'
  checksum      = '7f18e8c2cf755d9f8aaa7f550d1c40c2'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
