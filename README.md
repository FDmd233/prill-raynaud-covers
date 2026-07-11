# Prill-Exceptional Étale Covers from Raynaud Bundles

This repository contains a four-page preprint on Prill's problem for smooth
projective complex curves.  It proves that every such curve of genus at least
two has a connected finite étale Galois cover whose fibre over each point
moves in a pencil.  

## Files

- `output/pdf/Prill_Raynaud_Final.pdf`: author version.
- `output/pdf/Prill_Raynaud_Anonymous.pdf`: anonymous version; its PDF author
  field is blank.
- `output/pdf/Prill_Raynaud_Chinese.pdf`: complete Chinese edition.
- `source/paper.tex` and `source/references.bib`: LaTeX and BibTeX source.
- `source/paper-anonymous.tex`: LaTeX entry point for the anonymous version.
- `source/paper-zh.tex`: Chinese LaTeX source.
- `CHANGELOG.md`: revision history.
- `NOTES_ON_PROOF.md`: points rechecked in the proof.
- `CITATION.cff`: citation metadata.
- `CHECKSUMS.sha256`: checksums for the three current PDFs.

This release is credited to **FDmd-233**; no affiliation or contact details
are listed.

Suggested citation:

> FDmd-233, *Prill-Exceptional Étale Covers from Raynaud Bundles*, preprint,
> 2026, version 1.0.1.

## Building the PDFs

The published PDFs were built with TeX Live 2025, LaTeX2e 2024-11-01 patch
level 2, latexmk 4.86a, and BibTeX 0.99d.  The English versions use pdfTeX
1.40.27; the Chinese edition uses XeTeX 0.999997 and xdvipdfmx 20250205.
Other TeX Live versions may produce different binary output.

Run the following command in Windows PowerShell:

```powershell
.\build.ps1 -Clean
```

The script builds all three current versions, copies them to `output/pdf/`,
and rewrites `CHECKSUMS.sha256`.  It fixes the PDF build time to the manuscript
date so that repeated builds with the stated toolchain are byte-for-byte
identical.

## Checks made before release

I rechecked the Raynaud pullback formula, the Jordan–Hölder count in Lemma 3.1,
the Kummer-cover argument, and the use of the regular representation.  The
references and cross-references resolve, and all three PDFs were inspected for
layout problems.  The paper uses no datasets or computer calculations.

The GitHub release records this version. 
