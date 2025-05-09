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
import numeral from 'numeral';
import { useTranslation } from 'react-i18next';

const { width } = Dimensions.get('window');

interface PremiumOption4Props {
  data: TransformedCampaign[];
  premiumColor?: string;
  onCampaignPress?: (campaignId: number) => void;
}

const PremiumOption4: React.FC<PremiumOption4Props> = ({ data, onCampaignPress, premiumColor }) => {
  return (
    <AutoScrollPagerWithIndicators
      totalPages={data.length}
      premiumColor={premiumColor}
      content={(page) => (
        <View key={page}>
          {
            data[page] && (
              <OfferBanner details={data[page]} index={page} premiumColor={premiumColor}  onCampaignPress={onCampaignPress} />
            )
          }
        </View>
      )}
    />
  );
};

interface OfferBannerProps {
  details: TransformedCampaign;
  index: number;
  onCampaignPress?: (campaignId: number) => void;
  premiumColor?: string;
}

const OfferBanner: React.FC<OfferBannerProps> = ({ details, index, onCampaignPress, premiumColor }) => {
  const { t } = useTranslation();
  return (
    <View style={styles.outerContainer}>
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
      <View style={styles.titleContainer}>
        <View style={{ flexDirection: 'row', flex: 8, width: '70%' }}>
          <Image style={styles.gameIcon} source={{ uri: details.thumbnail }} resizeMode="cover" />
          <View style={{ marginLeft: 10 }}>
            <Text style={styles.titleText}>{details.title}</Text>
            <View style={styles.rewardDetails}>
              <Image
                source={{ uri: details.currency.adUnitCurrencyIcon }}
                resizeMode="contain"
                style={styles.coinIcon}
              />
              <Text style={styles.points}>{numeral(details.points).format("0.00a").toUpperCase()}</Text>
              <Text style={styles.points}>{''}{details.currency.adUnitCurrencyName}</Text>
              <Text style={styles.rewards}>
                {' '}
                {details.rewards} {t('dashboard.rewards', { count: details.rewards })}
              </Text>
            </View>
          </View>
        </View>
        <TouchableOpacity
          onPress={() => onCampaignPress && onCampaignPress(details.campaignId)}
          style={[styles.playButton, { backgroundColor: premiumColor || '#1C90DF' }]}
        >
          <Text style={styles.playButtonText}>{t('dashboard.play_button')}</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  outerContainer: {},
  bannerContainer: {
    width: width,
    height: 190,
  },
  bannerImage: {
    flex: 1,
    borderRadius: 8,
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
  titleContainer: {
    flex: 1,
    width: '91.5%',
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 8,
    backgroundColor: 'rgba(0,0,0,0.5)',
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
  },
  titleText: {
    color: 'white',
    fontSize: 14,
    fontWeight: 'bold',
    marginBottom: 4,
  },
  gameIcon: {
    width: 35,
    height: 35,
    borderRadius: 8,
  },
  coinIcon: {
    width: 16,
    height: 16,
  },
  points: {
    fontSize: 12,
    marginLeft: 4,
    fontWeight: 'bold',
    color: 'white',
  },
  rewardDetails: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  rewards: {
    fontSize: 10,
    fontStyle: 'italic',
    color: 'lightgray',
  },
  playButton: {
    paddingHorizontal: 12,
    paddingVertical: 2,
    height: 31,
    borderRadius: 8,
    alignItems: 'center',
    justifyContent: 'center',
  },
  playButtonText: {
    fontSize: 16,
    fontWeight: 'bold',
    color: 'white',
  },
});

export default PremiumOption4;