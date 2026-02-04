sig systemT.

kind ty type.
kind tm type.


type nat    ty.
type arr    ty -> ty -> ty.

type z    tm.
type suc  tm -> tm.
type rec  tm -> (tm -> tm -> tm) -> tm -> tm.
type app  tm -> tm -> tm.
type lam  (tm -> tm) -> tm.


type typ   ty -> o.
type of    tm -> ty -> o.
