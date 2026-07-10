# Notes on the proof

These are points rechecked during revision.  They are not an independent peer
review.

## Raynaud bundle

The formula used in the paper is

```text
[n]^* E_n = H^0(J, O_J(n Theta))^* tensor O_J(n Theta).
```

Beauville, Section 2.3, gives the dual vector space, rank `n^g`, slope `g/n`,
and nonvanishing after tensoring with any element of `Pic^0(C)`.  Raynaud's
construction gives semistability after restriction to the curve.

## The determinant-normalising twist

The determinant-normalising roots form a torsor under `J[r]`, so there are
`r^(2g)` of them.  If a root is bad, saturation of the corresponding map into
`R` gives a degree-one line subbundle.  A fixed Jordan–Hölder filtration shows
that this line subbundle must be one of its rank-one factors.  There are at most
`r` such factors.  Since `r^(2g) > r`, at least one root is not bad.

## Finite monodromy

After base change by multiplication by `g` on the Jacobian, the twisted bundle
restricts on a connected component to a direct sum `N^(direct sum r)`.  Its
trivial determinant gives `N^r = O`.  The Kummer torsor of `N` trivialises the
bundle on a finite étale cover; taking a connected Galois closure then gives a
representation of a finite group.

## The irreducible summand

By Maschke's theorem, the bundle is a direct sum of irreducible
finite-monodromy bundles.  Upper semicontinuity makes the nonvanishing locus of
each summand closed.  These finitely many loci cover the irreducible curve, so
one fixed nontrivial summand is nonvanishing after twisting by every point.
The regular representation contains that summand and the trivial
representation, which gives the two sections required in the theorem.

## Scope

These notes cover only the points above.  They do not establish novelty, and
the paper has not yet received independent peer review.
