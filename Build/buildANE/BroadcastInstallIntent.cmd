REM @echo off
REM cd F:\Program Files\Android\sdk\platform-tools\
adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n air.com.stephenklancher.TestInstallTracking/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "Test Referrer: %time%"
pause
exit

adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n air.com.stephenklancher.TestInstallTracking.debug/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "Test Referrer: %time%"
pause