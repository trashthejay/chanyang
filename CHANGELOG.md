# Changelog

## [v1.0.0] — 2026-04-23
### Added
- Client-side single-file HTML app: upload Chase PDF + Zelle CSV, match donation memos, export to Excel
- Fixed name-matching engine (`tokenSimilar`) — tokens shorter than 4 chars require exact or prefix match, preventing false cross-donor matches
- Exact-name tie-breaking when multiple PDF candidates share the same date distance
- Match rate progress bar with animated gradient fill
- Unmatched donor list with per-row failure reason (name not found / amount mismatch / date mismatch / duplicate)
- 3-sheet Excel export: **Zelle Donations**, **Other Items**, **All**
- Drag-and-drop file upload support
- Step indicator (Upload → Processing → Results → Download)
