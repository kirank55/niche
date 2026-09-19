# Pitchable-search hunt tracker

Skill: `.cursor/skills/niche-saas-finder/` on `cursor/keep-gate-hook-latch-d202` (fail-closed, G1–G10 latch).
Mode: `agent_opt_out` (no user niche). One SoR row per batch (aisle-switch: never reuse a just-closed SKU).
Stop rule: first `as_company` Sparse/Greenfield with zero auto-rejects, falsification 3/3, >=5 verified incumbents, `keep_gate: pass`.
PR update cadence: every 10 scored seats.

- Scored so far: 50
- Pitchable found: no

## Batch 1 — Clio cloud (solo PI + small litigation firms), ideas 001–010

All Occupied/file_on, keep_gate fail (AR 1+5 throughout; Clio PI add-on, Clio File, CalendarRules, InfoTrack/Steno/One Legal own every slice).
file_on targets: NY DMV crash portal, Clio File docs, CalendarRules blog, Clio PI pages, Synergy, Clio custom-fields docs, Steno/Clio, InfoTrack/Clio, Esquire.

## Batch 2 — Patterson Eaglesoft on Windows (independent dental practices), ideas 011–020

All Occupied/file_on, keep_gate fail (AR 1+5; BeamReaders/Sindi/Nierman/Invisalign/ZimVie/SedationVault/Wastebits/CareCredit/MesaLabs/ProEdge own every slice).
file_on targets: beamreaders.com, sindireferrals.com, niermanpm.com, invisalign.com/provider, ZimVie concierge, sedationvault.com, wastebits.com, carecredit.com toolkit, mesalabs.com, proedgedental.com.
Note: ideas 011–015 carry NEED_EVIDENCE SoR rows (pattersondental.com 403 this run) — recorded as unproven, not vacancy; verdicts unaffected (Occupied, not keeps).

## Batch 3 — Shopmonkey cloud (independent auto-repair shops), ideas 021–030

9 Occupied + 1 Saturated (ADAS calibration cert, idea-022: Autel/AirPro/Opus/asTech/Hunter own every slice), all keep_gate fail (AR 1+5).
file_on targets: decisiv.com, airprodiagnostics.com, bar.ca.gov, recallmasters.com, safety-kleen.com, shopmonkey.io inventory, endurancewarranty.com, tsdweb.com, shopmonkey.io inspections (x2).
Note: ideas 021–025 carry NEED_EVIDENCE SoR rows (shopmonkey.com 403 + websearch 429 this run) — recorded as unproven, not vacancy.
Signal: ideas 026–030 posted as_oss Sparse 2–3 (core-return, warranty-claim, loaner/toll, paint/VOC, salvage) — OSS/plugin-shaped leftovers, not company keeps.

## Batch 4 — ezyVet cloud (independent veterinary practices), ideas 031–040

All Occupied/file_on, keep_gate fail (AR 1+5; CUBEX/VetSnap/IDEXX/Antech/PetLink/AKC/Trupanion/Vetsource/AngelPaw/GlobalVetLink/DocuPet/Landauer/rVetLink own every slice).
file_on targets: vetsnap, idexx-vetconnect-plus, petlink-2, trupanion, vetsource, angelpaw.com, globalvetlink.com IHC, docupet data-tools, landauer vet badges, rvetlink.com.
Note: ideas 036–040 scored with niche.source recorded as `user` by the scorer; batch ran opt-out routed (normalized to agent_opt_out in cards).

## Batch 5 — AppFolio PM cloud (residential property managers), ideas 041–050

All Occupied/file_on, keep_gate fail (AR 1+5; RentRegistry/PermitSuite, EasyEviction/Connect2Court, AppFolio CAM/HOAshare/PayHOA, COISoftware, 1099Pro, PetScreening/Foxen, Second Nature, BuildingReports, ezLandlordForms, Lodgify own every slice).
file_on targets: rentregistry.io, easyeviction.com, appfolio.com HOA, coisoftware.com, 1099pro.com, petscreening.com, foxen.com, buildingreports.com, ezlandlordforms.com, lodgify.com.
Note: ideas 041–045 scored with niche.source recorded as `user` by the scorer; batch ran opt-out routed (normalized to agent_opt_out in cards).

## Prior art (not counted — different session, ServiceTitan cloud, 20 seats, all Occupied/file_on)

Permit filing, rebate claims, equipment registration, warranty claims, financing funding,
lien filing, COI compliance, sub compliance, PO receiving, pricebook versioning,
fleet log, tool calibration, backflow filing, fire-inspection filing, home-warranty claims,
core returns, SLA ledger, plan transfer, chargeback bundle, special-order ETA.

## Batches

| Batch | SoR niche | Seats | Occupied/file_on | Pitchable | Commit |
|---|---|---|---|---|---|
| 1 | Clio cloud (PI/litigation) | 001–010 | 10 | 0 | batch-1 |
| 2 | Eaglesoft on Windows (dental) | 011–020 | 10 | 0 | batch-2 |
| 3 | Shopmonkey cloud (auto repair) | 021–030 | 10 (1 Saturated: ADAS) | 0 | batch-3 |
| 4 | ezyVet cloud (veterinary) | 031–040 | 10 | 0 | batch-4 |
| 5 | AppFolio PM cloud (property) | 041–050 | 10 | 0 | batch-5 |
| — | next: Karbon (accounting) | — | — | — | — |
