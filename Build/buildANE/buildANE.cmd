set adtpath=F:\Adobe\Adobe Flash Builder 4.7 (64 Bit)\eclipse\plugins\com.adobe.flash.compiler_4.7.0.349722\AIRSDK\bin
set nativepath=F:\WorkingCopy\CnC\ANEInstallTracking\AndroidReferrer\AndroidReferrer
set output="F:\WorkingCopy\CnC\ANEInstallTracking\Build\Results\InstallTracking.ane"
set swc=F:\WorkingCopy\CnC\ANEInstallTracking\InstallTracking\InstallTracking\bin\InstallTracking.swc
set jar=F:\WorkingCopy\CnC\ANEInstallTracking\Build\Results\AndroidReferrer.jar


del %~dp0\Android-ARM\* /F /S /Q
del *.ane library.swf Q
mkdir Android-ARM

7z x -o%~dp0\Android-ARM %swc% library.swf
xcopy %nativepath%\res %~dp0\Android-ARM\res\ /E

copy %jar% %~dp0\Android-ARM\

set adtcmd="%adtpath%\adt.bat" -package -target ane %output% %~dp0\extension.xml -swc %swc% -platform Android-ARM -C %~dp0\Android-ARM .

%adtcmd%

pause
exit
