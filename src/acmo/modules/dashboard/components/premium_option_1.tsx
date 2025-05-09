import React from 'react';
import numeral from 'numeral';
import {
  View,
  Text,
  Image,
  TouchableOpacity,
  StyleSheet,
} from 'react-native';
import TextTicker from 'react-native-text-ticker';
import { useTranslation } from 'react-i18next';

interface PremiumOption1Props {
  data: TransformedCampaign[];
  premiumColor?: string;
  onCampaignPress?: (campaignId: number) => void;
}

const PremiumOption1: React.FC<PremiumOption1Props> = ({ data, onCampaignPress, premiumColor }) => {
  const { t } = useTranslation();
  console.log("Prmium Color", premiumColor);

  return (
    <View>
      {data.map((item, index) => (
        <TouchableOpacity
          key={index}
          onPress={() => onCampaignPress && onCampaignPress(item.campaignId)}
          style={styles.itemContainer}
          activeOpacity={0.75}
        >
          <View style={{ flexDirection: 'row', flex: 8, marginRight: 10 }}>
            <Image source={{ uri: item.thumbnail }} style={styles.thumbnail} />
            <View style={styles.infoContainer}>
              <View style={{ width: '100%' }}>
                {item.title.length > 25 ? (
                  <View style={{ overflow: 'hidden' }}>
                    <TextTicker
                      style={styles.titleText}
                      duration={3000}
                      loop
                      bounce
                      repeatSpacer={50}
                      marqueeDelay={1000}
                    >
                      {item.title}
                    </TextTicker>
                  </View>
                ) : (
                  <Text numberOfLines={1} style={styles.titleText}>
                    {item.title}
                  </Text>
                )}
              </View>
              <View style={styles.infoRow}>
                <View style={[styles.rankContainer, { backgroundColor: premiumColor || '#1C90DF' }]}>
                  <Text numberOfLines={1} style={styles.rankText} adjustsFontSizeToFit={true}>
                    {t('dashboard.top_ranking', { number: index + 1 })}
                  </Text>
                </View>
                <View style={styles.rewardDetails}>
                  <Image
                    source={{ uri: item.currency.adUnitCurrencyIcon }}
                    resizeMode="contain"
                    style={styles.coinIcon}
                  />
                  <Text style={styles.points}>{numeral(item.points).format("0.00a").toUpperCase()}</Text>
                  <Text style={styles.points}>{''}{item.currency.adUnitCurrencyName}</Text>
                </View>
              </View>
            </View>
          </View>
          <View style={[styles.playButton, { backgroundColor: premiumColor || '#1C90DF' }]}>
            <Text style={styles.playButtonText}>{t('dashboard.play_button')}</Text>
          </View>
        </TouchableOpacity>
      ))}
    </View>
  );
};

const styles = StyleSheet.create({
  itemContainer: {
    flexDirection: 'row',
    flex: 1,
    width: '100%',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 8,
  },
  thumbnail: {
    height: 40,
    width: 40,
    borderRadius: 10,
  },
  infoContainer: {
    marginLeft: 8,
  },
  titleText: {
    fontSize: 14,
    fontWeight: 'bold',
  },
  infoRow: {
    flexDirection: 'row',
    alignItems: 'center',
    alignContent: 'center',
  },
  rankContainer: {
    marginTop: 4,
    borderRadius: 12,
    paddingHorizontal: 4,
    paddingVertical: 2,
    width: 43,
    alignItems: 'center',
  },
  rankText: {
    fontSize: 10,
    color: 'white',
    fontWeight: 'bold',
  },
  rewardDetails: {
    flexDirection: 'row',
    alignItems: 'center',
    marginTop: 4,
    left: 4,
  },
  coinIcon: {
    width: 14,
    height: 14,
  },
  points: {
    fontSize: 13,
    marginLeft: 4,
    fontWeight: '500',
  },
  rewards: {
    fontSize: 10,
    fontStyle: 'italic',
  },
  playButton: {
    paddingHorizontal: 12,
    paddingVertical: 5,
    height: 30,
    borderRadius: 8,
    alignItems: 'center',
    justifyContent: 'center',
  },
  playButtonText: {
    fontSize: 14,
    fontWeight: 'bold',
    color: 'white',
  },
});

export default PremiumOption1;