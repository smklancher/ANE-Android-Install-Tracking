set adtpath=F:\Adobe\Adobe Flash Builder 4.7 (64 Bit)\eclipse\plugins\com.adobe.flash.compiler_4.7.0.349722\AIRSDK\bin
set nativepath=F:\WorkingCopy\CnC\ANEInstallTracking\Samples\ANESample_java\ANESample_java
set outputname="SampleASExtension"
set swc=F:\WorkingCopy\CnC\ANEInstallTracking\Samples\ANESample\bin\ANESample.swc
set jarname=ANESample


del %~dp0\Android-ARM\* /F /S /Q
del %outputname%.ane library.swf
mkdir Android-ARM

7z x -o%~dp0\Android-ARM %swc% library.swf
copy %nativepath%\%jarname%.jar %~dp0\Android-ARM\
xcopy %nativepath%\res %~dp0\Android-ARM\res\ /E

set adtcmd="%adtpath%\adt.bat" -package -target ane %~dp0\%outputname%.ane %~dp0\extension.xml -swc %swc% -platform Android-ARM -C %~dp0\Android-ARM .

%adtcmd%

pause
exit
