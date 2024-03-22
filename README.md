<h1 align="center">
<a href="https://tyrads.com/">TyrAds</a>
</h1>
<h3 align="center">Level up your gaming experience with
  <div style="text-align: center;">
      <img src="https://tyrrewards.com/wp-content/uploads/2023/03/logo4.png" width="300">
  </div>
  </h3>


[Tyrads](https://tyrads.com/) lets you integrate offers in your app in simple and easy to follow steps.

## Tyrads

**Tyrads** is an open source framework that provides a wrapper for presenting and creating offerwall. It interacts with the Tyrads backend letting you easily show offers with only few lines of code!


> **Note:** Apps designed for [Children and Families program](https://play.google.com/about/families/ads-monetization/) should not be using Tyrads SDK, since Tyrads does not collect data from users less than 13 years old

> **Note:** Tyrads SDK utilizes Apple's Advertising ID (IDFA) on iOS and GAID on Android  to identify and retarget users with campaigns. You should initialize Tyrads Flutter plugin only if the relevant IDFA/GAID permission was granted by the user

<br/>

# Getting Started


## Prerequisites

- Android SDK 21 or higher using Google Play Services
- iOS version 11.0 or higher
- Flutter version 1.20.0 or higher
- Dart SDK version 2.12.0 or higher
- CocoaPods version 1.10.0 or higher



### Installation

Just open the terminal with project root working and type below command

~~~ bash
flutter pub get tyrads_sdk
~~~


Integrating the Tyrads offerwall functionality into your application is a straightforward process that involves a few key steps. By following these integration steps, you can seamlessly incorporate the offerwall feature, enhancing user engagement and potentially generating revenue for your application.

### 1. Initialization

This step initializes the Tyrads SDK within your application. You need to provide the API key and API secret obtained from the Tyrads platform. This allows your app to communicate securely with Tyrads' servers.

~~~ dart

  Tyrads.instance.init( apiKey: "xyz", apiSecret:"abc123");
~~~

### 2. User Login

Upon initializing the SDK, the mandatory step is to log in the user. However, passing a user ID is optional and is only necessary when the publisher operates its own user system. This login process ensures that user interactions with the offerwall are accurately tracked and attributed within the application.

~~~dart
await Tyrads.instance.loginUser(userID: "xxx");//userID is optional 
~~~

### 3. Show Offerwall

Once the SDK is initialized and the user is logged in (if applicable), you can display the offerwall to the user. This typically involves calling a function provided by the Tyrads SDK, such as showOffers, passing in the context of your application. The offerwall is where users can engage with various offers, advertisements, or promotions provided by Tyrads, potentially earning rewards or incentives in the process.


~~~ dart
    Tyrads.instance.showOffers(context);
~~~

 

**Android 12**

Apps updating their target API level to 31 (Android 12) or higher will need to declare a Google Play services normal permission in the AndroidManifest.xml file.

Navigate to the `android/app/src/main` directory inside your project's root, locate the AndroidManifest.xml file and add the following line just before the `<application>`.

~~~Dart
<uses-permission android:name="com.google.android.gms.permission.AD_ID" />
~~~

You can read more about Google Advertising ID changes [here](https://support.google.com/googleplay/android-developer/answer/6048248).

<br/>

**iOS 14+**

Request IDFA Permission (Recommended but optional)

Tyrads SDK can work with or without the IDFA permission on iOS 14+. If no permission is granted in the ATT popup, the SDK will serve non personalized offers to the user. In that scenario the conversion is expected to be lower. Offerwall integrations perform better compared to when no IDFA permission is given. Our recommendation is that you should ask for IDFA usage permission prior to Tyrads sdk initialization.