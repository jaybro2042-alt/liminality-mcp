# A first solve

## Ask

In your client, with the server connected:

> Use the liminality `solve` tool: "We run a small SaaS on one Postgres instance. Should we move to read replicas now or wait until the next pricing tier? Ground the answer in our current setup where you can."

## What comes back

A route, not a paragraph:

1. The sub-questions that decide the answer (load today, growth, failure cost, migration effort).
2. For each one, where the answer came from: a tool call, a document you registered, or a marked gap.
3. A scored decision frame with the recommended option and the condition that would flip it.
4. A result id you can open later or hand to a teammate.

## Check it

- Every grounded line names its source. Open the source before you trust the line.
- A line marked `blocked` or `not available` is not an answer; it tells you what to supply next.
- Ask a follow-up in the same thread; follow-ups inside a solve do not count as a new solve.

## Tools you will use most

- `solve`: the front door for a hard question, a decision, or a multi-step task.
- `ask_form` / `apply_form`: when the result depends on your specifics, it asks a short form first.
- `research`: a deeper multi-source pass for one question.
- `report_outcome` / `report_feedback`: tell it how the result did so the route improves.
