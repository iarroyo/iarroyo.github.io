import type ApplicationInstance from '@ember/application/instance';
import type IntlService from 'ember-intl/services/intl';
import translationsForEn from 'virtual:ember-intl/translations/en';
import translationsForEs from 'virtual:ember-intl/translations/es';

export function initialize(appInstance: ApplicationInstance): void {
  const intl = appInstance.lookup('service:intl') as unknown as IntlService;

  // Add translations
  intl.addTranslations('en', translationsForEn);
  intl.addTranslations('es', translationsForEs);

  // Get stored locale or detect from browser
  let locale = localStorage.getItem('locale');

  if (!locale) {
    const browserLang = navigator.language.split('-')[0];
    locale = browserLang === 'es' ? 'es' : 'en';
  }

  intl.setLocale([locale]);
}

export default {
  initialize,
};
