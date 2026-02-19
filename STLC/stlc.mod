module stlc.


typ unit.
typ (arr A B) :- typ A, typ B.

of star unit.
of (lam S) (arr A B) :- pi x\ (of x A => of (S x) B).
of (app T U) B :- typ A, of U A, of T (arr A B).