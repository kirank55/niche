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
| CSV + reminder + portal as one SKU | Occupied bundle. `file_on` the SoR. |
| Typeform + Zapier into Clio as vertical v1 | Auto-reject 2. Occupied / drop. |
| SoR help: "no dedicated module" then skip class 2-3 | G2 fail. Not Sparse. |
| Developer-tool / Kafka / eBPF / Landlock hunt | Abort. Wrong skill. |
| People-search (GitHub profiles, freelancers) | Abort. |
| "rate this idea" as the requested job | Hand off (`rate_next`). Do not emit a rater verdict. |
| Tracker bullet without an emitted candidate card | Not a keep. |
