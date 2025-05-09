import AsyncStorage from '@react-native-async-storage/async-storage';

export const saveData = async (key: string, object: any): Promise<void> => {
  try {
    const jsonValue: string = JSON.stringify(object);
    await AsyncStorage.setItem(key, jsonValue);
  } catch (e: any) {
    if (e instanceof Error) {
      console.error('Error saving object:', e.message);
    } else {
      console.error('An unknown error occurred while saving.');
    }
  }
};

export const getData = async <T>(key: string): Promise<T | null> => {
  try {
    const jsonValue: string | null = await AsyncStorage.getItem(key);
    return jsonValue != null ? JSON.parse(jsonValue) as T : null;
  } catch (e: any) {
    if (e instanceof Error) {
      console.error('Error getting object:', e.message);
    } else {
      console.error('An unknown error occurred while getting.');
    }
    return null;
  }
};