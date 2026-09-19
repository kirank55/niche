# Tech Discovery Tracker — AI / Software Infra

Branch: `niche-discovery` (tech/AI hunt).
Skill: `SKILL.md` (profinder) + `references/seat-generation.md` + `references/search-playbook.md` — tech/AI/devtool seats only. No vertical SaaS (dental/law excluded by scope).
Stop condition: 3 pitchable ideas OR 100 seats researched.

Pitchable = `as_company` Sparse (2-4) / Greenfield (0-1) + zero auto-rejects + falsification 1/2/3 hold + >=5 verified incumbents (or explicit could-not-find-5 + why). No /100, no TAM/WTP as occupancy.

Scope: **tech, AI, and latest software only**. Dental, law, home-service, restaurant, clinic SoRs are out of scope for this hunt. Use `references/seat-generation.md:8` substrate inventory, not `skills/niche-saas-finder/references/seat-generation-saas.md:32` SoR inventory.

Counters (update every seat):
- Researched: 0 / 100
- Pitchable (kept as_company): 0 / 3
- Filed/OSS-only (hold/file_on): 0
- Dropped: 0
- Current iteration: 2
- Skill hardenings: 0

Substrates to cover (from `references/seat-generation.md:8`):
- [ ] AI inference / wire proxy / protocol gate (MCP, OpenAI-compat proxy, LLM gateway, tool-call enforcement)
- [ ] Compiler / linker / bundler / lockfile (JS/TS, Python, Rust/Cargo, Go - sidecar enforcement, not advisory lint)
- [ ] Kernel / eBPF / LSM (policy enforcement, runtime guard)
- [ ] CI scheduler / merge queue (queue protocol, pre-merge enforcement)
- [ ] Broker / queue protocol (Kafka/NATS/queue semantics, exactly-once gate)
- [ ] Schema / tenancy cutover (tenant migration, publication/subscription cutover)
- [ ] Host runtime enforcement (PATH, interpreter, package manager shim / lock)
- [ ] Process supervisor / daemon (supervisor that consults sidecar policy file)

Latest-software probes (AI-adjacent):
- [ ] Agent runtime / sandbox enforcement (not prompt library)
- [ ] Eval / replay harness at CI gate (not dashboard)
- [ ] Vector / retrieval sidecar consulted at write-time

Excluded (not researched in this PR):
- Dental (Eaglesoft, Dentrix), Law (Clio, MyCase), Home-service (ServiceTitan), Restaurant (Toast), Clinic etc. - see previous iteration-1 history below, now archived.

## Iteration log
| Iter | Skill state | Seats | Result | Hardening applied |
|------|-------------|-------|--------|-------------------|
| 1 | `skills/niche-saas-finder` vertical SaaS (dental: Eaglesoft) | 3 | Dropped 3 (native Occupied) — scope retired, see Deleted ideas | retired - switched to tech/AI scope |
| 2 | `SKILL.md` profinder tech/AI (substrates above) | 0 so far | in progress | none yet |

## Ideas
| # | Iteration | Candidate seat (substrate+process/protocol) | Steelman ceiling | problem / exact density | as_company | as_oss/plugin | auto_rejects | file_on | Verdict: KEEP / FILE / DROP | Why (mechanical gap or occupant + quote source) |
|---|-----------|---------------------------------------------|------------------|-------------------------|------------|---------------|--------------|---------|------------------------------|--------------------------------------------------|
<!-- append-only; never rewrite history. On harden+delete, keep these rows, bump iteration, new cards go in discovery/iteration-N/ -->

## Skill hardenings (in niche-discovery only)
| # | Date | Trigger idea(s) | Failure mode | File(s) changed | Rule added |
|---|------|-----------------|--------------|-----------------|------------|
<!-- record each harden here -->

## Deleted ideas (iteration 1 — vertical SaaS, out of scope for tech hunt)
- Archived `discovery/iteration-1/eaglesoft-raw.yaml` + `idea-001.yaml` + `idea-002.yaml` + `idea-003.yaml` (Eaglesoft dental seats) — dropped as Occupied native modules (Lab Tracking, Vyne, eReminders). Retained in git history at `44968e5` but deleted from working tree for tech focus. Details preserved in previous tracker history.
- Prior tracker dental/law categories (Eaglesoft, Dentrix, Clio, MyCase, ServiceTitan, Housecall Pro, Toast, Square, Mindbody, Buildertrend, Jane, SimplePractice) — retired. See git history.
- On harden: delete `discovery/iteration-N/*.yaml` cards but KEEP this tracker history. Note deletion here with commit hash.
