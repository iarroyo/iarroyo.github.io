import Component from '@glimmer/component';
import { service } from '@ember/service';
import { on } from '@ember/modifier';
import { t } from 'ember-intl';
import type ThemeService from 'iarroyo-site/services/theme';

interface ThemeToggleSignature {
  Element: HTMLButtonElement;
}

export default class ThemeToggle extends Component<ThemeToggleSignature> {
  @service declare theme: ThemeService;

  toggle = () => {
    this.theme.toggle();
  };

  <template>
    <button
      type="button"
      {{on "click" this.toggle}}
      class="p-2 rounded-lg text-muted-foreground hover:text-primary hover:bg-primary/10 transition-colors"
      aria-label={{t "profile.aria.theme_toggle"}}
      ...attributes
    >
      {{#if this.isDark}}
        {{! Sun icon }}
        <svg
          class="w-5 h-5"
          fill="none"
          stroke="currentColor"
          viewBox="0 0 24 24"
          aria-hidden="true"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            stroke-width="2"
            d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364 6.364l-.707-.707M6.343 6.343l-.707-.707m12.728 0l-.707.707M6.343 17.657l-.707.707M16 12a4 4 0 11-8 0 4 4 0 018 0z"
          ></path>
        </svg>
      {{else}}
        {{! Moon icon }}
        <svg
          class="w-5 h-5"
          fill="none"
          stroke="currentColor"
          viewBox="0 0 24 24"
          aria-hidden="true"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            stroke-width="2"
            d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z"
          ></path>
        </svg>
      {{/if}}
    </button>
  </template>

  get isDark() {
    return this.theme.current === 'dark';
  }
}
