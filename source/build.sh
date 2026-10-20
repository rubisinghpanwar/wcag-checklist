#!/bin/sh
# Makes the four shareable HTML files from checklist-template.html.
# Run from anywhere: sh source/build.sh
set -e
here="$(cd "$(dirname "$0")" && pwd)"
out="$(dirname "$here")"
tpl="$here/checklist-template.html"

make() { # file order sample title
  sed -e "s|/\*CONFIG\*/.*/\*END\*/|/*CONFIG*/{ order: '$2', sample: $3 }/*END*/|" \
      -e "s|__TITLE__|$4|" "$tpl" > "$out/$1"
  echo "Built $1"
}

make wcag22-checklist-by-pass-blank.html     pass false "WCAG 2.2 AA Audit Checklist (blank, by testing pass)"
make wcag22-checklist-by-pass-sample.html    pass true  "WCAG 2.2 AA Audit Checklist (sample, by testing pass)"
make wcag22-checklist-wcag-order-blank.html  wcag false "WCAG 2.2 AA Audit Checklist (blank, WCAG order)"
make wcag22-checklist-wcag-order-sample.html wcag true  "WCAG 2.2 AA Audit Checklist (sample, WCAG order)"
