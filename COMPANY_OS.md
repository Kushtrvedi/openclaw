# COMPANY OS — ROLE-BASED EXECUTION SYSTEM

---

## 1. COMPANY STRUCTURE

```
CEO (OpenClaw - Orchestrator)
│
├── GTM DEPARTMENT
│   ├── GTM Architect Agent
│   └── Market Research Agent
│
├── REVENUE DEPARTMENT
│   ├── BDM Agent
│   └── Deal Closer Agent
│
├── CONTENT DEPARTMENT
│   ├── Presentation Architect
│   └── Copywriting Agent
│
└── EXECUTION DEPARTMENT
    ├── OpenCode (file execution)
    └── Codex (logic/thinking)
```

---

## 2. ROLE RESPONSIBILITIES

### GTM DEPARTMENT

| Role | Output | Skills |
|------|--------|--------|
| **GTM Architect** | Positioning, ICP, Strategy | go-to-market, b2c-marketing, competitor-analysis |
| **Market Research** | Market data, trends, insights | deep-research, autonomous-research |

### REVENUE DEPARTMENT

| Role | Output | Skills |
|------|--------|--------|
| **BDM Agent** | Leads, outreach, partnerships | cold-outreach, apify-lead-generation, abm-outbound |
| **Deal Closer** | Proposals, pitches, closes | copywriting, content-strategy |

### CONTENT DEPARTMENT

| Role | Output | Skills |
|------|--------|--------|
| **Presentation Architect** | Layouts, structures, visual systems | ai-ppt-generate, ppt-generator, VISUAL_SYSTEM |
| **Copywriting Agent** | Content, messaging, branding | copywriter, content-generation, brand-voice-profile |

### EXECUTION DEPARTMENT

| Role | Output | Skills |
|------|--------|--------|
| **OpenCode** | Files (.pptx, .pdf, .xlsx) | python-pptx, exec |
| **Codex** | Logic, structure, reasoning | (internal) |

---

## 3. SKILL MAPPING

### GTM TEAM

| Skill | Status | Priority |
|-------|--------|----------|
| go-to-market | Available | HIGH |
| b2c-marketing | Available | HIGH |
| competitor-analysis | Available | HIGH |
| deep-research | Available | HIGH |
| autonomous-research | Available | MEDIUM |
| business-development | Available | MEDIUM |

### REVENUE TEAM

| Skill | Status | Priority |
|-------|--------|----------|
| cold-outreach | Available | HIGH |
| apify-lead-generation | Available | HIGH |
| abm-outbound | Available | HIGH |
| copywriting | Available | HIGH |
| content-strategy | Available | HIGH |

### CONTENT TEAM

| Skill | Status | Priority |
|-------|--------|----------|
| ai-ppt-generate | Available | CRITICAL |
| ppt-generator | Available | CRITICAL |
| slides-maker | Available | CRITICAL |
| ai-presentation-maker | Available | HIGH |
| copywriter | Available | HIGH |
| content-generation | Available | HIGH |
| chart-image | Available | HIGH |
| VISUAL_SYSTEM.md | Created | MANDATORY |

### EXECUTION TEAM

| Skill | Status | Priority |
|-------|--------|----------|
| python-pptx | Tool | MANDATORY |
| exec | Tool | MANDATORY |
| OpenCode | Core | CRITICAL |

---

## 4. EXECUTION FLOW

### PPT TASK FLOW

```
User Input: "Create Fnomo GTM slides"
   ↓
ROUTER → TYPE A (file task)
   ↓
SOURCE_ENFORCEMENT → Verify GTM doc exists
   ↓
[GTM Architect] → Positioning, ICP, Strategy
   ↓
[Presentation Architect] → Layout + Structure + VISUAL_SYSTEM
   ↓
[Codex] → Content structuring
   ↓
[OpenCode] → python-pptx execution → .pptx file
   ↓
[FINISHER] → Quality validation
   ↓
OUTPUT: .pptx (not .md)
```

### TASK → ROLE MAPPING

| Task | Role Chain |
|------|------------|
| PPT Creation | GTM → Presentation → Codex → OpenCode |
| Research | Market Research → GTM |
| Outreach | BDM → Copywriting → OpenCode |
| Deal Close | Deal Closer → Presentation → OpenCode |

---

