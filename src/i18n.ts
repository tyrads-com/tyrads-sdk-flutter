import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import AsyncStorage from '@react-native-async-storage/async-storage';


const resources = {
  en: {
    translation: {
      "dashboard": {
        "suggested_offers": "Suggested Offers",
        "more_offers": "More Offers",
        "my_games": "My Games",
        "play_button": "Play Now",
        "top_ranking": "Top {{number}}",
        "rewards_one": "Reward",
        "rewards_other": "Rewards"
      },
      
      
    }
  },
  es: {
    translation: {
      "dashboard": {
        "suggested_offers": "Ofertas sugeridas",
        "more_offers": "Más ofertas",
        "my_games": "Mis juegos",
        "play_button": "Jugar Ahora",
        "top_ranking": "Los mejores {{number}}",
        "rewards_one": "Recompensa",
        "rewards_other": "Recompensas"
      },
      
    }
  },
  id: {
    translation: {
      "dashboard": {
        "suggested_offers": "Penawaran yang Disarankan",
        "more_offers": "Penawaran Lainnya",
        "my_games": "Permainan Saya",
        "play_button": "Mainkan Sekarang",
        "top_ranking": "Top {{number}}",
        "rewards_one": "Hadiah",
        "rewards_other": "Hadiah"
      },
    }
  },
  in: {
    translation: {
      "dashboard": {
        "suggested_offers": "Penawaran yang Disarankan",
        "more_offers": "Penawaran Lainnya",
        "my_games": "Permainan Saya",
        "play_button": "Mainkan Sekarang",
        "top_ranking": "Top {{number}}",
        "rewards_one": "Hadiah",
        "rewards_other": "Hadiah"
      },
    }
  },
  ja: {
    translation: {
      "dashboard": {
        "suggested_offers": "おすすめのオファー",
        "more_offers": "その他のオファー",
        "my_games": "マイゲーム",
        "play_button": "プレイ する",
        "top_ranking": "トップ {{number}}",
        "rewards_one": "報酬",
        "rewards_other": "報酬"
      },
    }
  },
  ko: {
    translation: {
      "dashboard": {
        "suggested_offers": "추천 제안",
        "more_offers": "더 많은 제안",
        "my_games": "내 게임",
        "play_button": "플레이 하고",
        "top_ranking": "상위 {{number}}",
        "rewards_one": "보상",
        "rewards_other": "보상들"
      },
    }
  }
};

const initializeI18n = async () => {
  try {
    const language:any = await AsyncStorage.getItem('language');
    const storedLanguage: string = JSON.parse(language);
    console.log('storedLanguage', storedLanguage);
    
    const initialLanguage = storedLanguage;
    await i18n
      .use(initReactI18next)
      .init({
        resources,
        fallbackLng: 'en',
        lng: initialLanguage,
        debug: __DEV__,
        interpolation: {
          escapeValue: false,
        },
      });
  } catch (error) {
    console.error('Error initializing i18n:', error);
  }
};

initializeI18n();

export default i18n;