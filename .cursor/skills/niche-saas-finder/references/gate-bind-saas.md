# Gate bind (SaaS)

Load this file before any `as_company` Sparse/Greenfield and before
applying auto-rejects from [rubric.md](rubric.md).

This file **is** the keep latch (G1-G10). Do not load files outside this
tree. Occupancy philosophy is unchanged; the checks are bound onto
vertical-workflow SaaS nouns.

G2 classes are those in [search-playbook-saas.md](search-playbook-saas.md).
Collapse modes below are the whole deny philosophy for this skill.

Citing Landlock, Kroxylicious, or `CREATE PUBLICATION` as occupancy on
a vertical SaaS card is a card fail.

Before Sparse/Greenfield, copy `keep_gate_checks` from
[output-template-saas.md](output-template-saas.md) and answer every
key. A missing key is `keep_gate: fail`. Do not set `keep_gate: pass`
because leftover prose is eloquent or the keep "looks clear."

| Card key | Gate |
| --- | --- |
| `g1_quotes_literal` | G1 |
| `g2_four_classes` | G2 |
| `g3_file_on_if_host_named` | G3 |
| `g4_no_exact_as_vacant` | G4 |
| `g5_no_occupied_bundle` | G5 |
| `g6_auto_reject_5` | G6 |
| `g7_claim_hygiene` | G7 |
| `g8_plugin_forbids_sparse_company` | G8 |
| `g9_steelman_ceiling` | G9 |
| `g10_hook_is_not_vacancy` | G10 |

## G1-G10 bind

**G1. Quotes are literals.** Each incumbent `quote` is a contiguous
substring of a page **fetched this run** at `url`. Ellipsis may join two
substrings only if both appear on that page. 404, JS-empty, paywalled,
or paraphrase -> that row is `NEED_EVIDENCE`. A keep may not include
`NEED_EVIDENCE` rows. A real sentence from a **different** vendor URL
than `url` is still `NEED_EVIDENCE` on that row.

**G2. Query classes, not five logos.** Search hit `sor_primitive`,
`dropin_addon`, `commercial_sku`, and `tracker_leftover` in
[search-playbook-saas.md](search-playbook-saas.md) for this SoR. A table
of five Capterra logos, horizontal CRMs, or generic form builders does
not satisfy G2. Missing `search_classes` keys is G2 fail. Two rows from
one SoR help URL do not satisfy G2, even when those quotes admit a
gap. Class 3 must produce a named commercial SKU row or
`NEED_EVIDENCE`. Skipping class 2-3 because class 1 "does not have a
native module" is G2 fail. A keep whose only incumbents are the named
SoR's help center is G2 fail.

**G3. Leftover names a host -> `file_on` that host.** If any leftover
sentence names a SoR, marketplace app, flag, or issue, `file_on` is
that URL (not `none`). `as_plugin` may not be Greenfield in that case.
`as_plugin` Occupied plus `file_on: none` is a card fail.

**G4. Exact slice occupies vacant-process.** If any row is `exact`,
`1_vacant_process` is `fail` unless `file_on` is set on that slice
**and** `as_company` scores only the remaining named process. You may
not pass vacant process by redefining the seat as "the orchestrator
around the Toast/Clio primitive." You may not pass it by labeling the
SoR workaround `adjacent_pain` because the leftover is "manual" or
"not auto." If the class-1 page describes Skills / forms / Invoice
Items / intro-offer flags / letter templates that *are* the headline
UX, that row is `exact` for that slice. A dedicated native module for
the restated step (Lab Tracking, Recall, POS ticket, job dispatch) is
`exact`; leftover "block save" is auto-reject 5.

**G5. Conjunction v1 is a bundle.** If `v1_as_shipped` joins two or more
mechanisms with "and" / "plus" (CSV + reminder + portal, intake +
e-sign + docket, cylinder ledger + threshold + leak-rate math), split
into slices before scoring. If each slice has an `exact` or adjacent
host, the SKU is Occupied. No single logo selling the bundle is not
vacancy. Load [calibration-saas.md](calibration-saas.md)
Occupied-bundle cases.

**G6. Auto-reject #5 default.** Leftover that is diagnostics, a
checkbox, a marketplace setting, "orchestration around SoR X", or
"automate the manual Skill / report / form step the SoR already
documents" is "add this to incumbent X." Fire auto-reject 5. Do not
talk it into a company in prose.

