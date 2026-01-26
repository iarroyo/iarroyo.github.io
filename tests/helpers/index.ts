import {
  setupApplicationTest as upstreamSetupApplicationTest,
  setupRenderingTest as upstreamSetupRenderingTest,
  setupTest as upstreamSetupTest,
  type SetupTestOptions,
} from 'ember-qunit';
import type { TestContext } from '@ember/test-helpers';
import translationsForEn from 'virtual:ember-intl/translations/en';
import translationsForEs from 'virtual:ember-intl/translations/es';
import type IntlService from 'ember-intl/services/intl';

// This file exists to provide wrappers around ember-qunit's
// test setup functions. This way, you can easily extend the setup that is
// needed per test type.

function setupIntlTranslations(hooks: NestedHooks) {
  hooks.beforeEach(function (this: TestContext) {
    const intl = this.owner.lookup('service:intl') as unknown as IntlService;
    intl.addTranslations('en', translationsForEn);
    intl.addTranslations('es', translationsForEs);
    intl.setLocale(['en']);
  });
}

function setupApplicationTest(hooks: NestedHooks, options?: SetupTestOptions) {
  upstreamSetupApplicationTest(hooks, options);
  setupIntlTranslations(hooks);
}

function setupRenderingTest(hooks: NestedHooks, options?: SetupTestOptions) {
  upstreamSetupRenderingTest(hooks, options);
  setupIntlTranslations(hooks);
}

function setupTest(hooks: NestedHooks, options?: SetupTestOptions) {
  upstreamSetupTest(hooks, options);
  setupIntlTranslations(hooks);
}

export { setupApplicationTest, setupRenderingTest, setupTest };
