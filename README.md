# Strong Normalization

## Simply Typed Lambda Calculus

The syntax and typing rules for the simply typed lambda calculus (STLC)
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
