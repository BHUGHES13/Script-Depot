REM Uninstall all language packs and dont reboot

REM sc config servicename start= disabled 
REM use name in task manager for the service name. Match description to service in msconfig
REM Values with spaces require quotes on the key and the value path or name

Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "RtHDVCpl" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "IgfxTray" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "HotKeysCmds" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Persistence" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "RoxWatchTray" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "Acrobat Assistant 8.0" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "Adobe ARM" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "APSDaemon" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "Desktop Disc Tool" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "PDVDDXSRV" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "QuickTime Task" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "RoxWatchTray" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /v "SunJavaUpdateSched" /f

REM VmWare
sc config "wsnm" start= disabled
REM Vmware USB
sc config "wsnm_usbctrl" start= disabled
REM Intel Clock
sc config "cphs" start= disabled
REM Intel DRM
sc config "ICCS" start= disabled
REM Autodesk but not flexnet
sc config "Autodesk Content Service" start= disabled
REM Roxio
sc config "RoxMediaDB12OEM" start= disabled
REM Google update
sc config "gupdate" start= disabled
sc config "gupdatem" start= disabled
REM Mozilla
sc config "MozillaMaintenance" start= disabled
REM Adobe
sc config "AdobeARMservice" start= disabled
sc config "AdobeFlashPlayerUpdateSvc" start= disabled

REM Delete CBS directory contents
del %SYSTEM%\Windows\Logs\CBS\*.* /s /q


lpksetup /u ar-SA bg-BG zh-HK zh-CN zh-TW hr-HR cs-CZ da-DK nl-NL et-EE fi-FI fr-FR de-DE el-GR he-IL hu-HU it-IT ja-JP ko-KR lv-LV lt-LT nb-NO pl-PL pt-BR pt-PT ro-RO ru-RU sr-Latn-CS sk-SK sl-SI es-ES sv-SE th-TH tr-TR uk-UA /r