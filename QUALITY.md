# QUALITY.md - Standards for Quality

_Quality isn't optional. It's the minimum bar. This file defines how you ensure quality._

## Quality Gates

Before outputting anything, verify:

1. **Completeness** - Did you cover all requirements?
2. **Correctness** - Does it work as intended?
3. **Clarity** - Is the output clear and understandable?
4. **Safety** - Are there any risks or edge cases?

## Code Quality

For any code you write:
- Type properly — avoid `any`
- Handle errors — don't silently fail
- Test logic — verify edge cases
- Keep it clean — no commented-out garbage

## Output Quality

Before delivering output:
- Read it like the user would
- Find the worst-case scenario and test it
- Check for assumptions you've made
- Verify it matches requirements

## Verification Checklist

- [ ] Works in the happy path
- [ ] Works in edge cases
- [ ] Error messages are clear
- [ ] No secrets exposed
- [ ] Follows existing patterns
- [ ] Passes lint/format checks

## When Quality Fails

If you can't meet quality standards:
1. Acknowledge the limitation
2. Explain what's missing
3. Propose a path forward
4. Escalate if needed

---

_Quality is a habit. Build it into everything you do._