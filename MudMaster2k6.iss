;MIT License

;Copyright (c) 2018 Sinaxis

;Permission is hereby granted, free of charge, to any person obtaining a copy
;of this software and associated documentation files (the "Software"), to deal
;in the Software without restriction, including without limitation the rights
;to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;copies of the Software, and to permit persons to whom the Software is
;furnished to do so, subject to the following conditions:

;The above copyright notice and this permission notice shall be included in all
;copies or substantial portions of the Software.

;THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;SOFTWARE.

; Inno Setup Compiler 5.6.1

[Setup]
AppId={{06FE2E31-8610-43F4-AC45-BCF17AF7546D}
AppName=Medievias MudMaster
AppVersion=4.22b1
DefaultDirName={localappdata}\Medievias MudMaster
DefaultGroupName=Medievias MudMaster
UninstallDisplayIcon={localappdata}\Medievias MudMaster
PrivilegesRequired=poweruser
Compression=lzma2
SolidCompression=yes
OutputBaseFilename=Medievias MudMaster Setup
OutputDir=ISC Output

[Dirs]
Name: "{app}\ExtLibs"
Name: "{app}\Help"
Name: "{app}\Logs"
Name: "{app}\Transfers"
Name: "{app}\Scripts"

[Tasks]
Name: "shortcuticon"; Description: "Create shortcut to Scripts folder"; GroupDescription: "Additional Icons"; Flags: unchecked

[Files]
Source: "MudMaster.exe";            DestDir: "{app}"
Source: "MudMaster2k6.ini";         DestDir: "{app}"
Source: "Character.mms";            DestDir: "{app}"
Source: "RecentCommunication.mms";  DestDir: "{app}"
Source: "ExtLibs\ChatWindow.dll";   DestDir: "{app}\ExtLibs"
Source: "ExtLibs\Math.dll";         DestDir: "{app}\ExtLibs"
Source: "Help\*";                   DestDir: "{app}\Help"
Source: "Scripts\*";                DestDir: "{app}\Scripts"
Source: "MFC71.dll";                DestDir: "{app}"
Source: "msvcp71.dll";              DestDir: "{app}"
Source: "Msvcr71.dll";              DestDir: "{app}"
Source: "Medievia.fon";             DestDir: "{fonts}"; FontInstall: "Medievia"; Flags: fontisnttruetype onlyifdoesntexist uninsneveruninstall
Source: "MedSansMono.ttf";          DestDir: "{fonts}"; FontInstall: "Medievia Sans Mono"; Flags: onlyifdoesntexist uninsneveruninstall

[Icons]
Name: "{group}\MudMaster"; Filename: "{app}\MudMaster.exe"
Name: "{group}\Uninstall"; Filename: "{app}\unins000.exe"
Name: "{commondesktop}\Medievias MudMaster"; Filename: "{app}\MudMaster.exe"
Name: "{commondesktop}\MM Scripts"; Filename: "{app}\Scripts"; Tasks: shortcuticon

[Run]
Filename: "{app}\MudMaster.exe"; Description: "Launch Medievia's MudMaster after install"; Flags: postinstall nowait skipifsilent