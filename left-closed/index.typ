#import "../lib/theory.typ": *

#let index = centred-theory(
  "Left-closed",
  (
    ..section("Parameters"),

    ..declare($A$, $"Set"$),

    ..declare($R$, $A tilde A$),

    ..declare($X$, $"Set"$),

    ..section("Assumptions"),

    ..assume("a.", $X subset.eq A$),

    ..assume("b.", $(forall a,b | a "R" b and b in X : a in X)$),

    ..section("Observations"),

    ..observe(
      "1.",
      $X = R[X] arrow.double "Left-closed" R space X$,
    ),

    ..observe(
      "2.",
      $X = R[X] arrow.double.l "Left-closed" R space X and "Reflexive" R$,
    ),

    ..observe(
      "3.",
      $("Left-closed" R space X equiv X = R[X]) arrow.double.l "Reflexive" R$,
    ),
  ),
)
