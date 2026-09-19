# Tech Discovery Tracker — AI / Software Infra

Branch: `niche-discovery` (tech/AI hunt).
Skill: `SKILL.md` (profinder) + `references/seat-generation.md` + `references/search-playbook.md` — tech/AI/devtool seats only. No vertical SaaS (dental/law excluded by scope).
Stop condition: 3 pitchable ideas OR 100 seats researched.

Pitchable = `as_company` Sparse (2-4) / Greenfield (0-1) + zero auto-rejects + falsification 1/2/3 hold + >=5 verified incumbents (or explicit could-not-find-5 + why). No /100, no TAM/WTP as occupancy.

Scope: **tech, AI, and latest software only**. Dental, law, home-service, restaurant, clinic SoRs are out of scope for this hunt. Use `references/seat-generation.md:8` substrate inventory, not `skills/niche-saas-finder/references/seat-generation-saas.md:32` SoR inventory.

Counters (update every seat):
- Researched: 20 / 100
- Pitchable (kept as_company): 4 / 3
- Filed/OSS-only (hold/file_on): 9
- Dropped: 7
- Current iteration: 2
- Skill hardenings: 0

Substrates to cover (from `references/seat-generation.md:8`):
- [x] AI inference / wire proxy / protocol gate (MCP, OpenAI-compat proxy, LLM gateway, tool-call enforcement)
- [x] Compiler / linker / bundler / lockfile (JS/TS, Python, Rust/Cargo, Go - sidecar enforcement, not advisory lint)
- [x] Kernel / eBPF / LSM (policy enforcement, runtime guard)
- [x] CI scheduler / merge queue (queue protocol, pre-merge enforcement)
- [x] Broker / queue protocol (Kafka/NATS/queue semantics, exactly-once gate)
- [x] Schema / tenancy cutover (tenant migration, publication/subscription cutover)
- [x] Host runtime enforcement (PATH, interpreter, package manager shim / lock)
- [x] Process supervisor / daemon (supervisor that consults sidecar policy file)

Latest-software probes (AI-adjacent):
- [x] Agent runtime / sandbox enforcement (not prompt library)
- [x] Eval / replay harness at CI gate (not dashboard)
- [x] Vector / retrieval sidecar consulted at write-time

Excluded (not researched in this PR):
- Dental (Eaglesoft, Dentrix), Law (Clio, MyCase), Home-service (ServiceTitan), Restaurant (Toast), Clinic etc. - see previous iteration-1 history below, now archived.

## Iteration log
| Iter | Skill state | Seats | Result | Hardening applied |
|------|-------------|-------|--------|-------------------|
| 1 | `skills/niche-saas-finder` vertical SaaS (dental: Eaglesoft) | 3 | Dropped 3 (native Occupied) — scope retired, see Deleted ideas | retired - switched to tech/AI scope |
| 2 | `SKILL.md` profinder tech/AI (substrates above) | 20 (idea-004..023 in `discovery/iteration-2/`) | 4 KEEP pitchable (B6/B7/B9/D19), 9 HOLD/FILE, 7 DROP — stop condition hit (4/3) | none yet |

