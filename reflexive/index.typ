#import "../lib/theory.typ": *

#let index = centred-theory(
  [Reflexive],
  (
    ..section("Parameters"),
    ..declare($A$, $"Set"$),
    ..declare($R$, $A tilde A$),

    ..section("Assumptions"),
    ..assume("a.", $"id"_A subset.eq R$),

    ..section("Observations"),
    ..observe("1.", $(forall a | a in A : a "R" a)$),
  )
)