**G7. Mechanism claims.** Unsourced HIPAA/PHI, latency, WTP, TAM, or
"sub-second sync" claims must be stated on a fetched vendor or protocol
page. Else `claim_hygiene: unsourced` or `implausible`, delete the claim
from `v1_as_shipped`, and re-score. Hygiene fail is not Occupied-by-itself
(see [rubric.md](rubric.md)); inventing a SoR property
**is** a keep block until v1 is restated without it.

**G8. Split-verdict sanity.** Card key:
`g8_plugin_forbids_sparse_company`. `as_plugin` Greenfield plus an
`exact` incumbent row is a card fail. `as_plugin` Occupied or Saturated
plus `file_on: none` is a card fail. `as_plugin` Occupied or Saturated
**forbids** `as_company` Sparse/Greenfield: that split already says the
leftover is a flag, plugin, or issue on a named host. Emit `file_on` /
Occupied as the company verdict, not KEEP. `as_oss` occupancy **lower**
than `as_company` needs a one-line reason or it is a card fail.

**G9. Steelman.** Published `exact_mechanics_density` may exceed the
pre-search ceiling only if G2 added **named** rows. Missed-search is not
a low ceiling. Two SoR-help quotes are not a 2.5 ceiling.

**G10. Hook is not vacancy.** Card key: `g10_hook_is_not_vacancy`.
Copy every leftover. If two or more are
only a different enforcement hook than v1 named — tray vs native
window, overlay vs module, sidecar vs SoR consult, parser vs executor,
"not write-time", "does not intercept", "only when invoked via CLI",
"manual", "not auto", "no block save" — those incumbents occupy the
process. Fire auto-reject 1 and/or 5. `file_on` the named host.
`as_company` Occupied. Do **not** label that row `wrong_substrate`
(that label is SKU / data-plane mismatch only). Do **not** label it
`adjacent_pain` so `exact_mechanics_density` can stay 0 and
`as_company` Sparse 2-3. If this hunt already `file_on`'d a host for a
step, a narrower cut of that step (one extra filter or hook) is not a
new company keep.

`keep_gate: pass` only if G1-G10 hold. `keep_gate: fail` -> `as_company`
is Occupied, Saturated, `file_on`, or `drop`. Never Sparse/Greenfield
keep. `as_oss` / `as_plugin` may still be Sparse. A tracker bullet
without an emitted card from [output-template-saas.md](output-template-saas.md)
is not a keep.

## Worked false keeps (labeling, not generation seeds)

Do not generate from these. If a restated seat **is** one of them, copy
the labeling: company Occupied / `file_on`, not Sparse keep. Full
labeling is in [calibration-saas.md](calibration-saas.md).

| Claimed keep | Correct |
| --- | --- |
| CSV + reminder + portal as one SKU | Occupied bundle. `file_on` the SoR. |
| Add missing trade to a named marketplace app | Auto-reject 5. `file_on` the app. |
| Typeform/Jotform + Zapier as the vertical v1 | Auto-reject 2. Occupied / drop. |
| SoR "no dedicated module" + write-time guard (license-expiry dispatch, 3PO payout join, EPA cylinder ledger) | Class-1 workaround is `exact` for that slice; class 3 occupies the standalone SKU. Skipping class 2-3 is G2 fail. Auto-reject 5. `file_on` the primitive or the matcher/ledger SKU. |
| Write-time remake/recall/claims guard on Eaglesoft Lab Tracking, Recall, or claims | Native module is `exact`. Auto-reject 1 and 5. `file_on` the module. Do not generate. |
| Five incumbents labeled `adjacent_pain` / `wrong_substrate` because leftover is only hook mismatch; `exact_mechanics_density: 0`; `as_plugin` Occupied; `file_on: none`; Sparse KEEP | G8 and G10 fail. Occupied leftover. Auto-reject 1 and/or 5. `file_on` the host. Not Sparse. |
| Narrower cut of a step this hunt already `file_on`'d (same SoR, extra hook or filter) | `file_on` the same host. Not a new company keep. |

## Write-time consult test (probe b / auto-reject 7)

