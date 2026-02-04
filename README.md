# Strong Normalization


## System T

The syntax and typing rules for System T are specified in 
[systemT.mod](./systemT/systemT.mod) and [systemT.sig](./systemT/systemT.sig).

The file [systemT-partial.thm](./systemT/systemT-partial.thm) describes
a strong normalization proof for System T using an inductive version of the reducibility
predicate. In this file, we restrict the reduction rules for simplicity.

The file [systemT.thm](./systemT/systemT.thm) describes
a strong normalization proof for System T using an inductive version of the reducibility
predicate. The reduction rules in this file are identical to those
presented in Girard, Lafont, and Taylor's *Proof and Types*.
