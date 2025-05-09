import { NativeModules, Platform, View,} from 'react-native';

import TopOffers from './acmo/modules/dashboard/top_offers';
import { saveData } from './acmo/core/storage/storage';
import { I18nextProvider } from 'react-i18next';
import i18n from './i18n';

// const TyradsSdkComposeView = requireNativeComponent('TyradsSdkComposeView');


const LINKING_ERROR =
  `The package 'tyrads-sdk' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

const TyradsSdk = NativeModules.TyradsSdk
  ? NativeModules.TyradsSdk
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

const Tyrads = {
  init: (apiKey: string, apiSecret: string) => {
    return TyradsSdk.init(apiKey, apiSecret);
  },
  loginUser: async (userId: string) => {
    try {
      const data = await TyradsSdk.loginUser(userId);
      console.log("data from login: ", data);
  
      if (typeof data === "object") {
        await saveData('apiHeaders', JSON.stringify(data));
        await saveData('language', data.languageCode);
      } else if (typeof data === "string") {
        await saveData('apiHeaders', data);
        await saveData('language', JSON.parse(data).languageCode);
      }
  
      return data;
    } catch (err) {
      console.log(`error from login: ${err}`);
      return null;
    }
  },
  
  showOffers: ({
    launchMode = 3,
    route,
    campaignID = 0,
  }: { launchMode?: number; route?: string; campaignID?: number } = {}) => {
    if (Platform.OS === 'ios') {
      return TyradsSdk.showOffers(launchMode, route, campaignID);
    } else {
      return TyradsSdk.showOffers(route, campaignID);
    }
  },
  topPremiumOffers: ({
    showMore = true,
    showMyOffers = true,
    showMyOffersEmptyView = false,
    viewStyle = 1,
    launchMode = 2,
  }: {
    showMore?: boolean;
    showMyOffers?: boolean;
    showMyOffersEmptyView?: boolean;
    viewStyle?: number;
    launchMode?: number;
  } = {}) => {
    const handleNavigation = (route?: string, campaignID?: number) => {
      Tyrads.showOffers({ route: route, campaignID: campaignID, launchMode: launchMode});
    };
    return (
      <I18nextProvider i18n={i18n}>
        <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
          <TopOffers
            showMore={showMore}
            showMyOffers={showMyOffers}
            showMyOffersEmptyView={showMyOffersEmptyView}
            style={viewStyle}
            onNavigate={handleNavigation}
          />
        </View>
      </I18nextProvider>
    );
  },
};

export default Tyrads;
