# tyrads-sdk

Tyrads SDK for React Native 

## Installation

```sh
npm install @tyrads.com/tyrads-sdk
# or
yarn add @tyrads.com/tyrads-sdk
```

## Usage


```js
import Tyrads from '@tyrads.com/tyrads-sdk';

// ...


    Tyrads.init('', '');
    Tyrads.loginUser('');
    Tyrads.showOffers();
```


</br>
<details>
<summary><strong>Launch Mode</strong></summary>


</br>

##### Min SDK version required: v1.1.6
##### Works only for iOS 

</br>

Tyrads SDK provides the ability to open the Offerwall in a webkit view that is embedded in the app to provide a seamless user experience. Also, it provides the ability to open the Offerwall in an external browser (Safari) if Apple's app store policy does not approve the in-app rewards system for the app.

Available launch modes:
- `launchMode: 3` - opens the Offerwall in an external browser (Safari)
- `launchMode: 2` - opens the Offerwall in a webkit view that is embedded in the app

```js

// Note: The launchMode parameter is optional, if not specified the default would be opening the Offerwall in an external browser (Safari)

Tyrads.showOffers({ launchMode: 3 });// provide launchMode: 2 to open the Offerwall in a webkit view that is embedded in the app

```
</details>



</br>
<details>
<summary><strong>Deeplinking Routes</strong></summary>


</br>

##### Min SDK version required: v1.1.6

</br>

The Tyrads SDK supports deeplinking to specific sections of the offerwall. When initializing or interacting with the SDK, you can specify a route to open a particular page. For campaign-specific routes, you'll need to provide the campaignID as well.

Available routes and their usage:
- `campaigns` - opens the Campaigns Page
- `campaigns-activated` - opens the Activated Campaigns Page
- `campaign-details` - opens the Campaign Details Page (requires campaignID)
- `campaign-tickets` - opens the Campaign Tickets Page (requires campaignID)

```js

// Default route (Campaigns Page)
Tyrads.showOffers();

// Explicitly specifying the Campaigns Page
Tyrads.showOffers({ route: "campaigns" });

// Activated Campaigns Page
Tyrads.showOffers({ route: "campaigns-activated" });

// Campaign Details Page (requires campaignID)
Tyrads.showOffers({ route: "campaign-details", campaignID: "your_campaign_id_here" });

// Campaign Tickets Page (requires campaignID)
Tyrads.showOffers({ route: "campaign-tickets", campaignID: "your_campaign_id_here" });

```
</details>

</br></br>

