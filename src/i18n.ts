import i18n from 'i18next'
import { initReactI18next } from "react-i18next";
import zhCN from "@/locales/zh-CN/resources.json";
import enUS from "@/locales/en-US/resources.json";

i18n.use(initReactI18next).init({
  resources: {
    // 后面切换需要使用此处定义的key
    "zh-CN": {
      translation: zhCN,
    },
    "en-US": {
      translation: enUS,
    },
  },
  lng: "zh-CN",
  fallbackLng: "zh-CN",
  debug: process.env.NODE_ENV === "development",
  interpolation: {
    escapeValue: false, // not needed for react as it escapes by default
  },
});

export default i18n;
