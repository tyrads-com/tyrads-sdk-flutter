import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  ActivityIndicator,
  StyleSheet,
} from 'react-native';
import { fetchCampaignsData } from './repository';
import PremiumHeaderSection from './components/premium_header';
import CustomCard from './components/custom_card';
import MyGamesButton from './components/my_games_button';
import PremiumOption1 from './components/premium_option_1';
import PremiumOption2 from './components/premium_option_2';
import PremiumOption3 from './components/premium_option_3';
import PremiumOption4 from './components/premium_option_4';

interface TopOffersProps {
  showMore?: boolean;
  showMyOffers?: boolean;
  showMyOffersEmptyView?: boolean;
  style?: number;
  onNavigate: (route?: string, campaignID?: number) => void;
}

const TopOffers: React.FC<TopOffersProps> = ({
  showMore,
  showMyOffers = false,
  showMyOffersEmptyView = false,
  style = 1,
  onNavigate
}) => {
  const [campaigns, setCampaigns] = useState<TransformedCampaign[]>([]);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  const [premiumColor, setPremiumColor] = useState<string>('#1C90DF');
  // const [language, setLanguage] = useState<string>('en');

  useEffect(() => {
    fetchCampaignsData(
      // setLanguage,
      setPremiumColor,
      setCampaigns,
      setError,
      setIsLoading
    );
  }, []);

  const handleShowOffers = () => {
    onNavigate();
  };
  const handleCampaignPress = (campaignId: number) => {
    onNavigate('campaign-details',campaignId );
  };

  const handleMoreOffersPress = (route: string) => {
    onNavigate(route);
  };

  if (isLoading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color="#007AFF" />
      </View>
    );
  }

  if (error) {
    return (
      <View style={styles.errorContainer}>
        <Text style={styles.errorText}>Error: {error}</Text>
      </View>
    );
  }

  if (campaigns.length === 0) {
    if (showMyOffersEmptyView) {
      return (
        <View style={styles.noCampaignContainer}>
          <Text>No campaigns available</Text>
        </View>
      );
    } else {
      return <View />;
    }
  }

  return (
    <CustomCard style={{}}>
      <View style={{ flex: 1 }}>
        <PremiumHeaderSection showMore={showMore} premiumColor={premiumColor} onShowOffers={handleShowOffers} />
        <View style={styles.headerSpacer} />
        {(() => {
          switch (style) {
            case 1:
              return (
                <PremiumOption1 data={campaigns} premiumColor={premiumColor} onCampaignPress={handleCampaignPress} />
              );
            case 2:
              return (
                <PremiumOption2 data={campaigns} premiumColor={premiumColor}  onCampaignPress={handleCampaignPress} />
              );
            case 3:
              return (
                <PremiumOption3 data={campaigns} premiumColor={premiumColor}  onCampaignPress={handleCampaignPress} />
              );
            case 4:
              return (
                <PremiumOption4 data={campaigns} premiumColor={premiumColor} onCampaignPress={handleCampaignPress} />
              );
            default:
              return <Text>Please specify a correct style</Text>;
          }
        })()}
        <View style={styles.gameListSpacer} />
        {showMyOffers && <MyGamesButton premiumColor={premiumColor} onPress={handleMoreOffersPress}/>}
      </View>
    </CustomCard>
  );
};

const styles = StyleSheet.create({
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  errorContainer: {
    padding: 16,
  },
  errorText: {
    color: 'red',
  },
  noCampaignContainer: {
    padding: 16,
  },
  headerSpacer: {
    height: 10,
  },
  gameListSpacer: {
    height: 10,
  },
});

export default TopOffers;
