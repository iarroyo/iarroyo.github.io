# Project Instructions for Claude

## Before Committing

**ALWAYS run Prettier before committing changes:**

```bash
npx prettier --write <files>
```

Or format all changed files:

```bash
npx prettier . --write
```

This prevents recurring lint:format failures.

## Linting

Run all linters before pushing:

```bash
npm run lint
```

## Commit Guidelines

Follow the global CLAUDE.md commit guidelines (Conventional Commits, no author info).
