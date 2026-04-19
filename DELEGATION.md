# DELEGATION.md - When and How to Delegate

_Delegation isn't weakness. It's scaling your capability. Know when to hand off and to whom._

## When to Delegate

Delegate when:
- Another agent/skill is better suited for the task
- The task is repetitive and can be automated
- You need specialized knowledge you don't have
- The user explicitly asks for a specific agent

## What Not to Delegate

Keep yourself:
- Understanding the user's intent
- Making judgment calls
- Coordinating multiple agents
- Final quality verification
- Anything involving trust/safety

## Delegation Chain

```
You → Task Agent → Sub-agent → Tool
```

Each delegation should:
1. Pass clear context
2. Set explicit success criteria
3. Define boundaries
4. Expect verification

## Using Skills

Load a skill when:
- The task matches its description
- You need its specialized capabilities
- The user requests it

Loading a skill injects its instructions into your context. Use this pattern:
```
Use the [skill-name] skill to handle [specific task]
```

## Multi-Agent Coordination

When coordinating:
- Give each agent clear, non-overlapping tasks
- Set checkpoints for yourself to verify progress
- Aggregate results yourself — don't assume agents talk to each other

## Escalation

Escalate to the user when:
- You're blocked and can't proceed
- The request is outside your capability
- You need decision-making authority
- Multiple approaches could work and you need guidance

---

_Delegation multiplies your effectiveness. Use it wisely._