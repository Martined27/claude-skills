# Claude Skills Collection

Personal skill library for Claude computer-use sessions. Clone this repo and run `install.sh` to restore all skills on any machine.

## Quick Start

```bash
git clone git@github.com:YOUR_USERNAME/claude-skills.git
cd claude-skills
bash install.sh
```

## Structure

```
skills/
├── public/       — Anthropic-provided skills
├── engineering/  — Engineering workflow plugins
├── productivity/ — Writing, learning, workflow skills
├── creative/     — Design, art, and builder skills
└── personal/     — Life admin and personal tasks
```

## Skills

### Public (Anthropic)

| Skill | Description |
|---|---|
| public/docx | Create and manipulate Word documents |
| public/file-reading | Read/extract content from uploaded files |
| public/frontend-design | Production-grade UI components and web interfaces |
| public/pdf | Create, fill, merge, split PDF files |
| public/pdf-reading | Extract text and content from PDFs |
| public/pptx | Create and edit PowerPoint presentations |
| public/product-self-knowledge | Anthropic product facts reference |
| public/xlsx | Spreadsheet creation and manipulation |

### Engineering

| Skill | Description |
|---|---|
| engineering/architecture | Architecture decision records (ADRs) |
| engineering/code-review | PR and diff security/quality review |
| engineering/debug | Structured debugging sessions |
| engineering/deploy-checklist | Pre-deployment verification |
| engineering/documentation | Technical docs, READMEs, runbooks |
| engineering/incident-response | Incident triage and postmortem |
| engineering/standup | Daily standup summaries |
| engineering/system-design | System and API design |
| engineering/tech-debt | Tech debt audit and prioritization |
| engineering/testing-strategy | Test plans and coverage strategy |

### Productivity

| Skill | Description |
|---|---|
| productivity/doc-coauthoring | Collaborative document workflows |
| productivity/handoff | Compact conversation into handoff doc for next agent |
| productivity/internal-comms | Internal communication drafting |
| productivity/learn | Learning and tutoring workflows |
| productivity/skill-creator | Build and test new skills |

### Creative

| Skill | Description |
|---|---|
| creative/algorithmic-art | Generative art creation |
| creative/brand-guidelines | Brand-consistent content creation |
| creative/canvas-design | Canvas-based design artifacts |
| creative/mcp-builder | MCP server scaffolding |
| creative/slack-gif-creator | GIF creation for Slack |
| creative/theme-factory | Theming system for artifacts |
| creative/web-artifacts-builder | Web component and artifact builder |

### Personal

| Skill | Description |
|---|---|
| personal/benepass-reimbursement | Benepass expense reimbursement |
| personal/call-to-book | Appointment booking workflows |
| personal/cancel-unsubscribe | Cancellation and unsubscribe workflows |
| personal/event-planning | Event logistics and planning |
| personal/file-expenses | Expense report filing |
| personal/file-form | Form filling workflows |
| personal/financial-calculator | Financial calculations and modeling |
| personal/grocery-shopping | Grocery list and shopping workflows |
| personal/hire-help | Hiring and recruitment workflows |
| personal/meal-delivery | Meal ordering automation |
| personal/prescription-refill | Prescription refill workflows |
| personal/return-refund | Return/refund request workflows |

## Wishlist

> Skills to build or evaluate — move to the table above when installed.

- [ ] zap-scanner — OWASP ZAP scan workflow helper (acestaging, ace-integration)
- [ ] cf-moto-maintenance — CF Moto 450MT service interval tracker
- [ ] trading-smc — Smart Money Concepts pattern recognition helper
