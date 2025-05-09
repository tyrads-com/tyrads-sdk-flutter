import React, { type ReactNode } from 'react';
import { View, StyleSheet, type ViewStyle } from 'react-native';

interface CustomCardProps {
  children: ReactNode;
  style?: ViewStyle;
}

const CustomCard: React.FC<CustomCardProps> = ({ children, style }) => {
  return <View style={[styles.card, style]}>{children}</View>;
};

const styles = StyleSheet.create({
  card: {
    backgroundColor: 'white',
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    borderBottomLeftRadius: 14,
    borderBottomRightRadius: 14,
    paddingTop: 6,
    paddingBottom: 5,
    shadowColor: '#000',
    shadowOffset: { width: 4, height: 4 },
    shadowOpacity: 0.2,
    shadowRadius: 4,
    elevation: 4,
    alignSelf: 'center',
  },
});

export default CustomCard;