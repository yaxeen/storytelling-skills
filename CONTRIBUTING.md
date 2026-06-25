# Contributing

Thanks for your interest in improving the Storytelling Skills suite.

## Ways to contribute

- **Sharpen existing skills** — better examples, clearer bullets, stronger checklists.
- **Add a new format** — a new skill for a format not yet covered (e.g. podcast intros, ad scripts, sales DMs).
- **Fix issues** — typos, broken links, unclear guidance.

## Principles to keep

These keep the suite consistent — please follow them in any change:

1. **General-purpose.** Examples must work for any niche or business. Avoid narrow, niche-locked examples.
2. **Bullet-first.** Tight, scannable bullets and quick-reference tables — not long prose.
3. **Built on the six levers.** Every skill ties back to the shared core in `storytelling-hooks`.
4. **Standalone + linked.** Each non-core skill recaps the six levers in one line and links back to `storytelling-hooks`.
5. **End with a checklist.** Every skill closes with a pre-publish/review checklist.

## Skill file format

Each skill is a folder under `skills/` containing a `SKILL.md` with valid frontmatter:

```yaml
---
name: my-skill-name          # kebab-case, matches the folder name
description: Use when ...     # third person, a "Use when…" trigger, no workflow summary
---
```

## Workflow

1. Fork and create a branch.
2. Edit the relevant `skills/<name>/SKILL.md`.
3. Rebuild packages: `./scripts/package.ps1` (or zip the folder so the archive contains `<name>/SKILL.md`).
4. Open a pull request describing what changed and why.

## License

By contributing, you agree your contributions are licensed under the [MIT License](LICENSE).
