REM @echo off
REM cd F:\Program Files\Android\sdk\platform-tools\

set ref=Test Referrer: %time%

set app=air.com.stephenklancher.TestInstallTracking
adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n %app%/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "(%app%)  %ref%"

set app=air.com.stephenklancher.TestInstallTracking.debug
adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n %app%/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "(%app%)  %ref%"

set app=air.TestInstallTracking
adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n %app%/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "(%app%)  %ref%"

set app=air.TestInstallTracking.debug
adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n %app%/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "(%app%)  %ref%"

pause