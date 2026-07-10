# Proof-audit notes

These notes record the load-bearing checks performed while reconstructing and
editing the manuscript. They are not a substitute for journal peer review.

## 1. Raynaud bundle input

The formula used in the manuscript is

```text
[n]^* E_n = H^0(J, O_J(n Theta))^* tensor O_J(n Theta).
```

Beauville, Section 2.3, gives the dual vector space, rank `n^g`, slope `g/n`,
and non-vanishing after tensoring with every element of `Pic^0(C)`. Raynaud's
original construction supplies semistability on restriction to the curve.

## 2. Determinant-normalising twist

The set of determinant-normalising roots is a torsor under `J[r]`, hence has
`r^(2g)` elements. A bad root gives, after saturation, a degree-one line
subbundle of the semistable slope-one bundle `R`. In a fixed Jordan-Hölder
filtration, the first stable quotient receiving that line subbundle is
isomorphic to it. Thus bad roots have at most as many isomorphism classes as
rank-one Jordan-Hölder factors, at most `r`. Since `r^(2g) > r`, a good root
exists. This counting step was expanded in the revised proof.

## 3. Finite monodromy

After base change by multiplication by `g` on the Jacobian, the twisted bundle
restricts on a connected component to `N^(direct sum r)`. Trivial determinant
implies `N^r` is trivial. The Kummer torsor of the torsion line bundle `N`
trivialises it by a finite étale cover. Passing to a connected Galois closure
therefore realizes the bundle as a representation of a finite group.

## 4. Irreducible summand and final cover

Maschke decomposition gives finitely many irreducible finite-monodromy
summands. Upper semicontinuity makes each pointwise non-vanishing locus closed;
irreducibility of the curve forces one summand to be non-vanishing at every
point. The finite image of its monodromy defines a connected Galois cover.
The regular representation contains both the trivial representation and that
irreducible representation, so the projection formula supplies two independent
sections after twisting by every point.

## Outcome

No fatal gap was found in this chain over the complex numbers. The audit also
checked the dual in the Raynaud pullback formula, the connected-component
surjectivity in the Kummer step, and left/right regular-representation
conventions. Novelty and correctness should still be evaluated through normal
expert peer review.
