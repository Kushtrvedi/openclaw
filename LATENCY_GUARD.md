# LATENCY_GUARD.md

## Purpose
Prevent slow execution

---

## Rules

- Max total task time: 3–5 min
- Max step time: 60 sec

IF step exceeds:
→ skip / fallback

---

## Priority

Execution > Perfection

---

## Kill Conditions

- infinite loops
- repeated retries
- stuck model calls

→ terminate and return partial result