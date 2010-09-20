[Setup]
AppName=WSPR
AppVerName=WSPR Version 2.10 r2165

AppCopyright=Copyright (C) 2008-2010 by Joe Taylor, K1JT
DefaultDirName={pf}\WSPR
DefaultGroupName=WSPR

[Files]
Source: "c:\Users\joe\wsjt\wspr\wspr.exe";            DestDir: "{app}"
Source: "c:\Users\joe\wsjt\wspr\wsjt.ico";            DestDir: "{app}";
Source: "c:\Users\joe\wsjt\wspr\wsprrc.win";          DestDir: "{app}";  Flags: onlyifdoesntexist
Source: "c:\Users\joe\wsjt\wspr\hamlib_rig_numbers";  DestDir: "{app}";
Source: "c:\Users\joe\wsjt\wspr\rigctl.exe";          DestDir: "{app}";
Source: "c:\Users\joe\wsjt\wspr\CMDSR.exe";           DestDir: "{app}";
Source: "c:\Users\joe\wsjt\wspr\SRDLL.dll";           DestDir: "{app}";
Source: "c:\Users\joe\wsjt\wspr\libhamlib-2.dll";     DestDir: "{app}";
Source: "c:\Users\joe\wsjt\wspr\hamlib*.dll";         DestDir: "{app}";
Source: "c:\Users\joe\wsjt\wspr\save\Samples\091022_0436.wav";  DestDir: "{app}\save\Samples";  Flags: onlyifdoesntexist
Source: "c:\Users\joe\wsjt\wspr\fcal.exe";            DestDir: "{app}"
Source: "c:\Users\joe\wsjt\wspr\fcal.dat";            DestDir: "{app}"

;Source: "c:\Users\joe\wsjt\wspr\Output\wspr.ini";     DestDir: "{app}";

[Icons]
Name: "{group}\WSPR";        Filename: "{app}\WSPR.EXE"; WorkingDir: {app}
Name: "{userdesktop}\WSPR";  Filename: "{app}\WSPR.EXE"; WorkingDir: {app}

