# Prill-Exceptional Étale Covers from Raynaud Bundles

This repository contains a short, not-yet-peer-reviewed algebraic-geometry
preprint proving that every
smooth projective connected complex curve of genus at least two admits a
connected finite étale Galois cover whose fibre over every point moves in a
pencil.

## Manuscript files

- `output/pdf/Prill_Raynaud_Final.pdf` - canonical revised manuscript.
- `output/pdf/Prill_Raynaud_Anonymous.pdf` - blind-review version with no
  visible author and no PDF author metadata.
- `source/paper.tex` - editable LaTeX source.
- `source/paper-anonymous.tex` - thin wrapper used to build the blind version.
- `source/references.bib` - BibTeX database.
- `original/Prill_Raynaud_English_NoAuthor_CHECKED.pdf` - immutable supplied
  input retained for provenance.
- `CHANGELOG.md` - substantive editorial and proof-presentation changes.
- `PROOF_AUDIT.md` - focused verification notes for the main proof chain.
- `CITATION.cff` - machine-readable citation metadata for GitHub and archives.
- `CHECKSUMS.sha256` - SHA-256 checksums of the supplied and revised PDFs.

The public author name for this version is **FDmd-233**. No affiliation, email,
or ORCID is asserted.

Suggested citation:

> FDmd-233, *Prill-Exceptional Étale Covers from Raynaud Bundles*, preprint,
> 2026, version 1.0.0.

## Build

The checked build used TeX Live 2025, pdfTeX 1.40.27, LaTeX2e 2024-11-01
patch level 2, latexmk 4.86a, and BibTeX 0.99d. A current TeX Live installation
with `latexmk`, `amsart`, `newtx`, `microtype`, and BibTeX should also build the
source, but bit-for-bit identity outside the checked toolchain is not promised.

On Windows PowerShell:

```powershell
.\build.ps1 -Clean
```

The script fixes the PDF build epoch to the manuscript date for reproducible
output, compiles the source, copies the result to `output/pdf/`, and refreshes
`CHECKSUMS.sha256`.

## Verification status

- The proof chain was audited during preparation at the level of the
  Raynaud pullback formula, the Jordan-Hölder counting argument, the Kummer
  trivialisation step, and the regular-representation construction.
- All citations and internal cross-references resolve.
- The final PDF has been rendered page by page and checked for clipping,
  overlap, broken formulae, and orphaned bibliography pages.
- No datasets or computational results are used.

To verify the two distributed PDFs on PowerShell:

```powershell
Get-Content .\CHECKSUMS.sha256
Get-FileHash -Algorithm SHA256 .\original\Prill_Raynaud_English_NoAuthor_CHECKED.pdf
Get-FileHash -Algorithm SHA256 .\output\pdf\Prill_Raynaud_Final.pdf
Get-FileHash -Algorithm SHA256 .\output\pdf\Prill_Raynaud_Anonymous.pdf
```

## Scholarly timestamping

A public Git commit and release provide a useful version record, but they are
not a substitute for a recognized preprint deposit. For a stronger scholarly
priority record, deposit the same checked PDF and source on arXiv and, if a DOI
is desired, archive the GitHub release through Zenodo or another DOI-granting
repository.

No reuse license is asserted in this repository. Add the intended license only
after confirming the target journal's preprint and copyright policy.
