# niche

Cursor skill for finding **sparse vertical-workflow SaaS seats**. Score
occupancy, not pain. Empty seats are rare; most honest leftovers are
`file_on` a named system of record.

## Use it

Open this repo in Cursor. The skill is at
`.cursor/skills/niche-saas-finder/` and is auto-discovered.

- Ask for a hunt in a **named ICP + SoR** (`solo PI firms on Clio cloud`).
- Or type `/niche-saas-finder`.
- Broad prompts (`give me a SaaS idea`, `dental SaaS`) emit an intake
  card and stop until ICP and SKU/host are named nouns.

Do not use this skill for developer-tool / infrastructure seats or
people-search.

## Layout

```text
.cursor/skills/niche-saas-finder/
  SKILL.md
  references/          # loaded on demand by step
  scripts/check-skill.sh
```

There is no repo-root `SKILL.md`. That file was the imported
**profinder** (devtools) skill and would steal discovery from this
repo's actual job.

## Fail-closed keeps

`as_company` Sparse/Greenfield requires `keep_gate: pass` (literal
quotes, four SaaS search classes, no occupied bundle, not a native SoR
module). A tracker bullet without an emitted candidate card is not a
keep.

Author/test fixtures: `references/eval-fixtures.md` (do not load on a
hunt). Isolation check:

```bash
bash .cursor/skills/niche-saas-finder/scripts/check-skill.sh
```
