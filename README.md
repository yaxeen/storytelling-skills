# Storytelling Skills

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-7-blue.svg)](skills/)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-compatible-8A2BE2.svg)](https://claude.com/claude-code)
[![Package skills](https://github.com/yaxeen/storytelling-skills/actions/workflows/package-skills.yml/badge.svg)](https://github.com/yaxeen/storytelling-skills/actions/workflows/package-skills.yml)

A suite of seven [Claude Code](https://claude.com/claude-code) skills that apply the same six psychology-based storytelling levers across every content format — short-form video, long-form YouTube, titles & thumbnails, carousels, email, and website wireframes.

General-purpose: built for **any niche, any business, any workspace**. No format-specific jargon, no narrow examples.

---

## The Six Levers

Every skill is built on one shared engine — six levers that make the human brain stop, feel, and keep going. The full psychology lives in [`storytelling-hooks`](skills/storytelling-hooks/SKILL.md); the others recap it and link back.

| # | Lever | Job |
|---|-------|-----|
| 1 | **Curiosity gap** | Open a loop, don't close it |
| 2 | **Emotional mirror** | Target the feeling, not the fact |
| 3 | **Conflict engine** | Goal + obstacle = tension |
| 4 | **Relatability** | Broadest shared feeling → "this is me" |
| 5 | **Pattern + surprise** | Set an expectation, then break it |
| 6 | **Three-act structure** | Setup → problem → resolution |

## The Skills

| Skill | Use it when you… |
|-------|------------------|
| [storytelling-hooks](skills/storytelling-hooks/SKILL.md) | Write a short-form script or hook (Reels/Shorts/TikTok). **The shared core.** |
| [long-form-youtube](skills/long-form-youtube/SKILL.md) | Script an 8–20 min video with retention across the middle |
| [titles-and-thumbnails](skills/titles-and-thumbnails/SKILL.md) | Write a title + design a thumbnail as a coupled pair |
| [carousel-narratives](skills/carousel-narratives/SKILL.md) | Build a swipeable Instagram/LinkedIn carousel |
| [email-hooks](skills/email-hooks/SKILL.md) | Write subject lines, preview text, and email openers |
| [wireframe-writer](skills/wireframe-writer/SKILL.md) | Plan a landing/sales page as a narrative → conversion arc |
| [wireframe-reviewer](skills/wireframe-reviewer/SKILL.md) | Critique an existing page on flow, hierarchy & conversion |

## Install

### Option A — install script (recommended)

Clone, then run the installer for your OS. It copies each skill into your personal Claude Code skills directory (`~/.claude/skills/`).

```bash
git clone https://github.com/yaxeen/storytelling-skills.git
cd storytelling-skills
```

**macOS / Linux:**
```bash
./install.sh
```

**Windows (PowerShell):**
```powershell
./install.ps1
```

### Option B — single skill from a package

Each skill is also packaged as a standalone `.skill` file in [`dist/`](dist/). Unzip the one you want into `~/.claude/skills/`:

```bash
unzip dist/storytelling-hooks.skill -d ~/.claude/skills/
```

### Option C — manual

Copy any folder from [`skills/`](skills/) into `~/.claude/skills/`.

> **Restart Claude Code** after installing — skills load at session start.

## Usage

Once installed, the skills activate automatically based on what you ask:

| You say… | Skill that fires |
|----------|------------------|
| "Write me a reel hook about morning routines" | `storytelling-hooks` |
| "Script a 12-minute YouTube video on saving money" | `long-form-youtube` |
| "Give me title and thumbnail ideas" | `titles-and-thumbnails` |
| "Turn this into an Instagram carousel" | `carousel-narratives` |
| "Write a subject line for my newsletter" | `email-hooks` |
| "Plan the wireframe for my landing page" | `wireframe-writer` |
| "Review this page structure" | `wireframe-reviewer` |

You can also invoke any skill explicitly by name.

## Repository Structure

```
storytelling-skills/
├── skills/                 # Source — one folder per skill
│   ├── storytelling-hooks/SKILL.md
│   ├── long-form-youtube/SKILL.md
│   └── ...
├── dist/                   # Packaged .skill files (single-file install)
├── install.sh              # Installer (macOS/Linux)
├── install.ps1             # Installer (Windows)
├── scripts/package.ps1     # Rebuild dist/*.skill from skills/
├── README.md
├── CONTRIBUTING.md
└── LICENSE
```

## How It Works

- Each skill has YAML frontmatter with a `name` and a `description` written as a "Use when…" trigger, so Claude Code knows exactly when to load it.
- Content is written in tight, scannable bullets with quick-reference tables and an end-of-skill checklist.
- `storytelling-hooks` is the canonical core; the other six recap the six levers in one line and link back, so each works standalone but reinforces the suite.

## Development

Edit a skill under `skills/<name>/SKILL.md`. On push to `main`, a
[GitHub Action](.github/workflows/package-skills.yml) automatically rebuilds
`dist/*.skill` and commits the result, so the packages never drift from source.

To rebuild locally (e.g. before a PR):

```powershell
./scripts/package.ps1
```

## Contributing

Contributions welcome — new formats, sharper examples, better checklists. See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

[MIT](LICENSE) © 2026 Muhammad Yasin
