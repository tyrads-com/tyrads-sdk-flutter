import React, { useEffect, useRef } from 'react';
import { Animated, View, StyleSheet, Dimensions, type TextStyle,} from 'react-native';

interface MarqueeTextProps {
  text: string;
  speed?: number;
  repeat?: number;
  style?: TextStyle;
}

const MarqueeText: React.FC<MarqueeTextProps> = ({ text, speed = 15, repeat = 100, style }) => {
  const translateX = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    const textWidth = text.length * 4;
    const screenWidth = Dimensions.get('window').width;

    const animation = Animated.loop(
      Animated.sequence([
        Animated.timing(translateX, {
          toValue: -textWidth,
          duration: (textWidth + screenWidth) * speed,
          useNativeDriver: true,
        }),
        Animated.timing(translateX, {
          toValue: screenWidth,
          duration: 0,
          useNativeDriver: true,
        }),
      ]),
      { iterations: repeat }
    );

    animation.start();

    return () => animation.stop();
  }, [text, speed, repeat, translateX]);

  return (
    <View style={styles.container}>
      <Animated.Text
        numberOfLines={1}
        style={[styles.text, style, { transform: [{ translateX }] }]}
      >
        {text}
      </Animated.Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    overflow: 'hidden',
    width: '100%',
  },
  text: {
    fontSize: 16,
    fontWeight: 'bold',
  },
});

export default MarqueeText;