A drop-in addon is class-2 `exact` only if a page **fetched this run**
from the named SoR (workflow, API, or marketplace "installed on
save/post/checkout/job-complete") quotes a write-path trigger that
invokes that app.

Marketplace listing, dashboard, reporting overlay, or SoR docs that do
not name the app on that write path -> auto-reject 7, not a company.
Cannot fetch either the SoR write-path page or the marketplace page ->
`NEED_EVIDENCE` on that row. A marketplace app labeled `exact` without
that quote is a card fail.

## Auto-reject remap

Rubric ids unchanged. Any one is fatal for an `as_company`
Sparse/Greenfield keep:

1. A named incumbent already ships the **headline UX**.
2. v1 is a Zapier/Make recipe, generic form wrap, or equivalent of a
   50-line Action.
3. The core transform is mathematically non-invertible and the pitch
   would have to lie.
4. The remaining wedge is reverse-mapping a security or privacy control.
5. The remaining wedge is "add this to incumbent X" (Clio / Toast /
   ServiceTitan marketplace app, SoR checkbox, filed issue). Diagnostics
   and orchestration around a named primitive are this reject, not a
   company.
6. Silent mutation of user payloads without an advisory-first v1.
7. Marketplace app / sidecar the SoR does **not** consult at write-time
   (write-time consult test / vacancy probe b). Real engineering, not a
   company.

## Seat-match notes (not calibration seeds)

Load [seat-match.md](seat-match.md) for the six
labels and dual scores. Then apply:

- Clio vs MyCase, Eaglesoft vs Dentrix, Toast vs Square →
  `wrong_substrate` when the seat named the other SKU.
- Hook mismatch (tray vs native window, sidecar vs consult, parser vs
  module, "does not intercept") is **not** `wrong_substrate`. If the
  quote describes deny/allow/record of the same workflow step, the row
  is `exact` or auto-reject 1. Relabel; that card is a fail until fixed.
- `language_scoped` → wrong runtime only (SDK / in-process port vs the
  named SoR host). Relabel `language_scoped` on a SKU mismatch; that
  card is a fail until fixed.
- Fetched G2/Capterra listing → `adjacent_pain`. Unfetched →
  `NEED_EVIDENCE`. Never `exact`.
- SoR workaround on the class-1 page (required Skills at assign,
  intro-offer one-purchase, letterhead print, claim scrub, warranty
  holding tasks) is `exact` for that slice when it is the headline UX.
  "Manual" leftover does not demote it to `adjacent_pain`.

Aisle **switch hosts** live in
[seat-generation-saas.md](seat-generation-saas.md). They are not extra
false-keep seeds.

## Collapse modes

1. **File it on the incumbent.** Named product already *is* the headline
   UX.
2. **Add the missing vertical to marketplace app X.** Cross-vertical
   absence is not a company.
3. **Sidecar without SoR write-time enforcement.** A marketplace app or
   CSV the SoR does not consult (write-time consult test). Real
   engineering, not a company.
4. **SoR gap quote as vacancy.** "No dedicated module; use custom
   fields / reports / skills" is occupancy of that workaround, not a
   vacant process.
5. **Native headline module as vacancy.** Lab Tracking, Recall, POS
   ticket, job dispatch, chart, ledger already *are* the UX. A
   write-time guard on that screen is auto-reject 5.
6. **Hook sold as vacancy.** Leftover is only a different enforcement
   hook than v1 named. Occupied / `file_on`, not Sparse (G10).
7. **Occupied plugin sold as Sparse company.** `as_plugin` Occupied
   plus `as_company` Sparse is a card fail (G8).

## SaaS embedded deny fallback

Until the target workspace keeps a local killed-seats file (one-line
seats under `.docs/` or `docs/`), use this list
(`deny_catalog: embedded_saas_baseline`):

- Horizontal CRM/marketing claimed as vertical v1
- Generic form + Zapier as the vertical seat
- Add missing trade/vertical to a named marketplace app
- CSV + reminder + portal bundle as one SKU
- SoR "no dedicated module" leftover claimed as a vacant write-time
  company keep (license-expiry Skill sync, 3PO payout join, EPA
  cylinder ledger on the named FSM)
- Write-time tray/overlay/guard on a closed native headline module
  (Eaglesoft Lab Tracking / Recall / claims, ServiceTitan dispatch,
  Toast POS ticket, Clio matters)
- Hook-only leftover claimed as a vacant company keep (`exact` density
  0 because every row is "not this hook")
- `as_plugin` Occupied or Saturated claimed as `as_company` Sparse KEEP

A previous kill is a deny-list entry, not a scoring template. Do not
generate from this list. Re-search **this** seat.

Local killed-seats file wins (`deny_catalog: local_*`). `incomplete`
only if this fallback and a local file are both missing.
