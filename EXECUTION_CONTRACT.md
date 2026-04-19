# EXECUTION_CONTRACT.md — Mandatory Output Enforcement

## Applies To
- ALL skills
- ALL tasks
- ALL execution paths

---

## RULE 1: OUTPUT MUST BE REAL

Every task must produce at least one:

- file (ppt, txt, csv, script)
OR
- executable result (stdout, system action)

Text-only output = FAILURE

---

## RULE 2: PROOF IS REQUIRED

Every execution must return:

- file path OR
- execution output (stdout)

If proof missing → task is FAILED

---

## RULE 3: NO EARLY STOP

Agent is NOT allowed to stop after:
- planning
- generating content
- partial completion

Must go until:
→ final usable result exists

---

## RULE 4: SKILL COMPLETION CHECK

Before returning:

Check:
- Did a file get created?
- Can user use it immediately?

If NO → continue execution

---

## RULE 5: VALIDATION AFTER EXECUTION ONLY

- No pre-validation loops
- Execute first → validate after

---

## RULE 6: MAX TIME CONTROL

- Max task time: 5 min
- If exceeded:
   → return best completed result

---

## RULE 7: NO SIMULATION

Forbidden:
- "system created"
- "slides generated"
- "task completed"

Allowed only if:
→ real output exists

---

## RULE 8: FAILURE MODE

If execution fails:

- retry once
- switch approach
- return best working result

---

## FINAL OUTPUT FORMAT

RESULT:
(actual output)

PROOF:
(file path / execution output)

STATUS:
SUCCESS / PARTIAL / FAILED