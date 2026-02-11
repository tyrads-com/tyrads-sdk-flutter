## 3.3.0-beta.3
* A skip button has been added to the User Update page (Age and Gender) on iOS.
* Added a new param `engagementId` in init to support engagement tracking.
* Optimization of Premium Widgets loading and caching.

## 3.2.0
* Resolved issue with iOS device identifier on iOS devices.
* Migration from local asset-based localization to remote localization system for dynamic content updates without app redeployment.

## 3.1.0
* New Premium Widgets added.
* Offer Details Rewards Based on Stage added.

## 3.0.0-beta.0
* Implemented currency sale and new ui.
* Implemented S2S click tracking for accurate conversion measurement.
* Implemented callback verification for certain events.
* Implemented Google Play Integrity API integration to prevent fraud and unauthorized access.
* Implemented end-to-end data encryption using AES-256 standards.
* Added limited time promotional campaigns with countdown timers.

## 2.0.2
* Fixed issue where back button was not working as expected.

## 2.0.1
* Fixed namespace missing from build.gradle for android
* Flutter 3.29 support added

## 2.0.1-beta.0
* Fixed namespace missing from build.gradle for android
* Flutter 3.29 support added

## 2.0.0

* added premium colour
* added top offers widget
* added premium slider

## 1.1.7

- fixed remaining time not visible on first card
- added rejected color to star
- added expiring on banner  offer details
- changed app text to TyrSDK in usage stats screen
- added additional parameters for device details in android
- added launchMode to chose between native, webview or external browser

## 1.1.6

- added api to check if the login was successful or not
- changed color of inactive usage switch
- fixed campaign details page issue if tracking link not available
- fixed custom branding colors for ios

## 1.1.5

- used webview flutter instead of in-app-webview library
- fixed privacy legal page overlapping issues on some devices
- added toast and logging if initialization failed

## 1.1.4

- fixed impression tracking
- added flexible range package_info_plus
- added caps limit
- added deeplinking routes

## 1.1.3

- Updated package_info_plus to version 8.0.0

## 1.1.2

- add media source and user info advanced targeting fields.
- added privacy policy & terms links
- added retry download logic
- updated support tickets UI
- fixed privacy page ui issues
- fixed calling setState  after removed from widget tree

## 1.1.1

- fixed initialization issue incase identifier could not be fetched from the device

## 1.1.0

- added duplicate events
- added support ticket submission for microcharge
- added playtime

## 0.2.8

- fixed launch mode for url launcher

## 0.2.7

- added external browser launch for iOS

## 0.2.6

- added reload content on app resume
- fixed compatibility with Gradle 8.0

## 0.2.5

- fixed event completed status in offer details
- fixed submit ticket failure moves to success page

## 0.2.4

- removed safe_device package dependency

## 0.2.3

- added sending platform in web websdk URL
- changed websdk url
- fixed material 3 card color
- fixed native status bar icons colour
- fixed safe area
- fixed minor UI padding issues
- fixed details screen being called multiple times
- fixed help icon visibe to non active offer details

## 0.2.2

- fixed event name in event cards widget

## 0.2.1

- updated dio package to 5.4.2
- updated device_info_plus package to 10.1.0

## 0.2.0

- updated flutter version to 3.19.x
- updated dart version to 3.3.x
- updated package_info_plus to version 6.0.0

## 0.1.0

- updated flutter version to 3.16.x

## 0.0.4

- updgraded package dependencies
- fixed purchase event duplicating on reload

## 0.0.3

- added bottom padding on offers
- added dynamic coin and currency from the api
- added toLowerCase before comparison
- added loading icon before websdk initialization
- fixed offer instructions text
- fixed text for appstore
- fixed purchase card event
- fixed device details not sending device name correctly for iPad
- other minor fixes

## 0.0.2

- added specific version to all the packages
- added communication between flutter web and the app
- added bottom inset to false as that of the bottom bar app
- fixed example android app not working in the release mode
- fixed Play button text
- fixed newUser screen not closing after pressing back button

## 0.0.1

- initial release.