## Ideas
| # | Iteration | Candidate seat (substrate+process/protocol) | Steelman ceiling | problem / exact density | as_company | as_oss/plugin | auto_rejects | file_on | Verdict: KEEP / FILE / DROP | Why (mechanical gap or occupant + quote source) |
|---|-----------|---------------------------------------------|------------------|-------------------------|------------|---------------|--------------|---------|------------------------------|--------------------------------------------------|
<!-- append-only; never rewrite history. On harden+delete, keep these rows, bump iteration, new cards go in discovery/iteration-N/ -->
| 004 | 2 | MCP tool-call policy proxy (wire proxy / MCP tools/call) | 8 | 9 / 8 | Saturated 8 | Saturated 8 / Occupied 5 | 1 | none | DROP | mcp-guard + mcp-gate ARE v1; Docker/Tyk ship it |
| 005 | 2 | OpenAI-compat budget gateway (wire proxy / chat-completions cutoff) | 8 | 9 / 8 | Saturated 8 | Saturated 8 / Occupied 6 | 1 | LiteLLM customers | DROP/FILE | LiteLLM + Portkey + LangSmith 402 + Cloudflare 429 ship cutoff |
| 006 | 2 | Agent file-write sidecar (agent sandbox / write gating) | 8 | 8 / 7 | Occupied 7 | Occupied 6 / Sparse 3 | 1 | none | HOLD plugin | Kilo sandbox-exec + agent-sandbox + MXC ship deny; repo-policy adapter is plugin |
| 007 | 2 | Eval-regression merge gate (eval harness / CI gate) | 9 | 9 / 9 | Saturated 9 | Occupied 6 / Occupied 5 | 1 | none | DROP | promptfoo-action + NVIDIA CI gate + eval-gate ship block |
| 008 | 2 | Embedding freshness sidecar (vector / write-time sync gate) | 4 | 6 / 0 | Sparse 3 | Sparse 3 / Sparse 2 | 2 | Qdrant incremental tutorial | HOLD OSS | vacant blocking slice but v1 is Action+indexer |
| 009 | 2 | eBPF execve allowlist (kernel / execve LSM) | 5 | 6 / 0 | Sparse 2 | Sparse 3 / Occupied 5 | — | none | KEEP pitchable | Tetragon/Falco/Tracee adjacent; fapolicyd wrong_substrate |
| 010 | 2 | eBPF egress allowlist (kernel / connect gating) | 5 | 7 / 0 | Sparse 3 | Sparse 3 / Occupied 6 | — | none | KEEP pitchable | Cilium/Calico/Tetragon adjacent; Istio/CF wrong_substrate |
| 011 | 2 | JS unpinned-import gate (bundler / lockfile resolution) | 3 | 6 / 0 | Occupied 5 | Sparse 3 / Occupied 6 | 2 | eslint-plugin-import | FILE | lint/plugin-shaped leftover |
| 012 | 2 | Python lockfile shim (host runtime / interpreter gate) | 4 | 6 / 0 | Sparse 3 | Sparse 3 / Occupied 5 | — | none | KEEP pitchable | uv/Poetry/PDM/Pixi adjacent; no PATH-deny |
| 013 | 2 | Cargo audit-link gate (compiler / link gate) | 4 | 8 / 6 | Occupied 6 | Occupied 6 / Occupied 6 | 1 | cargo-deny | DROP | cargo-deny + cargo-vet exact (ceiling 4→6) |
| 014 | 2 | AST merge-queue scheduler (CI scheduler / interference graph) | 6 | 6 / 4 | Occupied 6 | Sparse 3 / Sparse 3 | 5 | Trunk parallel queues | FILE | Trunk exact for scheduling slice |
| 015 | 2 | Secret-in-diff blocker (CI gate / diff scan) | 9 | 8 / 7 | Saturated 8 | Occupied 6 / Occupied 6 | 1,2 | none | DROP | GH push protection + Gitleaks + TruffleHog ship block |
| 016 | 2 | Kafka idempotency CI proxy (broker / wire assertion) | 5 | 5 / 4 | Occupied 6 | Sparse 3 / Sparse 3 | 5 | Kroxylicious | FILE | Kroxylicious exact proxy slice; Coyote language_scoped per calibration |
| 017 | 2 | NATS ack-deadline enforcer (broker / ack protocol) | 7 | 6 / 6 | Occupied 6 | Occupied 5 / Occupied 5 | 1 | none | DROP | NATS server itself enforces AckWait/redelivery |
| 018 | 2 | Vanilla PG tenant extract (schema cutover / filtered replication) | 6 | 6 / 5 | Occupied 6 | Sparse 3 / Occupied 5 | — | AWS DMS | FILE | PG15 WHERE exact for replication slice; Vitess/Ghostferry wrong_substrate |
| 019 | 2 | Host PATH pinning shim (host runtime / PATH gate) | 6 | 7 / 5 | Occupied 6 | Occupied 6 / Sparse 3 | 5 | mise | FILE | asdf/mise exact; wedge is settings flag |
| 020 | 2 | Supervisor version-policy (supervisor / start gate) | 4 | 4 / 0 | Sparse 3 | Sparse 3 / Occupied 5 | — | none | HOLD OSS | 0 exact but falsification-2 fail (pre-start script-shaped) |
| 021 | 2 | Socket-activation gate (supervisor / bind gating) | 5 | 7 / 3 | Occupied 6 | Occupied 6 / Occupied 5 | 1 | none | DROP | systemd SocketBindAllow/Deny ships deny-default |
| 022 | 2 | Expand-contract DDL blocker (schema / DDL diff gate) | 6 | 6 / 0 | Sparse 3 | Sparse 3 / Occupied 5 | — | none | KEEP pitchable → rater | pgroll/Atlas adjacent; PlanetScale wrong_substrate; falsification 1/2/3 pass |
| 023 | 2 | Reproducible image enforcer (image build / digest gate) | 7 | 6 / 2 | Occupied 6 | Sparse 3 / Sparse 3 | 2 | none | HOLD OSS | double-build+digest is Action/snippet |

## Skill hardenings (in niche-discovery only)
| # | Date | Trigger idea(s) | Failure mode | File(s) changed | Rule added |
|---|------|-----------------|--------------|-----------------|------------|
<!-- record each harden here -->

## Deleted ideas (iteration 1 — vertical SaaS, out of scope for tech hunt)
- Archived `discovery/iteration-1/eaglesoft-raw.yaml` + `idea-001.yaml` + `idea-002.yaml` + `idea-003.yaml` (Eaglesoft dental seats) — dropped as Occupied native modules (Lab Tracking, Vyne, eReminders). Retained in git history at `44968e5` but deleted from working tree for tech focus. Details preserved in previous tracker history.
- Prior tracker dental/law categories (Eaglesoft, Dentrix, Clio, MyCase, ServiceTitan, Housecall Pro, Toast, Square, Mindbody, Buildertrend, Jane, SimplePractice) — retired. See git history.
- On harden: delete `discovery/iteration-N/*.yaml` cards but KEEP this tracker history. Note deletion here with commit hash.
