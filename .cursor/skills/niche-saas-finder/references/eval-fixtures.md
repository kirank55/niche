# Eval fixtures (authors/tests only)

Do **not** load this file on a hunt. These are expected dispositions,
not generation seeds.

| Prompt / seat | Expected |
| --- | --- |
| "give me a SaaS idea" / "dental SaaS" / "AI for law" | Intake card only. `source: intake_blocked`. No candidate card. No search. |
| "hunt seats around Clio cloud for solo PI firms" | Gate passes. Generate >=5 seats **inside Clio**, none a closed native headline module (matters / native docs / bills / calendar / Grow intake). |
| User-named SoR not in inventory (e.g. `Tekmetric cloud`) | Pass. Do not rewrite to Shopmonkey or ServiceTitan. |
| `agent_opt_out` + interest `tekmetric` (SKU token, no routing row) | Return to intake. Do not rewrite to Shopmonkey. |
| `agent_opt_out` + interest `veterinary` | ezyVet only. Not ServiceTitan, not Dentrix. |
| `agent_opt_out` + interest `aviation MRO` (named vertical, no routing row) | Return to intake. Ask SoR SKU/host. Do not fill ServiceTitan. |
| `agent_opt_out` + empty/generic interest | ServiceTitan (first inventory row) is allowed. |
| Generated v1: Windows tray blocking Eaglesoft appointment-complete using Lab Tracking status | Drop at generation. If user named it: Occupied, `file_on` Lab Tracking, `keep_gate: fail`, auto-reject 1 and/or 5. |
| Five incumbents, leftovers only "not write-time" / "does not intercept" / "not auto"; `exact_mechanics_density: 0`; `as_plugin` Occupied; `file_on: none`; Sparse KEEP | `keep_gate: fail`. Occupied / `file_on`. G8 and G10. Auto-reject 1 and/or 5. Not Sparse. |
| `as_plugin` Occupied or Saturated + `as_company` Sparse/Greenfield | Card fail. Company is Occupied / `file_on`, not KEEP. |
| Hook mismatch labeled `wrong_substrate` (tray vs native window, sidecar vs consult) | Card fail until relabeled. `wrong_substrate` is SKU mismatch only. |
| Narrower cut of a step this hunt already `file_on`'d | Same host `file_on`. Not a new company keep. |
| Missing `keep_gate_checks` keys on a Sparse card | `keep_gate: fail`. |
| Developer-tool / Kafka / eBPF / Landlock / PATH shim / DDL CI-linter hunt | Abort. Wrong skill. Do not emit Sparse/Greenfield. |
| CSV + reminder + portal as one SKU | Occupied bundle. `file_on` the SoR. |
| Typeform + Zapier into Clio as vertical v1 | Auto-reject 2. Occupied / drop. |
| SoR help: "no dedicated module" then skip class 2-3 | G2 fail. Not Sparse. |
| People-search (GitHub profiles, freelancers) | Abort. |
| "rate this idea" as the requested job | Hand off (`rate_next`). Do not emit a rater verdict. |
| Tracker bullet without an emitted candidate card | Not a keep. |
