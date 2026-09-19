#!/usr/bin/env bash
# Layout + isolation checks for niche-saas-finder. Not a hunt.
set -euo pipefail

script_dir="$(cd "$(dirname "$0")" && pwd)"
skill="$(cd "$script_dir/.." && pwd)"
root="$(cd "$skill/../../.." && pwd)"
fail=0

err() { echo "FAIL: $*" >&2; fail=1; }

if [[ -f "$root/SKILL.md" ]]; then
  err "repo-root SKILL.md must not exist (old profinder skill)"
fi
if [[ -d "$root/references" ]]; then
  err "repo-root references/ must not exist (old profinder playbooks)"
fi
if [[ -d "$root/skills" ]]; then
  err "skills/ leftover; skill lives at .cursor/skills/niche-saas-finder/"
fi

if [[ ! -f "$skill/SKILL.md" ]]; then
  err "missing $skill/SKILL.md"
  echo "check-skill: FAILED"
  exit 1
fi

name="$(awk '/^name:/{print $2; exit}' "$skill/SKILL.md")"
if [[ "$name" != "niche-saas-finder" ]]; then
  err "frontmatter name is '$name' (want niche-saas-finder)"
fi
if grep -RiqE '^name:[[:space:]]*profinder' "$root" --include='*.md'; then
  err "found name: profinder"
fi
if grep -RiqE 'ntfy|--wait-cmd|Kroxylicious|Landlock ABI|CREATE PUBLICATION' \
  "$skill/references/seat-generation-saas.md" \
  "$skill/references/search-playbook-saas.md" \
  "$skill/references/intake-saas.md"; then
  err "devtools incumbents leaked into SaaS generation/search/intake"
fi
if ! grep -q 'eval-fixtures.md' "$skill/SKILL.md"; then
  err "SKILL.md must mention eval-fixtures.md as hunt-excluded"
fi
if ! grep -q 'closed native headline module' "$skill/references/seat-generation-saas.md"; then
  err "seat-generation missing closed native headline modules"
fi
if grep -qiE 'tekmetric[[:space:]]*\|[[:space:]]*Shopmonkey' \
  "$skill/references/seat-generation-saas.md"; then
  err "tekmetric must not route to Shopmonkey"
fi

if [[ "$fail" -ne 0 ]]; then
  echo "check-skill: FAILED"
  exit 1
fi
echo "check-skill: ok"
