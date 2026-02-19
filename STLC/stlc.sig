sig stlc.


kind ty type.
kind tm type.


type unit    ty.
type arr     ty -> ty -> ty.

type star tm.
type app  tm -> tm -> tm.
type lam  (tm -> tm) -> tm.

type typ   ty -> o.
type of    tm -> ty -> o.
