'use strict';

module.exports = {
  extends: ['stylelint-config-standard'],
  rules: {
    'import-notation': null,
    'lightness-notation': null,
    'hue-degree-notation': null,
    'rule-empty-line-before': null,
    'at-rule-no-unknown': [
      true,
      {
        ignoreAtRules: [
          'theme',
          'custom-variant',
          'layer',
          'apply',
          'tailwind',
          'config',
          'plugin',
          'source',
          'utility',
          'variant',
        ],
      },
    ],
  },
};
