import type { TOC } from '@ember/component/template-only';
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

interface HelloWorldSignature {
  Element: HTMLElement;
}

const HelloWorld: TOC<HelloWorldSignature> = <template>
  <main class="min-h-screen flex items-center justify-center p-4 sm:p-8">
    <Card class="w-full max-w-2xl">
      <CardHeader>
        <CardTitle class="text-2xl sm:text-3xl">
          <h1>Hello, I'm Ivan</h1>
        </CardTitle>
        <CardDescription class="text-base">
          UI/UX Manager with a deep focus on Ember.js
        </CardDescription>
      </CardHeader>

      <CardContent class="space-y-6">
        <section aria-labelledby="about-heading">
          <h2 id="about-heading" class="sr-only">About me</h2>
          <p class="text-muted-foreground leading-relaxed">
            I lead UI/UX teams with a strong technical foundation in frontend architecture,
            accessibility, and design systems. My work centers on building scalable,
            maintainable interfaces that serve both users and developers.
          </p>
        </section>

        <Separator />

        <section aria-labelledby="tech-heading">
          <h2 id="tech-heading" class="text-sm font-medium mb-3">
            Technologies &amp; Mindset
          </h2>
          <div class="flex flex-wrap gap-2">
            <Badge>Ember.js</Badge>
            <Badge @variant="secondary">Next.js</Badge>
            <Badge @variant="secondary">Vue</Badge>
            <Badge @variant="secondary">Svelte</Badge>
            <Badge @variant="outline">Accessibility</Badge>
            <Badge @variant="outline">Design Systems</Badge>
          </div>
          <p class="text-sm text-muted-foreground mt-3">
            Cross-framework perspective, not framework hopping. Each tool teaches
            something valuable about building great interfaces.
          </p>
        </section>

        <Separator />

        <section aria-labelledby="personal-heading">
          <h2 id="personal-heading" class="text-sm font-medium mb-2">
            Beyond the code
          </h2>
          <p class="text-muted-foreground">
            Dad of two twins. They've taught me more about patience, iteration,
            and the importance of a good night's sleep than any sprint retrospective.
          </p>
        </section>
      </CardContent>

      <CardFooter class="text-sm text-muted-foreground">
        Built with Ember.js, Tailwind CSS, and ember-shadcn
      </CardFooter>
    </Card>
  </main>
</template>;

export { HelloWorld };
export default HelloWorld;
