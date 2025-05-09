import React, { useRef, useState, useEffect } from 'react';
import { View, ScrollView, StyleSheet, Dimensions } from 'react-native';

const { width } = Dimensions.get('window');

interface AutoScrollPagerWithIndicatorsProps {
  totalPages: number;
  delayInMillis?: number;
  premiumColor?: string;
  content: (index: number) => React.ReactNode;
}

const AutoScrollPagerWithIndicators: React.FC<AutoScrollPagerWithIndicatorsProps> = ({
  totalPages,
  delayInMillis = 5000,
  premiumColor,
  content,
}) => {
  const [currentPage, setCurrentPage] = useState(0);
  const scrollViewRef = useRef<ScrollView>(null);

  useEffect(() => {
    const intervalId = setInterval(() => {
      const nextBanner = (currentPage + 1) % totalPages;
      setCurrentPage(nextBanner);
      scrollViewRef.current?.scrollTo({ x: nextBanner * width, animated: true });
    }, delayInMillis);

    return () => clearInterval(intervalId);
  }, [currentPage, totalPages, delayInMillis]);

  useEffect(() => {
    scrollViewRef.current?.scrollTo({ x: currentPage * width, animated: false });
  }, [currentPage]);

  const renderIndicators = () => {
    const indicators: React.ReactNode[] = [];
    for (let i = 0; i < totalPages; i++) {
      indicators.push(
        <View
          key={i}
          style={[
            styles.indicator,
            { backgroundColor: currentPage === i ? (premiumColor|| '#1C90DF') : 'lightgray' },
          ]}
        />
      );
    }
    return <View style={styles.indicatorContainer}>{indicators}</View>;
  };

  return (
    <View style={styles.container}>
      <ScrollView
        ref={scrollViewRef}
        horizontal
        pagingEnabled
        showsHorizontalScrollIndicator={true}
        scrollEnabled={false}
        contentContainerStyle={{ width: totalPages * width }}
      >
        {Array.from({ length: totalPages }, (_, i) => content(i))}
      </ScrollView>
      {renderIndicators()}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
  },
  indicatorContainer: {
    flexDirection: 'row',
    marginTop: 10,
  },
  indicator: {
    width: 8,
    height: 8,
    borderRadius: 4,
    marginHorizontal: 2,
  },
});

export default AutoScrollPagerWithIndicators;