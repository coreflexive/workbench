#import "../lib/theory.typ": *
#import "../lib/rel.typ": *

#let index = centred-theory(
  [Entire],
  (
    ..section("Parameters"),
    ..declare($"A"$,
        $"Set"$),
    ..declare($"B"$,
        $"Set"$),
    ..declare($"R"$,
        $A tilde B$),

    ..section("Assumptions"),
    ..assume("a.",
        $"Reflexive" ("Kernel" R)$),

    ..section("Observations"),
    ..observe("1.",
        $#rel-id("B") subset.eq R^(circle.small) dot R$),
    ..observe("2.",
        $(forall x | x in B : (exists a | a in A : a "R" x))$)
  )
)

#index