## 5. TOOL ROUTING LOGIC

### STRICT TOOL MANDATES

| Component | Role | Forbidden |
|-----------|------|----------|
| **OpenClaw** | Decision/Orchestration | Execution |
| **Codex** | Thinking/Logic | Execution |
| **OpenCode** | Execution ONLY | Thinking |

### FILE TASK RULE (MANDATORY)

```
IF output == file (.pptx, .pdf, .xlsx):
   → OpenCode MUST execute
   → python-pptx MUST be used
   → markdown output = FAIL
   → image-only output = FAIL
```

### TOOL ENFORCEMENT

| Output Type | Tool Required | Reject If |
|-------------|--------------|-----------|
| .pptx | OpenCode + python-pptx | .md, .txt |
| .pdf | OpenCode + weasyprint | .md only |
| .xlsx | OpenCode + openpyxl | .csv only |
| .png (chart) | OpenCode + matplotlib | description |

---

## 6. ENFORCEMENT RULES

### OUTPUT VALIDATION (FINISHER CHECK)

**REJECT output if:**

- [ ] Format wrong (.md instead of .pptx)
- [ ] Bullet count > 4 lines
- [ ] Words/line > 6
- [ ] Charts < 40%
- [ ] No visual hierarchy
- [ ] Repeated slide types

### FAILURE CORRECTION

| Failure | Action |
|---------|--------|
| Generic output | → Assign Presentation Architect |
| No file | → Force OpenCode execution |
| Shallow thinking | → Assign GTM Architect |
| No structure | → Assign Codex |

### QUALITY GATES

1. **SOURCE CHECK** → GTM doc exists
2. **STRUCTURE CHECK** → VISUAL_SYSTEM compliance
3. **FORMAT CHECK** → .pptx not .md
4. **EXECUTION CHECK** → OpenCode triggered

---

## 7. FINAL ARCHITECTURE

```
┌─────────────────────────────────────────────┐
│           CEO (OpenClaw)                    │
│         Orchestrator + Decision            │
└────────────────────┬────────────────────────┘
                     │
        ┌────────────┼────────────┐
        ▼            ▼            ▼
   ┌─────────┐  ┌─────────┐  ┌─────────┐
   │   GTM   │  │ REVENUE │  │ CONTENT │
   │DEPT     │  │ DEPT    │  │ DEPT    │
   └────┬────┘  └────┬────┘  └────┬────┘
        │            │            │
        ▼            ▼            ▼
   ┌─────────────────────────────────────────┐
   │           EXECUTION DEPT                │
   │  Codex (Logic) → OpenCode (Files)       │
   └────────────────────┬────────────────────┘
                        │
                        ▼
               OUTPUT VALIDATION
               (FINISHER)
                        │
                        ▼
               FINAL OUTPUT
```

---

## 8. ROLE OUTPUT OWNERSHIP

| Role | Produces | Ownership |
|------|----------|-----------|
| GTM Architect | positioning.md, icp.json, strategy.md | Full |
| Market Research | research.md, insights.json | Full |
| Presentation Architect | layout.json, structure.md | Full |
| Copywriting Agent | content.md, messaging.md | Full |
| OpenCode | .pptx, .pdf, .xlsx | Full |
| Codex | structured_plan.json | Full |

---

## 9. ENFORCEMENT CHECKLIST

Before any output:

- [ ] Correct role assigned?
- [ ] Skills loaded for role?
- [ ] Tool routing correct?
- [ ] File format correct (.pptx not .md)?
- [ ] VISUAL_SYSTEM compliant?
- [ ] OpenCode executed?

If ANY NO → REJECT → RE-EXECUTE

---

## 10. AGENT REGISTRATION

| Agent ID | Role | Department | Status |
|----------|------|------------|--------|
| main | CEO | Orchestration | Active |
| gtm-architect | GTM Architect | GTM | Create |
| market-research | Researcher | GTM | Create |
| bdm-agent | BDM | Revenue | Create |
| deal-closer | Closer | Revenue | Create |
| presentation-arch | Architect | Content | Create |
| copywriter | Copywriter | Content | Create |
| opencode-exec | Executor | Execution | Active |

---

**COMPANY OS COMPLETE**
**Total Roles:** 9
**Departments:** 4
**Enforcement Layers:** 5