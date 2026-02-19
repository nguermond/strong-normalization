# Strong Normalization
$$\newcommand{\imp}{\supset}
\newcommand{\red}{{\color{blue}\mathrm{red}}}
\newcommand{\step}{{\color{blue}\mathrm{step}}}
\newcommand{\neutral}{{\color{blue}\mathrm{neutral}}}
\newcommand{\unit}{{\color{purple}{\mathrm{unit}}}}
\newcommand{\startm}{{\color{purple}{\star}}}
\newcommand{\lam}{{\color{purple}{\mathrm{lam}}}}
\newcommand{\arr}{{\color{purple}{\mathrm{arr}}}}
\newcommand{\ind}{\stackrel{\mathclap{{\mbox{$\mu$}}}}{:=}}$$
The proofs in this repository are formalizations in the [Abella](https://abella-prover.org/index.html) proof assistant
which show that strong normalizability for the Simply Typed 
Lambda Calculus (STLC) and System T may be proved using an inductive 
version of the reducibility predicate, which is
an example of a ground stratified inductive definition:
$$\red\ \unit\ \startm \ind\ \top$$
$$\red\ (\arr\ A\ B)\ (\lam\ S) \ind \forall u.(\red\ A\ u)\imp(\red\ B\ (S\ u))$$
$$\red\ A\ T \ind \neutral\ T\wedge\forall u.(\step\ T\ u)\imp(\red\ A\ u)$$

## Simply Typed Lambda Calculus

The syntax and typing rules for STLC
are respectively specified in [stlc.sig](./STLC/stlc.sig) 
and [stlc.mod](./STLC/stlc.mod).

The file [stlc-simplified.thm](./STLC/stlc-simplified.thm) describes
a proof that the ground-stratified inductive version of reducibility implies 
strong normalizability in the simplified case in which a constant 
is introduced to simulate variables.

The file [stlc.thm](./STLC/stlc.thm) describes a strong normalization
proof for STLC using the ground-stratified inductive version of reducibility.

## System T

The syntax and typing rules for System T are respectively specified in 
[systemT.sig](./systemT/systemT.sig) and [systemT.mod](./systemT/systemT.mod).

The file [systemT-partial.thm](./systemT/systemT-partial.thm) describes
a strong normalization proof for System T using the ground-stratified inductive
version of the reducibility predicate. In this file, we restrict the reduction 
rules for simplicity.

The file [systemT.thm](./systemT/systemT.thm) describes
a strong normalization proof for System T using the ground-stratified inductive 
version of the reducibility predicate. The reduction rules in this file are 
identical to those presented in Girard, Lafont, and Taylor's *Proof and Types*.
