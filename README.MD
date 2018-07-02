# AIR Native Extension - Android Install Tracking

Adobe AIR native extension to capture the referrer used to get to the Play Store to install the app on Android.  Adobe AIR apps are platform independent, but use AIR Native Extensions (ANE) to handle platform specific functionality.  If a referrer, for example from an ad campaign, was used to get to the Play Store and install an app, Android broadcasts an intent with that referrer (only on-device, not when installed from the web).  This extension catches the intent to store the referrer and make it available to the AIR app.

## AIR Install Referrer Test

This app tests getting the install referrer through an AIR extension. When the Play Store app is opened to an app using a referrer, it will be broadcast post-install as the com.android.vending.INSTALL_REFERRER intent. The AIR extension catches the intent and stores the result to be retrieved at any time later. Notably, google does not broadcast the intent if the app is installed via the web version of the play store.

Open play store app on device with this link:

[https://play.google.com/store/apps/details?id=air.com.stephenklancher.TestInstallTracking&referrer=FirstTest](https://play.google.com/store/apps/details?id=air.com.stephenklancher.TestInstallTracking&referrer=FirstTest)

Or manually broadcast the intent via ADB:
```
adb shell am broadcast -a com.android.vending.INSTALL_REFERRER -n air.com.stephenklancher.TestInstallTracking/com.stephenklancher.installtracking.ReferrerReceiver --es "referrer" "Test Referrer: %time%"
```

Click refresh to show the referrer that is currently stored.

[![Get it on Google Play](https://play.google.com/intl/en_us/badges/images/badge_new.png)](https://play.google.com/store/apps/details?id=air.com.stephenklancher.TestInstallTracking&referrer=GitHub)

[AIR Install Referrer Test](https://play.google.com/store/apps/details?id=air.com.stephenklancher.TestInstallTracking&referrer=GitHub)

### Notes

I wrote this for my friend's game, Cards and Castles.  At time of posting this, several years after writing the code, I see that the test app still works as expected.  Although I wouldn't know if there is now a better approach to this from either the Android or AIR sides.  My Android development experience is limited, and this was my was my only foray into AIR developement.  My main memory of working on this was an enormous amount of trial and error even in getting a functional build environment, much less getting working a working end result.