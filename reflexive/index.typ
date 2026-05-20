#import "../lib/theory.typ": *

#let index = centred-theory(
  [Reflexive],
  (
    ..section("Parameters"),
    ..declare($A$, 
        $"Set"$),
    ..declare($R$, 
        $A tilde A$),

    ..section("Assumptions"),
    ..assume("a.", 
        $"id"_A subset.eq R$),

    ..section("Observations"),
    ..observe("1.", 
        $(forall a | a in A : a "R" a)$),
    ..observe("2.",
        $(forall a | a in X : (exists x | x in X : a "R" x)) arrow.double.l X subset.eq A$),
  )
)

#index
