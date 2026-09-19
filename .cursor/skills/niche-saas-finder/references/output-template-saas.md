# Output template (SaaS finder candidate card)

Headline is a **candidate**, not a rater decision. No overall `/100`. Do
not emit a headline rater verdict (that belongs to a rater, not the
finder).

Do not emit this card when the scope gate failed. That path emits the
niche card in [intake-saas.md](intake-saas.md) only. `niche` here is
copied from a passed gate (or derived on a named-seat restatement).
Unique data is copied verbatim; it does not move density scores.

Do not emit a `niche_icp` block. Do not use `host_primitive`,
`dropin_cli`, or `orchestrator` as `search_classes` keys. Either is a
card fail. A marketplace app labeled `exact` without a fetched SoR
write-path quote is a card fail. Citing Landlock, Kroxylicious, or
`CREATE PUBLICATION` as occupancy on this card is a card fail.
Omitted `search_classes`, omitted `keep_gate_checks`, fewer than 5
incumbent rows, two rows from one SoR URL as the whole table,
`as_plugin` Occupied with `file_on: none`, or `as_plugin`
Occupied/Saturated with `as_company` Sparse/Greenfield forbids
`keep_gate: pass`. A tracker name without this card is not a keep.

```yaml
candidate_seat: <one-line stack position>
v1_as_shipped: <concrete v1 and stack placement>
entry: generated | restated

niche:
  icp: <named>
  system_of_record: <named SKU/host>
  workflow_step: <named>
  ship_form: company | oss | plugin | unset
  unique_data_or_distribution: <string or unset>
  hard_nos: []
  source: user | agent_opt_out

slices: [<mechanism>, ...]        # split v1 on "and"; required when v1 is a conjunction

search_classes:                   # four classes from search-playbook-saas.md; queries run this hunt
  sor_primitive: <query>
  dropin_addon: <query>
  commercial_sku: <query>
  tracker_leftover: <query>

verdicts:
  as_company: <Greenfield|Sparse|Occupied|Saturated> <0-10>
  as_oss:     <Greenfield|Sparse|Occupied|Saturated> <0-10>
  as_plugin:  <Greenfield|Sparse|Occupied|Saturated> <0-10>

density_scores:
  problem_density: <0-10>          # counts adjacent_pain
  exact_mechanics_density: <0-10>  # exact only; <= steelman.occupancy_ceiling

incumbents:
  - name: <tool>
    url: <verified URL>
    quote: "<contiguous substring of that page, fetched this run>"
    seat_match: exact | adjacent_pain | language_scoped | wrong_substrate | obsolete | price_packaging
    leftover: <what is missing if this row is exact>

auto_rejects_fired: []            # ids from rubric.md as remapped in gate-bind-saas.md
falsification:
  1_vacant_process: pass | fail
  2_not_a_wrapper: pass | fail
  3_mechanical_gap: pass | fail

steelman:
  occupancy_ceiling: <0-10>
  why_build: "<strongest case for building>"

claim_hygiene: ok | unsourced | implausible
file_on: <incumbent repo/issue/marketplace URL, or none>
keep_gate_checks:                 # every key required; missing key => keep_gate fail
  g1_quotes_literal: pass | fail
  g2_four_classes: pass | fail
  g3_file_on_if_host_named: pass | fail
  g4_no_exact_as_vacant: pass | fail
  g5_no_occupied_bundle: pass | fail
  g6_auto_reject_5: pass | fail
  g7_claim_hygiene: pass | fail
  g8_plugin_forbids_sparse_company: pass | fail
  g9_steelman_ceiling: pass | fail
  g10_hook_is_not_vacancy: pass | fail
keep_gate: pass | fail            # pass required for as_company Sparse/Greenfield; G1-G10 in gate-bind-saas.md
deny_catalog: local_adr_0001 | embedded_saas_baseline | incomplete
rate_next: <not_run | compose_next>   # reminder only: hand a candidate to an idea-rater, never inline a rater verdict
```

Seat-match labels match [seat-match.md](seat-match.md)
(six labels) plus [gate-bind-saas.md](gate-bind-saas.md) notes (SKU
mismatch is `wrong_substrate`; hook mismatch is not;
G2/Capterra listings are `adjacent_pain`).
`keep_gate: fail` forbids `as_company` Sparse/Greenfield. Default
company verdict is Occupied or `file_on`. `keep_gate: pass` only if
every `keep_gate_checks` key is `pass`.

`as_plugin` Occupied plus `file_on: none` is a card fail. `as_plugin`
Occupied or Saturated plus `as_company` Sparse/Greenfield is a card
fail. Leftover that names the SoR must set `file_on` to that URL.
Leftover that is only a hook mismatch is G10 fail, not Sparse.

`deny_catalog: embedded_saas_baseline` is the happy path when no local
killed-seats file exists. `incomplete` only if gate-bind fallback and a
local file are both missing — not allowed on a correct install of this
skill.
