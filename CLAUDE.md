# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

Personal skill library for Claude computer-use sessions. Skills are copied to `/mnt/skills/user/` at session start via `install.sh`. This repo is the source of truth — not a runtime environment.

## Installing Skills

```bash
bash install.sh                  # install all skills
bash install.sh public           # Anthropic-provided only
bash install.sh engineering      # engineering only
bash install.sh productivity     # productivity only
bash install.sh creative         # creative only
bash install.sh personal         # personal only
```

## Directory Layout

Skills are organized by genre:

```
skills/
├── public/       — Anthropic-provided (docx, pdf, xlsx, frontend-design, …)
├── engineering/  — Engineering plugins (code-review, debug, deploy-checklist, …)
├── productivity/ — Workflow skills (handoff, learn, skill-creator, …)
├── creative/     — Design/builder skills (algorithmic-art, theme-factory, …)
└── personal/     — Life admin (file-expenses, meal-delivery, …)
```

Each skill lives at `skills/<genre>/<name>/SKILL.md`.

## Skill File Structure

```
skills/<genre>/<name>/
├── SKILL.md          # required — YAML frontmatter + instructions
├── scripts/          # executable helpers (run without loading into context)
├── references/       # docs loaded on demand
└── assets/           # templates, icons, fonts used in output
```

`SKILL.md` frontmatter fields:
- `name` — skill identifier
- `description` — **primary triggering mechanism**: what it does + when to use it. Include specific phrases/contexts. Be slightly "pushy" to avoid undertriggering.
- `argument-hint` — (optional) usage hint shown to user

## Adding a New Skill

1. Create `skills/<genre>/<name>/SKILL.md` with YAML frontmatter and instructions
2. The genre is automatically picked up by `install.sh` — no edits needed to the installer
3. Add a row to the appropriate table in `README.md`

## Skill Authoring Guidelines

- Keep `SKILL.md` under 500 lines; offload detail to `references/` files
- `description` field drives triggering — put all "when to use" logic there, not in the body
- For multi-domain skills, organize variants under `references/` with a selector in `SKILL.md`
- Large reference files (>300 lines) need a table of contents
- Use `scripts/` for deterministic/repetitive tasks that shouldn't consume context

## Eval Workflow (skill-creator)

The `skill-creator` skill has a built-in eval loop:

1. Write SKILL.md draft
2. Create test prompts, run them
3. View results: `python skills/productivity/skill-creator/eval-viewer/generate_review.py <workspace-path>`
4. Iterate based on qualitative + quantitative feedback
5. Optionally run description improver to tune triggering accuracy
