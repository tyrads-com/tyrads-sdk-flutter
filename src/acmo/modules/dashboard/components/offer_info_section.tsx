import React from 'react';
import { Dimensions, Image, StyleSheet, Text, TouchableOpacity, View, type ViewStyle,} from "react-native";
import numeral from 'numeral';
import TextTicker from "react-native-text-ticker";
import { useTranslation } from "react-i18next";

const { width } = Dimensions.get('window');

interface OfferInfoSectionProps {
  details: TransformedCampaign;
  premiumColor?: string;
  style?: ViewStyle;
  onButtonPress: () => void;
}

const OfferInfoSection: React.FC<OfferInfoSectionProps> = ({ details, premiumColor, style, onButtonPress }) => {
  const { t } = useTranslation();

  return (
    <View style={[styles.infoContainer, style, { backgroundColor: premiumColor || '#1C90DF' }]}>
      <View style={styles.infoRow}>
        <View style={styles.leftInfo}>
          <Image
            style={styles.gameIcon}
            source={{ uri: details.thumbnail }}
            resizeMode="cover"
          />
          <View style={styles.gameDetails}>
            {details.title.length > 20 ? (
              <View style={{ overflow: 'hidden' }}>
                <TextTicker
                  style={styles.gameTitle}
                  duration={3000}
                  loop
                  bounce
                  repeatSpacer={50}
                  marqueeDelay={1000}
                >
                  {details.title}
                </TextTicker>
              </View>
            ) : (
              <Text style={styles.gameTitle} numberOfLines={1} ellipsizeMode="tail">
                {details.title}
              </Text>
            )}

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
          onPress={onButtonPress}
          style={styles.playButton}
        >
          <Text style={[styles.playButtonText, { color: premiumColor || '#1C90DF' }]}>
            {t('dashboard.play_button')}
          </Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  infoContainer: {
    width: width,
    paddingVertical: 8,
    paddingHorizontal: 16,
  },
  infoRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    width: '90%',
  },
  leftInfo: {
    flexDirection: 'row',
    alignItems: 'center',
    width: '68%',
  },
  gameIcon: {
    width: 50,
    height: 50,
    borderRadius: 8,
  },
  gameDetails: {
    marginLeft: 10,
  },
  gameTitle: {
    color: 'white',
    fontSize: 14,
    marginBottom: 4,
  },
  rewardDetails: {
    flexDirection: 'row',
    marginTop: 4,
  },
  coinIcon: {
    width: 18,
    height: 18,
  },
  points: {
    color: 'white',
    fontSize: 12,
    marginLeft: 4,
  },
  rewards: {
    color: 'lightgrey',
    fontSize: 11,
    fontStyle: 'italic',
  },
  playButton: {
    paddingHorizontal: 12,
    paddingVertical: 2,
    height: 30,
    borderRadius: 8,
    backgroundColor: 'white',
    alignItems: 'center',
    justifyContent: 'center',
  },
  playButtonText: {
    fontSize: 14,
    fontWeight: 'bold',
  },
});

export default OfferInfoSection;