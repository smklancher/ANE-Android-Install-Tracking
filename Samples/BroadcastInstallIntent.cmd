@echo off
cd F:\Program Files\Android\sdk\platform-tools\
adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n net.stevemiller.android.referrertest/net.stevemiller.android.referrertest.ReferrerReceiver --es "referrer" "utm_source=testSource&utm_medium=testMedium&utm_term=testTerm&utm_content=testContent&utm_campaign=testCampaign"
pause