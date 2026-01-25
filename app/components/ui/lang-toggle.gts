import Component from '@glimmer/component';
import { service } from '@ember/service';
import { on } from '@ember/modifier';
import { t } from 'ember-intl';
import type IntlService from 'ember-intl/services/intl';

interface LangToggleSignature {
  Element: HTMLButtonElement;
}

export default class LangToggle extends Component<LangToggleSignature> {
  @service declare intl: IntlService;

  toggle = () => {
    const currentLocale = this.intl.primaryLocale;
    const newLocale = currentLocale === 'en' ? 'es' : 'en';
    this.intl.setLocale([newLocale]);
    localStorage.setItem('locale', newLocale);
  };

  get currentLang() {
    return this.intl.primaryLocale?.toUpperCase() ?? 'EN';
  }

  <template>
    <button
      type="button"
      {{on "click" this.toggle}}
      class="px-2 py-1 rounded-lg text-sm font-medium text-muted-foreground hover:text-foreground hover:bg-muted transition-colors"
      aria-label={{t "profile.aria.language_toggle"}}
      ...attributes
    >
      {{this.currentLang}}
    </button>
  </template>
}
