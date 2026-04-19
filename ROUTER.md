# ROUTER.md — Task Routing System

## Objective
Decide HOW fast and HOW deep to execute a task

---

## STEP 1: CLASSIFY TASK

Immediately classify task into:

### TYPE A — DIRECT EXECUTION
- clear
- no ambiguity
- output known (ppt, file, script)

Examples:
- create slides
- generate report
- build file

→ Route: FAST_EXECUTION

---

### TYPE B — STRUCTURED EXECUTION
- multi-step
- needs generation + execution

Examples:
- build system
- create workflow

→ Route: AUTO_MODE

---

### TYPE C — CLARITY REQUIRED
- missing input
- unclear objective

→ Action: Ask 1 question ONLY

---

## STEP 2: EXECUTION DECISION

IF TYPE A:
→ skip OpenSpace
→ skip deep planning
→ execute immediately via OpenCode

---

IF TYPE B:
→ use OpenSpace + Codex + OpenCode

---

IF TYPE C:
→ ask → wait → then proceed

---

## STEP 3: OVERRIDE RULE

If system tries to:
- overthink
- delay execution
- enter loops

→ FORCE TYPE A execution

---

## STEP 4: SPEED PRIORITY

Execution priority:

1. Direct execution
2. File creation
3. Output delivery
4. Validation (after)

---

## EXECUTION PRIORITY (STRICT)

**Default = TYPE A (DIRECT EXECUTION)**

Only use:
- TYPE B → if task CLEARLY requires multi-step dependency
- TYPE C → ONLY if critical input is missing

---

## OVERRIDE

If system hesitates:
→ FORCE TYPE A

---

## FINAL RULE

Wrong fast execution > slow perfect planning

Speed with correction > delay without output

---

---

## SKILL-FIRST EXECUTION (MANDATORY)

Before execution:

1. **CLASSIFY** → detect task type (PPT/GTM/Sales/Data/Execution)
2. **ACTIVATE** → load required skills (SKILL_ROUTER.md)
3. **EXECUTE** → Codex → OpenCode → Output

**NEVER execute without skill activation**

---

## FINAL FLOW

User Task
   ↓
ROUTER.md (decision + classification)
   ↓
SKILL_ROUTER.md (skill activation)
   ↓
TYPE A → Codex → OpenCode → Output
TYPE B → SKILL_ACTIVATION → Codex → OpenCode → Output
TYPE C → Ask → SKILL_ACTIVATION → Execute