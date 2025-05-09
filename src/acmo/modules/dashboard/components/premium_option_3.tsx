import React from 'react';
import { TouchableOpacity, View, } from 'react-native';
import AutoScrollPagerWithIndicators from './auto_scroller';
import OfferInfoSection from './offer_info_section';

interface PremiumOption3Props {
  data: TransformedCampaign[];
  premiumColor?: string;
  onCampaignPress?: (campaignId: number) => void;
}

const PremiumOption3: React.FC<PremiumOption3Props> = ({ data, onCampaignPress, premiumColor }) => {
  return (
    <AutoScrollPagerWithIndicators
      totalPages={data.length}
      premiumColor={premiumColor}
      content={(page) => (
        <TouchableOpacity
          key={page}
          style={{ flex: 1 }}
          activeOpacity={0.8}
          onPress={() => onCampaignPress && onCampaignPress(data[page]?.campaignId ?? 0)}
        >
          <View>
            {
              data[page] && (
                <OfferInfoSection
                  details={data[page]}
                  premiumColor={premiumColor}
                  style={{ paddingVertical: 23 }}
                  onButtonPress={() => onCampaignPress && onCampaignPress(data[page]?.campaignId ?? 0)}
                />
              )
            }
          </View>
        </TouchableOpacity>
      )}
    />
  );
};

export default PremiumOption3;