import { Button, StyleSheet, View, TextInput, SafeAreaView, ScrollView } from 'react-native';
import Tyrads from '@tyrads.com/tyrads-sdk';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { useState, useEffect } from 'react';


export default function App() {
  const [apiKey, setApiKey] = useState('YOUR_API_KEY');
  const [apiSecret, setApiSecret] = useState('YOUR_API_SECRET');
  const [userId, setUserId] = useState('YOUR_USER_ID');

  const [isLoading, setLoading] = useState(true);

  useEffect(() => {
    loadStoredCredentials();
    initialization()
  }, []);

  const initialization = async () => {
    setTimeout(async () => {
      await Tyrads.init(apiKey, apiSecret);
    }, 1000);
    try{
      await Tyrads.loginUser(userId);
    }catch (err){
      console.log(err);
    }finally{
      setLoading(false);
    }

    console.log('initialized');
  }

  const loadStoredCredentials = async () => {
    const storedApiKey = await AsyncStorage.getItem('apiKey');
    const storedApiSecret = await AsyncStorage.getItem('apiSecret');
    const storedUserId = await AsyncStorage.getItem('userId');

    if (storedApiKey) setApiKey(storedApiKey);
    if (storedApiSecret) setApiSecret(storedApiSecret);
    if (storedUserId) setUserId(storedUserId);
  };

  const saveCredentials = async () => {
    await AsyncStorage.setItem('apiKey', apiKey);
    await AsyncStorage.setItem('apiSecret', apiSecret);
    await AsyncStorage.setItem('userId', userId);
  };

  const handleButtonClick = async () => {
    console.log('Button Clicked');
    await saveCredentials();
    Tyrads.init(apiKey, apiSecret);
    await Tyrads.loginUser(userId);
    Tyrads.showOffers({ launchMode: 2 });
  };

  return (
    <SafeAreaView style = {{flex : 1}}>
      <ScrollView style = {{marginTop : 40}}>
          <View style={styles.container}>
          {!isLoading && <Tyrads.topPremiumOffers
          viewStyle = {2}
          />}
          <View style = {{height : 20}}></View>
          <TextInput
            style={styles.input}
            placeholder="API Key"
            value={apiKey}
            onChangeText={setApiKey}
          />
          <TextInput
            style={styles.input}
            placeholder="API Secret"
            value={apiSecret}
            onChangeText={setApiSecret}
          />
          <TextInput
            style={styles.input}
            placeholder="User ID"
            value={userId}
            onChangeText={setUserId}
          />
          <Button title="Show Offers" onPress={handleButtonClick} />
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 20,
  },
  input: {
    width: '100%',
    height: 40,
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 5,
    marginBottom: 10,
    paddingHorizontal: 10,
  },
});
