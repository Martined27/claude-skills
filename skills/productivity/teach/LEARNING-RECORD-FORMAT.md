# Learning Record Format

Learning records are stored in `./learning-records/` with sequential numbering (`0001-slug.md`, `0002-slug.md`, etc.) and function as teaching equivalents of Architecture Decision Records. They capture non-obvious lessons, key insights, and established prior knowledge to inform future instructional direction.

## Core Structure

The minimal template consists of a short title and 1–3 sentences explaining what was learned and its significance for upcoming sessions. Additional sections—**Status**, **Evidence**, and **Implications**—are optional and should only be included when they provide substantive value.

## When to Create a Record

Records should be written when:

- "The user demonstrated genuine understanding of something non-trivial" with evidence of correct application
- Prior knowledge is disclosed with stated depth
- Misconceptions are identified and corrected
- The learning mission shifts based on discovered priorities

Records should *not* document mere exposure to material, duplicate glossary definitions, or serve as session activity logs.

## Key Practices

Scan the directory to determine the next sequential number. When understanding deepens or corrects, mark earlier records with `Status: superseded by LR-NNNN` rather than deleting them to preserve the evolution of comprehension.
