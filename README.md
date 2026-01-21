# iarroyo.github.io

Personal website built with modern Ember.js, showcasing UI/UX leadership and frontend expertise.

## Tech Stack

- **Framework**: [Ember.js](https://emberjs.com/) with Glimmer components (GTS)
- **Build**: [Vite](https://vite.dev) + [Embroider](https://github.com/embroider-build/embroider)
- **Styling**: [Tailwind CSS v4](https://tailwindcss.com/) (utility-first)
- **UI Components**: [ember-shadcn](https://shadcn-ember.com/) (Card, Badge, Separator, Button)
- **Language**: TypeScript

## Modern Ember Patterns

This project demonstrates modern Ember.js development:

- **GTS (Glimmer Template Syntax)** - Co-located templates with TypeScript
- **Template-only components** - Lightweight, functional components
- **Angle-bracket invocation** - Modern component syntax
- **No classic components** - Pure Glimmer components
- **No lifecycle hooks** - Declarative, reactive patterns

## Prerequisites

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (v18+)
- npm or [pnpm](https://pnpm.io/)

## Installation

```bash
git clone https://github.com/iarroyo/iarroyo.github.io.git
cd iarroyo.github.io
npm install
```

## Development

```bash
npm start
```

Visit [http://localhost:4200](http://localhost:4200)

## Build

```bash
npm run build
```

Output is generated in the `dist/` directory.

## Project Structure

```
app/
  components/
    hello-world.gts    # Main landing component
    ui/                # ember-shadcn components
      badge.gts
      button.gts
      card.gts
      separator.gts
  lib/
    utils.ts           # Tailwind class utilities (cn)
  styles/
    app.css            # Tailwind config + design tokens
  templates/
    application.gts    # Root template
```

## Design System

Uses ember-shadcn with the "new-york" style variant. CSS variables provide light/dark mode theming with oklch color space for consistent, accessible colors.

## License

MIT
