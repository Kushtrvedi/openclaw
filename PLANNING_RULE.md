# PLANNING_RULE.md

## When to Use OpenSpace

Use OpenSpace ONLY if:

- task has multiple steps
- output depends on sequence
- task requires iteration or validation
- task is not one-shot

---

## When NOT to Use OpenSpace

Skip OpenSpace if:

- task is direct (e.g. create PPT, generate file)
- no dependencies between steps
- execution is straightforward

---

## Execution Modes

### MODE 1 — DIRECT (FAST)
OpenClaw → Codex → OpenCode → Output

---

### MODE 2 — PLANNED (DEEP)
OpenClaw → OpenSpace → Codex → OpenCode → Loop → Output

---

## Continuity Rule

OpenSpace must track:

- current step
- next step
- result of previous step

---

## Strict Rule

OpenSpace NEVER executes

It only:
- plans
- tracks
- guides