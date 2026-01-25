import type { TOC } from '@ember/component/template-only';
import { t } from 'ember-intl';
import {
  Card,
  CardHeader,
  CardTitle,
  CardDescription,
  CardContent,
  CardFooter,
} from './ui/card';
import { Badge } from './ui/badge';
import { Separator } from './ui/separator';
import ThemeToggle from './ui/theme-toggle';
import LangToggle from './ui/lang-toggle';

interface HelloWorldSignature {
  Element: HTMLElement;
}

const HelloWorld: TOC<HelloWorldSignature> = <template>
  <main class="min-h-screen flex items-center justify-center p-4 sm:p-8">
    <Card class="w-full max-w-2xl shadow-xl shadow-primary/5 border-border/50">
      <CardHeader
        class="relative flex flex-col sm:flex-row items-center gap-5 pb-2"
      >
        <div class="absolute top-0 right-0 flex items-center gap-1">
          <LangToggle />
          <ThemeToggle />
        </div>
        <div class="relative">
          <div
            class="absolute -inset-1 rounded-full bg-gradient-to-br from-primary/40 to-accent/20 blur-sm"
          ></div>
          <img
            src="https://avatars.githubusercontent.com/u/490540?v=4"
            alt="Ivan Arroyo"
            class="relative w-24 h-24 sm:w-28 sm:h-28 rounded-full ring-4 ring-background shadow-lg"
          />
        </div>
        <div class="text-center sm:text-left">
          <CardTitle class="text-2xl sm:text-3xl font-bold">
            <h1>{{t "profile.greeting"}}</h1>
          </CardTitle>
          <CardDescription class="text-base mt-1">
            <span class="text-primary font-medium">{{t "profile.title"}}</span>
            <span class="text-muted-foreground">
              {{t "profile.subtitle"}}
            </span>
          </CardDescription>
        </div>
      </CardHeader>

      <CardContent class="space-y-6">
        <section aria-labelledby="about-heading">
          <h2 id="about-heading" class="sr-only">About me</h2>
          <p class="text-muted-foreground leading-relaxed">
            {{t "profile.about"}}
          </p>
        </section>

        <Separator />

        <section aria-labelledby="tech-heading">
          <h2
            id="tech-heading"
            class="text-sm font-semibold text-foreground mb-3 flex items-center gap-2"
          >
            <span
              class="w-1.5 h-1.5 rounded-full bg-primary"
              aria-hidden="true"
            ></span>
            {{t "profile.sections.technologies.title"}}
          </h2>
          <div class="flex flex-wrap gap-2">
            <Badge>{{t "profile.badges.ember"}}</Badge>
            <Badge @variant="secondary">{{t "profile.badges.next"}}</Badge>
            <Badge @variant="secondary">{{t "profile.badges.vue"}}</Badge>
            <Badge @variant="secondary">{{t "profile.badges.svelte"}}</Badge>
            <Badge @variant="outline">{{t
                "profile.badges.accessibility"
              }}</Badge>
            <Badge @variant="outline">{{t
                "profile.badges.design_systems"
              }}</Badge>
          </div>
          <p class="text-sm text-muted-foreground mt-3">
            {{t "profile.sections.technologies.description"}}
          </p>
        </section>

        <Separator />

        <section aria-labelledby="ai-heading">
          <h2
            id="ai-heading"
            class="text-sm font-semibold text-foreground mb-2 flex items-center gap-2"
          >
            <span
              class="w-1.5 h-1.5 rounded-full bg-primary"
              aria-hidden="true"
            ></span>
            {{t "profile.sections.ai.title"}}
          </h2>
          <p class="text-muted-foreground">
            {{t "profile.sections.ai.description"}}
          </p>
        </section>

        <Separator />

        <section aria-labelledby="personal-heading">
          <h2
            id="personal-heading"
            class="text-sm font-semibold text-foreground mb-2 flex items-center gap-2"
          >
            <span
              class="w-1.5 h-1.5 rounded-full bg-primary"
              aria-hidden="true"
            ></span>
            {{t "profile.sections.personal.title"}}
          </h2>
          <p class="text-muted-foreground">
            {{t "profile.sections.personal.description"}}
          </p>
        </section>
      </CardContent>

      <CardFooter
        class="flex flex-col sm:flex-row items-center justify-between gap-4 pt-4 border-t border-border/50"
      >
        <div class="flex items-center gap-3">
          <a
            href="https://github.com/iarroyo"
            target="_blank"
            rel="noopener noreferrer"
            class="text-muted-foreground hover:text-primary transition-colors"
            aria-label={{t "profile.aria.github"}}
          >
            <svg
              class="w-5 h-5"
              fill="currentColor"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                fill-rule="evenodd"
                d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                clip-rule="evenodd"
              ></path>
            </svg>
          </a>
          <a
            href="https://linkedin.com/in/iván-arroyo-escobar-2168383a"
            target="_blank"
            rel="noopener noreferrer"
            class="text-muted-foreground hover:text-primary transition-colors"
            aria-label={{t "profile.aria.linkedin"}}
          >
            <svg
              class="w-5 h-5"
              fill="currentColor"
              viewBox="0 0 24 24"
              aria-hidden="true"
            >
              <path
                d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"
              ></path>
            </svg>
          </a>
        </div>
        <p class="text-sm text-muted-foreground">
          {{t "profile.footer.built_with"}}
        </p>
      </CardFooter>
    </Card>
  </main>
</template>;

export { HelloWorld };
export default HelloWorld;
