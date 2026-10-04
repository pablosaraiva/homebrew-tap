# pablosaraiva/tap

A Homebrew tap for [Phosphor](https://github.com/pablosaraiva/homebrew-tap/releases) — a terminal-styled personal life dashboard for macOS: one screen with your calendar, reminders, accounting ledger, weather, notes and an AI agent running them with you. Private source; binary releases only.

## Install

    brew tap pablosaraiva/tap
    brew install phosphor

Homebrew resolves the prerequisites (Java, PostgreSQL, Ollama). Then:

    phosphor start

The dashboard opens at http://localhost:8080 and redirects to the setup wizard — the AI lane is required (a local or remote Ollama, or ollama.com cloud models through a signed-in Ollama); every other integration (Apple Calendar, Reminders, Obsidian vault, Beancount ledger, weather, web search, voice, Messages) is optional, validated live and skippable at any time.

See `brew info phosphor` and the formula's caveats for details.

## Formulae

| formula | description |
| --- | --- |
| **phosphor** | the dashboard jar + the `phosphor` control command |
