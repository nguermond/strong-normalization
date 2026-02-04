module systemT.


typ nat.
typ (arr A B) :- typ A, typ B.

of (lam S) (arr A B) :- pi x\ (of x A => of (S x) B).
of (app T U) B :- typ A, of U A, of T (arr A B).
of z nat.
of (suc X) nat :- of X nat.
of (rec C F N) B :- of C B, of (lam x \ lam y \ F x y) (arr B (arr nat B)), of N nat.