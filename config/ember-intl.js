'use strict';

module.exports = function () {
  return {
    fallbackLocale: 'en',
    requiresTranslation() {
      // Don't warn for missing translations in development
      return false;
    },
  };
};
