# Features

Makes it so directories from the home folder have an actual path in the address bar instead of that stupid behavior microsoft forced upon us.
[![](https://media.discordapp.net/attachments/868056405523980318/1150275244242767943/2023-09-10_05h42_31.gif)](http://https://media.discordapp.net/attachments/868056405523980318/1150275244242767943/2023-09-10_05h42_31.gif)

# Release

If you dont feel like messing with your Execution Policy and Powershell you can just run as admin the executable in the release section.
But you shouldnt trust random repos you find so just download the script, read it and execute that instead.

# Script Usage:

Clone or download the script:

`git clone https://github.com/CurrenlyDying/WinExplorerFullDirPath.git`
Then go into the cloned repo or wherever you downloaded the script:
`cd WinExplorerFullDirPath`
Open an elevated PowerShell prompt (right click on the windows icon in the taskbar)
You need to set your execution policy to unerestricted, you can set it back to where it was afterwards:
`Set-ExecutionPolicy Unrestricted`
Now run the script:
`.\WinExplorerFullDirPath.ps1`
You can now set back your execution policy to what you want (ie Default):
`Set-ExecutionPolicy Default`

[![](https://media.discordapp.net/attachments/868056405523980318/1113609801369391124/20230417_094225.jpg)](https://media.discordapp.net/attachments/868056405523980318/1113609801369391124/20230417_094225.jpg)