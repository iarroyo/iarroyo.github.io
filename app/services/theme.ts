import Service from '@ember/service';
import { tracked } from '@glimmer/tracking';
import type Owner from '@ember/owner';

export type Theme = 'light' | 'dark';

export default class ThemeService extends Service {
  @tracked current: Theme = 'light';

  constructor(owner: Owner) {
    super(owner);
    this.loadFromStorage();
    this.applyTheme();
  }

  private loadFromStorage(): void {
    if (typeof window === 'undefined') return;

    const stored = localStorage.getItem('theme') as Theme | null;
    if (stored) {
      this.current = stored;
    } else if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
      this.current = 'dark';
    }
  }

  private applyTheme(): void {
    if (typeof document === 'undefined') return;

    if (this.current === 'dark') {
      document.documentElement.classList.add('dark');
    } else {
      document.documentElement.classList.remove('dark');
    }
  }

  toggle(): void {
    this.current = this.current === 'light' ? 'dark' : 'light';
    localStorage.setItem('theme', this.current);
    this.applyTheme();
  }
}

declare module '@ember/service' {
  interface Registry {
    theme: ThemeService;
  }
}
