# WCAG 2.2 Level A and AA audit checklist

A free checklist of all 55 WCAG 2.2 Level A and AA success criteria. Mark each one Pass, Fail or N/A, add notes, and export the results to CSV for an ACR or VPAT. 4.1.1 Parsing is listed as deprecated and not counted, because it is obsolete and removed in WCAG 2.2.

## Which file to open

| File | What it is |
|---|---|
| `wcag22-checklist-by-pass-blank.html` | Blank checklist, arranged in four testing passes: Operability (Keyboard), Screen Reader, Color, Zoom |
| `wcag22-checklist-by-pass-sample.html` | The same, filled in for a fictional library website |
| `wcag22-checklist-wcag-order-blank.html` | Blank checklist in WCAG order, by principle and guideline |
| `wcag22-checklist-wcag-order-sample.html` | The same, filled in |

Each file works on its own. Double-click it to open it in your browser. It needs no internet connection and loads nothing from anywhere.

## How to use it

1. Optionally, type the product or page you're testing at the top.
2. For each criterion, choose a status (Not tested, Pass, Fail or N/A) and add notes.
3. Watch the Progress panel. It counts criteria done in each pass and overall.
4. Use **Show pass** and **Show status** to filter the list, for example to see only Fails.
5. **Export CSV** downloads all 55 criteria in WCAG order, with columns Criterion, Name, Level, Pass, Status and Notes.
6. **Print or save as PDF** prints the rows that match your filters, without the buttons and fields.

1.3.1 Info and Relationships appears twice in the Screen Reader pass, on purpose: first for landmarks and headings, then for all other structure. It still counts as one criterion. In the CSV it is one row: Fail if either check fails, and done only when both checks have a status.

## Where your progress is saved

Your progress saves automatically in your browser, on your device. It is never sent anywhere. Each of the four files saves separately. Clearing your browser data deletes it, so export a CSV to keep a copy. **Clear all statuses and notes** (or **Reset to sample data** in the samples) asks before deleting anything.

## Editing the checklist (for the author)

The four HTML files are built from `source/checklist-template.html`. Edit the template, then run `sh source/build.sh` (Git Bash) to rebuild all four files.
