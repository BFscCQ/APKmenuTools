@echo off
echo 当前目录:%~dp0
echo start reg  ...
reg add "HKEY_CLASSES_ROOT\*\shell\APKmenuTools" /v SubCommands /t REG_SZ /d APKmenuTools.install;APKmenuTools.signapkV1;APKmenuTools.signapkV2;APKmenuTools.signapkV1V2;APKmenuTools.signVerify;APKmenuTools.uninstall;

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.install" /t REG_SZ /d 仅安装
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.install\command" /t REG_SZ /d "%~dp0bat\install.bat %%1%"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signapkV1" /t REG_SZ /d V1签名
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signapkV1\command" /t REG_SZ /d "%~dp0bat\signapkV1.bat %%1%"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signapkV2" /t REG_SZ /d V2签名
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signapkV2\command" /t REG_SZ /d "%~dp0bat\signapkV2.bat %%1%"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signapkV1V2" /t REG_SZ /d V1+V2签名
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signapkV1V2\command" /t REG_SZ /d "%~dp0bat\signapkV1V2.bat %%1%"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signVerify" /t REG_SZ /d 签名检查
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.signVerify\command" /t REG_SZ /d "%~dp0bat\signVerify.bat %%1%"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.uninstall" /t REG_SZ /d 卸载应用
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\APKmenuTools.uninstall\command" /t REG_SZ /d "%~dp0bat\uninstall.bat %%1%"

pause
@echo on