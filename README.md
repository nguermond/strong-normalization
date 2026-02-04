# Strong Normalization


## System T

The syntax and typing rules for System T are specified in 
[systemT/systemT.mod](systemT.mod) and [`systemT/systemT.sig](systemT.sig).

The file [systemT/systemT-partial.thm](systemT-partial.thm) describes
a strong normalization proof for System T using an inductive version of the reducibility
predicate. In this file, we restrict the reduction rules for simplicity.

The file [systemT/systemT.thm](systemT.thm) describes
a strong normalization proof for System T using an inductive version of the reducibility
predicate. The reduction rules in this file are identical to those
presented in Girard, Lafont, and Taylor's *Proof and Types*.
