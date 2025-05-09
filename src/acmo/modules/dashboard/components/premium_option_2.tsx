import React from 'react';
import {
  View,
  Text,
  Image,
  StyleSheet,
  Dimensions,
  TouchableOpacity,
} from 'react-native';
import AutoScrollPagerWithIndicators from './auto_scroller';
import OfferInfoSection from './offer_info_section';

const { width } = Dimensions.get('window');

interface PremiumOption2Props {
  data: TransformedCampaign[];
  premiumColor?: string;
  onCampaignPress?: (campaignId: number) => void;
}

const PremiumOption2: React.FC<PremiumOption2Props> = ({ data, onCampaignPress, premiumColor }) => {
  return (
    <AutoScrollPagerWithIndicators
      totalPages={data.length}
      premiumColor={premiumColor}
      content={(page) => (
        <TouchableOpacity
          key={page}
          onPress={() => onCampaignPress && onCampaignPress(data[page]?.campaignId ?? 0)
          }
          activeOpacity={0.8}
        >
          {data[page] && (
            <>
              <OfferBanner details={data[page]} index={page} premiumColor={premiumColor} />
              <OfferInfoSection details={data[page]} premiumColor={premiumColor} onButtonPress={() => onCampaignPress && onCampaignPress(data[page]?.campaignId ?? 0)}/>
            </>
          )}
        </TouchableOpacity>
      )}
    />
  );
};

interface OfferBannerProps {
  details: TransformedCampaign;
  index: number;
  premiumColor?: string;
}

const OfferBanner: React.FC<OfferBannerProps> = ({ details, index, premiumColor }) => {
  return (
    <View style={styles.bannerContainer}>
      <Image style={styles.bannerImage} source={{ uri: details.fileUrl }} resizeMode="cover" />
      <View style={styles.starContainer}>
        <Image
          source={require('../../../../assets/images/premium_star.png')}
          style={[styles.starIcon, { tintColor: premiumColor || '#1C90DF' }]}
        />
        <Text style={styles.index} numberOfLines={1} ellipsizeMode="tail">
          {index + 1}
        </Text>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  bannerContainer: {
    width: width,
    height: 180,
  },
  bannerImage: {
    flex: 1,
  },
  starContainer: {
    position: 'absolute',
    top: 10,
    left: 10,
    backgroundColor: 'rgba(0,0,0,0)',
  },
  starIcon: {
    width: 30,
    height: 30,
  },
  index: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    textAlign: 'center',
    textAlignVertical: 'center',
    color: 'white',
    fontSize: 14,
    fontWeight: 'bold',
  },
});

export default PremiumOption2;