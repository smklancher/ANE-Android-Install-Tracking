REM @echo off
REM cd F:\Program Files\Android\sdk\platform-tools\

set app=air.com.stephenklancher.TestInstallTracking
set ref=Test Referrer: %time%

adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n %app%/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "Release %ref%"

adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n %app%.debug/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "Debug %ref%"
pause