import axios, { type AxiosResponse } from 'axios';
import { getData } from '../../core/storage/storage';

interface ApiHeaders {
  languageCode: string;
  premiumColor: string;
  xUserId: string;
  xApiKey: string;
  xApiSecret: string;
  xSdkPlatform: string;
  xSdkVersion: string;
  userAgent: string;
}

const transformCampaigns = (campaigns: Campaign[]): TransformedCampaign[] => {
  return campaigns.map((campaign) => ({
    campaignId: campaign.campaignId || 0,
    appId: campaign.app?.id || 0,
    title: campaign.app?.title || 'Unknown Title',
    creativePackName:
      campaign.creative?.creativePacks?.[0]?.creativePackName || '',
    fileUrl:
      campaign.creative?.creativePacks?.[0]?.creatives?.[0]?.fileUrl || '',
    points: campaign.campaignPayout?.totalPayoutConverted || 0,
    rewards: campaign.campaignPayout?.totalEvents || 0,
    currency: campaign.currency || {},
    thumbnail: campaign.app?.thumbnail || '',
    premium: campaign.premium || false,
    sortingScore: campaign.sortingScore || 0,
  }));
};

export const fetchCampaignsData = async (
  // setLanguage: (language: string) => void,
  setPremiumColor: (color: string) => void,
  setCampaigns: (campaigns: TransformedCampaign[]) => void,
  setError: (error: string) => void,
  setIsLoading: (loading: boolean) => void
): Promise<void> => {
  setIsLoading(true);

  try {
    const data: any = await getData('apiHeaders');
    if (!data) {
      throw new Error('apiHeaders data not found.');
    }
    const parsedHeaderData: ApiHeaders = JSON.parse(data);
    // setLanguage(parsedHeaderData.languageCode);
    setPremiumColor(parsedHeaderData.premiumColor);

    const headers = {
      'Content-Type': 'application/json',
      Accept: 'application/json',
      'X-User-ID': parsedHeaderData.xUserId,
      'X-API-Key': parsedHeaderData.xApiKey,
      'X-API-Secret': parsedHeaderData.xApiSecret,
      'X-SDK-Platform': parsedHeaderData.xSdkPlatform,
      'X-SDK-Version': parsedHeaderData.xSdkVersion,
      'User-Agent': parsedHeaderData.userAgent,
    };

    const response: AxiosResponse<{ data: Campaign[] }> = await axios.get(
      `https://api.tyrads.com/v2.0/campaigns?lang=${parsedHeaderData.languageCode}`,
      {
        headers: headers,
      }
    );

    const transformedCampaigns = transformCampaigns(response.data.data);

    const hotOffers = transformedCampaigns
    .sort((a, b) => {
      if (a.premium && !b.premium) return -1;
      if (!a.premium && b.premium) return 1;
      return b.sortingScore - a.sortingScore;
    })
    .filter((item) => item.points > 0)
    .slice(0, 5);

    setCampaigns(hotOffers);
  } catch (error: any) {
    if (axios.isAxiosError(error) && error.response) {
      console.log('Response Error:', error.response.data);
      console.log('Status Code:', error.response.status);
      console.log('Response Headers:', error.response.headers);
    } else if (axios.isAxiosError(error) && error.request) {
      console.log('No Response from API:', error.request);
    } else {
      console.log('Error setting up request:', error.message);
    }
    setError('Something went wrong, please try again');
  } finally {
    setIsLoading(false);
  }
};