---
description: Sanitize project audit
agent: plan
---

Analyze the current project and identify opportunities to improve its quality, simplicity and maintainability.
First, inspect the project tree, architecture, source code, configuration, dependencies and existing tests.
Do not make any changes. This is an audit and recommendation task.

**Focus areas**
- Best practices: Follow conventions and best practices for the project's architecture and languages.
- Maintainability: Make the project easy to understand and onboard for a newcomer.
- Simplicity: Prefer the simplest solution. Avoid over-engineering, unnecessary abstractions and premature optimization.
- Code reuse: Identify duplication and opportunities for sensible factorization.
- Dependencies: Minimize dependencies and avoid unnecessary packages.
- Security: Identify vulnerabilities, unsafe patterns, exposed secrets and configuration weaknesses.
- Consistency: Look for inconsistent patterns, conventions and architectural decisions.

**Guidelines**

- Base every finding on the actual codebase. Do not speculate.
- Respect the existing architecture unless there is a strong reason to change it.
- Avoid recommending changes just for the sake of improvement.
- Consider the cost and benefit of every recommendation.
- Prefer small, incremental improvements over large rewrites.
- Do not introduce complexity to solve problems that do not exist.

**Response**
- Concise and clear, not over technical language
- No extra wording
- Table with priority per area
- Direct recommandations and fix
