import React from 'react';
import { TouchableOpacity, Text, StyleSheet,} from 'react-native';
import { useTranslation } from 'react-i18next';

interface MyGamesButtonProps {
  premiumColor?: string;
  onPress: (route: string) => void;
}

const MyGamesButton: React.FC<MyGamesButtonProps> = ({ premiumColor , onPress}) => {
  const { t } = useTranslation();
  return (
    <TouchableOpacity
      style={[styles.button, { backgroundColor: premiumColor || '#1C90DF' }]}
      onPress={() => onPress && onPress('campaigns-activated')}
    >
      <Text style={styles.buttonText}>{t('dashboard.my_games')}</Text>
    </TouchableOpacity>
  );
};

const styles = StyleSheet.create({
  button: {
    borderRadius: 8,
    paddingHorizontal: 16,
    paddingVertical: 8,
    height: 40,
    justifyContent: 'center',
    alignItems: 'center',
    marginHorizontal: 16,
    marginBottom: 16,
  },
  buttonText: {
    color: 'white',
    fontSize: 16,
    fontWeight: 'bold',
  },
});

export default MyGamesButton;