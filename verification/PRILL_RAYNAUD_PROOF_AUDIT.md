# Independent proof audit of *Prill-Exceptional Étale Covers from Raynaud Bundles*

Date: 2026-10-10. This checks the actual four-page English PDF
\`output/pdf/Prill_Raynaud.pdf\`, not an inferred LaTeX source.
The PDF has 213,975 bytes. We compared a separately archived copy against the live GitHub manuscript using Git's object-hash algorithm and confirmed **byte-identical content**, with Git blob SHA-1 `9a0c33ab1314c171cae672b8d476ac60f2205873` and SHA-256 `68248fe0182a880b16df4f1e20feae6103342ff3fd40d5c279ffe74b8fb7a865`. The public repository does not contain
its original LaTeX source. The original PDF, mathematical conclusions,
and author attribution are left unchanged.

**Verdict on the displayed proof:** the argument from the two
Raynaud/Mukai inputs to Theorem 1.1 is logically complete; no
unresolved internal gap was found in its four-page derivation.
This is an independent mathematical reading, **not** a formal proof
certificate, a check of the Chinese translation, a novelty claim, or
journal peer review.

## External inputs (theorems used, not asserted to be reproved here)

Let \(C/\mathbb C\) be a smooth projective connected curve of genus
\(g\ge2\), \(J=\operatorname{Jac}(C)\), and \(R_n\) the restriction to
\(C\) of Raynaud's Fourier--Mukai bundle for
\(\mathcal O_J(n\Theta)\). The required facts are

1. \(R_n\) is semistable of rank \(n^g\), slope \(g/n\), and
   \(H^0(C,R_n\otimes\alpha)\ne0\) for every
   \(\alpha\in\operatorname{Pic}^0(C)\).
2. For the ambient bundle \(E_n\), the isogeny pullback satisfies
   \[
   [n]^*E_n\simeq\mathcal O_J(n\Theta)\otimes
      H^0(J,\mathcal O_J(n\Theta))^\vee.
   \]

Raynaud, *Sections des fibrés vectoriels sur une courbe* (1982),
Section 3, supplies the construction:
https://doi.org/10.24033/bsmf.1955 .
Schneider, *Sur la dimension de l'ensemble des points base ...*
(2007), Proposition 2.1(3), explicitly identifies the above
**theta-group-equivariant** pullback formula:
https://doi.org/10.5802/aif.2265 .
The present short proof only needs the existence of the displayed
bundle isomorphism; it does not require choosing a projectively flat
connection or an explicit theta structure.

## Check of Lemma 3.1: a determinant-normalized twist with no sections

Put \(n=g\), \(r=g^g\), and \(R=R_g\). Then \(\mu(R)=1\),
\(\deg R=r\).

The degree-\(-1\) solutions \(M^{\otimes r}\simeq(\det R)^{-1}\)
form a torsor under \(J[r]\) and hence number exactly \(r^{2g}\).

If \(H^0(C,R\otimes M)\ne0\), then the nonzero map
\(M^{-1}\to R\) has saturated image a degree-\(\ge1\) line
subbundle. Semistability of \(R\) bounds its degree by \(1\);
therefore the image is precisely \(M^{-1}\).

Fix any Jordan--Hölder filtration of the semistable bundle \(R\).
For a slope-one line subbundle \(L\subset R\), take the first
filtration stage containing \(L\). Its map to the associated
stable slope-one quotient is nonzero; a nonzero homomorphism
between stable bundles of equal slope is an isomorphism. Thus
\(L\) equals the isomorphism class of a rank-one
Jordan--Hölder factor. There are at most \(r\) such factors,
hence at most \(r\) bad line twists \(M\).
Because \(r^{2g}>r\), a good choice exists.

For \(V=R\otimes M\), this ensures simultaneously
\[
\deg V=0,\qquad\det V\simeq\mathcal O_C,\qquad
H^0(C,V)=0,\qquad H^0(C,V(p))\ne0\quad(\forall p\in C).
\]
The last assertion uses \(M(p)\in\operatorname{Pic}^0(C)\)
and the Raynaud support property, and is independent of the
choice of good \(M\).

## Check of Proposition 4.1: genuine finite *linear* monodromy

Form the finite étale Kummer pullback
\(\widetilde C=C\times_{J,[g]}J\) and choose a connected
component \(C'\). Under the pullback formula,
\[
V|_{C'}\simeq N^{\oplus r},\qquad
N=\widetilde i^*\mathcal O_J(g\Theta)\otimes q^*M
\]
for a line bundle \(N\) on \(C'\).
Pulling back the trivial determinant of \(V\) gives
\(N^{\otimes r}\simeq\mathcal O_{C'}\).
Thus \(N\) is torsion of order \(d\mid r\). The connected
component of the standard \(\mu_d\)-torsor associated to a
trivialization of \(N^{\otimes d}\) is a finite étale cover of
\(C'\) trivializing \(N\) and hence \(V\).

Passing to a connected finite étale Galois closure \(Y\to C\)
trivializes \(V\). A trivialization of the pullback vector bundle
gives constant descent matrices, because
\(H^0(Y,\mathcal O_Y)=\mathbb C\). Consequently \(V\) is
associated to an *honest complex representation of the finite
deck group* (not merely a finite projective representation).
This correctly avoids the scalar-monodromy pitfall.

## Check of Proposition 4.2: one fixed irreducible summand works everywhere

Maschke decomposition gives
\(V=\bigoplus_{j=1}^sW_j^{\oplus m_j}\).
There is no trivial constituent because \(H^0(C,V)=0\).
For each \(j\), the locus
\[
Z_j=\{p\in C:h^0(C,W_j(p))>0\}
\]
is closed by upper semicontinuity applied to the
diagonal divisor on \(C\times C\).
Because \(H^0(C,V(p))\ne0\) for every \(p\),
\(\bigcup_jZ_j=C\). Since \(C\) is irreducible and
the union is finite, one \(Z_j\) equals all of \(C\).
Therefore one *fixed* nontrivial finite-monodromy
irreducible bundle \(W\) satisfies
\(H^0(C,W(p))>0\) for every \(p\).

## Check of Theorem 1.1: permutation regular-representation argument

Let \(G=\operatorname{im}\rho_W\), and let \(X\to C\)
correspond to \(\ker\rho_W\). This is connected,
finite étale and Galois, with deck group \(G\).
The regular \(G\)-module contains the trivial
representation and \(W\) as distinct summands. Hence
\[
H^0(X,\mathcal O_X(f^{-1}(p)))
 =H^0(C,f_*\mathcal O_X\otimes\mathcal O_C(p))
\supset H^0(C,\mathcal O_C(p))
 \oplus H^0(C,W(p)).
\]
Both terms are nonzero, so the dimension is at least two
for every \(p\). This completes the passage from the
external Raynaud inputs to the theorem.

## Comparison with the later Theta--Heisenberg manuscript

This July 2026 PDF uses a determinant-normalized
semi**stable** Raynaud bundle plus a finite Galois
closure. It does **not** use or assume the later
explicit Schrödinger/Heisenberg local system, its
degree-\(g^{g+1}\) non-Galois cover, or the
genus-two degree-five example. There is **no
circular reliance** between the proof above
and those later strengthened constructions.

## Release-quality reservations

- This is a verification of the four-page **English** PDF.
  A byte-identical LaTeX source is not present in the repository;
  the Chinese translation was not separately audited.
- The arguments are conditional on the Raynaud/Mukai
  construction and pullback statement cited above.
- The existing manuscript has not been subjected to
  an independent journal referee process. Authorship,
  priority, and disclosure remain unchanged.
