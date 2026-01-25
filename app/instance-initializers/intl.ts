import type ApplicationInstance from '@ember/application/instance';
import type IntlService from 'ember-intl/services/intl';

export function initialize(appInstance: ApplicationInstance): void {
  const intl = appInstance.lookup('service:intl') as unknown as IntlService;

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
