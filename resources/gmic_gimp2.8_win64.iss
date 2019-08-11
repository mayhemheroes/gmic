;---------------------------------------------
;
; File : gmic_gimp2.8_qt64.iss
;
; Description : Inno Setup Script to create
;               a Windows installer for
;               G'MIC for GIMP.
;
; Authors : François Collard
;           David Tschumperlé
;
;---------------------------------------------

#define AppName "G'MIC-Qt for GIMP"

[Setup]
AppName={#AppName}
AppVersion=XXX
AppPublisherURL=https://gmic.eu/
DefaultDirName={%USERPROFILE|{userdesktop}\..}\.gimp-2.8\plug-ins\gmic_gimp_qt\
DefaultGroupName={#AppName}
UninstallDisplayIcon={app}\gmic_gimp_qt.exe
LicenseFile={#file AddBackslash(SourcePath) + "CeCILL.rtf"}
OutputDir={#SourcePath}
UninstallFilesDir={app}\uninst
AppendDefaultDirName=false
UsePreviousAppDir=true
DirExistsWarning=no
WizardImageFile=gmic_instimg.bmp
WizardSmallImageFile=gmic_instimg_small.bmp
PrivilegesRequired=lowest
OutputBaseFilename=gmic_gimp2.8_qt_XXX_win64

[Files]

Source: build64-gimp-qt\gmic_gimp_qt.exe; DestDir: {app}
Source: build64-gimp-qt\libbz2-1.dll; DestDir: {app}
Source: build64-gimp-qt\libcurl-4.dll; DestDir: {app}
Source: build64-gimp-qt\LIBEAY32.dll; DestDir: {app}
Source: build64-gimp-qt\libfftw3-3.dll; DestDir: {app}
Source: build64-gimp-qt\libfreetype-6.dll; DestDir: {app}
Source: build64-gimp-qt\libgcc_s_seh-1.dll; DestDir: {app}
Source: build64-gimp-qt\libglib-2.0-0.dll; DestDir: {app}
Source: build64-gimp-qt\libgmp-10.dll; DestDir: {app}
Source: build64-gimp-qt\libgnutls-30.dll; DestDir: {app}
Source: build64-gimp-qt\libgomp-1.dll; DestDir: {app}
Source: build64-gimp-qt\libgraphite2.dll; DestDir: {app}
Source: build64-gimp-qt\libharfbuzz-0.dll; DestDir: {app}
Source: build64-gimp-qt\libhogweed-4.dll; DestDir: {app}
Source: build64-gimp-qt\libiconv-2.dll; DestDir: {app}
Source: build64-gimp-qt\libicudt57.dll; DestDir: {app}
Source: build64-gimp-qt\libicuin57.dll; DestDir: {app}
Source: build64-gimp-qt\libicuuc57.dll; DestDir: {app}
Source: build64-gimp-qt\libintl-8.dll; DestDir: {app}
Source: build64-gimp-qt\libnettle-6.dll; DestDir: {app}
Source: build64-gimp-qt\libnghttp2-14.dll; DestDir: {app}
Source: build64-gimp-qt\libp11-kit-0.dll; DestDir: {app}
Source: build64-gimp-qt\libpcre-1.dll; DestDir: {app}
Source: build64-gimp-qt\libpcre16-0.dll; DestDir: {app}
Source: build64-gimp-qt\libpng16-16.dll; DestDir: {app}
Source: build64-gimp-qt\librtmp-1.dll; DestDir: {app}
Source: build64-gimp-qt\libssh2-1.dll; DestDir: {app}
Source: build64-gimp-qt\libstdc++-6.dll; DestDir: {app}
Source: build64-gimp-qt\libtasn1-6.dll; DestDir: {app}
Source: build64-gimp-qt\libunistring-2.dll; DestDir: {app}
Source: build64-gimp-qt\libwinpthread-1.dll; DestDir: {app}
Source: build64-gimp-qt\Qt5Core.dll; DestDir: {app}
Source: build64-gimp-qt\Qt5Gui.dll; DestDir: {app}
Source: build64-gimp-qt\Qt5Network.dll; DestDir: {app}
Source: build64-gimp-qt\Qt5Widgets.dll; DestDir: {app}
Source: build64-gimp-qt\SSLEAY32.dll; DestDir: {app}
Source: build64-gimp-qt\zlib1.dll; DestDir: {app}
Source: build64-gimp-qt\platforms\qdirect2d.dll; DestDir: {app}\platforms
Source: build64-gimp-qt\platforms\qminimal.dll; DestDir: {app}\platforms
Source: build64-gimp-qt\platforms\qoffscreen.dll; DestDir: {app}\platforms
Source: build64-gimp-qt\platforms\qwindows.dll; DestDir: {app}\platforms
Source: build64-gimp-qt\updatexxx.gmic; DestDir: {userappdata}\gmic
Source: build64-gimp-qt\gmic_cluts.gmz; DestDir: {userappdata}\gmic

;[Icons]
;Name: {userstartmenu}\Gimp\Gmic_Gimp\Uninstall Gmic_Gimp; Filename: {uninstallexe}

[Languages]
Name: French; MessagesFile: compiler:Languages\French.isl
Name: English; MessagesFile: compiler:Default.isl
Name: Czech; MessagesFile: compiler:Languages\Czech.isl
Name: Danish; MessagesFile: compiler:Languages\Danish.isl
Name: Dutch; MessagesFile: compiler:Languages\Dutch.isl
Name: Finnish; MessagesFile: compiler:Languages\Finnish.isl
Name: German; MessagesFile: compiler:Languages\German.isl
Name: Hebrew; MessagesFile: compiler:Languages\Hebrew.isl
Name: Hungarian; MessagesFile: compiler:Languages\Hungarian.isl
Name: Italian; MessagesFile: compiler:Languages\Italian.isl
Name: Japanese; MessagesFile: compiler:Languages\Japanese.isl
Name: Norwegian; MessagesFile: compiler:Languages\Norwegian.isl
Name: Polish; MessagesFile: compiler:Languages\Polish.isl
Name: Portuguese; MessagesFile: compiler:Languages\Portuguese.isl
Name: Russian; MessagesFile: compiler:Languages\Russian.isl
Name: Slovenian; MessagesFile: compiler:Languages\Slovenian.isl
Name: Spanish; MessagesFile: compiler:Languages\Spanish.isl
