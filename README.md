# Visual Studio Chocolatey Packages#
[Chocolatey](https://chocolatey.org/) packages for Visual Studio 

## Packages
 
### Visual Studio Enterprise
- [https://chocolatey.org/packages/VisualStudio2015Enterprise](https://chocolatey.org/packages/VisualStudio2015Enterprise)
- `choco install visualstudio2015enterprise`

### Visual Studio Professional
- [https://chocolatey.org/packages/VisualStudio2015Professional](https://chocolatey.org/packages/VisualStudio2015Professional)
- `choco install visualstudio2015professional`

### Visual Studio Community
- [https://chocolatey.org/packages/VisualStudio2015Community](https://chocolatey.org/packages/VisualStudio2015Community)
- `choco install visualstudio2015community`

## Installation Troubleshooting
###### Reboot required
- Chocolatey report a failure to install. This can be because of a pending reboot (error code 1116). 
- Work around: Reboot and try again

###### Timeout
- Installations taking more than 45 minutes will be killed by chocolatey
- Work around 1: Extend timeout: `choco install visualstudio2015enterprise --execution-timeout=3600`
- Work around 2: Use local installation media (see below)

## Versioning
Given the pattern `major.minor.build.revision`, the nuget package follows the convention of

- major = visual studio major
- minor = visual studio minor
- build = visual studio build
- revision = nuget package version  


## Local Installation Media
By default, the above commands will download the install media from the Internet.
To save bandwidth or increase deployment speed, paths to local installation media may be specified via environment variables.

Specify iso image path (Windows 10 & 2012 only) with Powershell:

- `$env:visualStudio:isoImage="c:\users\bob\downloads\vs2015.2.ent_enu.iso"`

Alternatively, specify path to an unzipped iso image:

- `$env:visualStudio:setupFolder="D:\vs2015\"` 


## MyGet 

`Build.ps1` compiles all packages and places them in the `.artifacts` folder.
This is consumed by a myget feed

[![chocolatey-vs MyGet Build Status](https://www.myget.org/BuildSource/Badge/chocolatey-vs?identifier=4d41f614-001d-463d-9778-9668511acceb)](https://www.myget.org/F/chocolatey-vs/api/v2)

MyGet feeds are built off `master` branch before pushed to chocolatey itself

To install from the MyGet feed use a command like
`choco install visualstudio2015enterprise --source=https://www.myget.org/F/chocolatey-vs/api/v2` 

## Contributions
Contributions are welcome.
 
- Please raise an issue for discussion before submitting a PR.
- PR's should request merge into `develop` branch
- `master` branch is reserved for myget builds that push to chocolatey

## Credits
Packages previously created and maintained by

- [KennethB](https://github.com/KennethB/Chocolatey-Packages)
- [jivkok](https://github.com/jivkok/Chocolatey-Packages)
