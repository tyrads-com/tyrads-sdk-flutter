interface TransformedCampaign {
  campaignId: number;
  appId: number;
  title: string;
  creativePackName: string;
  fileUrl: string;
  points: number;
  rewards: number;
  currency: any;
  thumbnail: string;
  premium: boolean;
  sortingScore: number;
}

interface Campaign {
  campaignId: number;
  campaignName: string;
  campaignDescription: null | string;
  createdOn: string;
  sortingScore: number;
  status: string;
  expiredOn: null | string;
  hasPlaytimeEvents: boolean;
  app: {
    id: number;
    title: string;
    packageName: string;
    rating: number;
    shortDescription: string;
    store: string;
    storeCategory: string;
    previewUrl: string;
    thumbnail: string;
    confidenceScore: number;
    securityLabel: string;
  };
  currency: {
    name: string;
    symbol: string;
    adUnitName: string;
    adUnitCurrencyName: string;
    adUnitCurrencyConversion: number;
    adUnitCurrencyIcon: string;
  };
  campaignPayout: {
    totalEvents: number;
    totalPayout: number;
    totalPlayablePayout: number;
    totalMicrochargePayout: number;
    totalPayoutConverted: number;
    totalPlayablePayoutConverted: number;
    totalMicrochargePayoutConverted: number;
  };
  tracking: {
    impressionUrl: string;
    clickUrl: string;
  };
  targeting: {
    os: string;
    targetingType: string;
    reward: {
      rewardDifficulty: string;
      incentRewardDescription: string;
    };
  };
  creative: {
    creativeUrl: string;
    creativePacks: {
      creativePackId: null | number;
      creativePackName: string;
      languageName: string;
      languageCode: string;
      creatives: {
        creativeId: null | number;
        creativeName: string;
        callToAction: string;
        text: string;
        byteSize: string;
        fileUrl: string;
        duration: string;
        creativeType: {
          name: string;
          type: string;
          width: string;
          height: string;
          creativeCategoryType: string;
        };
      }[];
    }[];
  };
  isRetryDownload: boolean;
  capReached: boolean;
  premium: boolean;
}