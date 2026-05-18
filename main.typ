#import "lib/theory.typ": *
#import "lib/calc.typ": *
#import "lib/doc.typ": *

#set page(
  margin: 2.5cm,
)

#set text(
  size: 11pt,
)

#doc-title[Look at my theory]

#lorem(100)

#let left-closed-parms = centred-theory(
  "Left closed",
  (
    ..section("Parameters"),

    ..declare($A$, $"Set"$),

    ..declare($R$, $A tilde A$),

    ..declare($X$, $"Set"$),
  ),
)

#left-closed-parms

#lorem(100)

#let left-closed = centred-theory(
  "Left closed",
  (
    ..section("Assumptions"),

    ..assume("a.", $X subset.eq A$),

    ..assume("b.", $(forall a,b | a "R" b and b in X : a in X)$),
  ),
)

#left-closed

#lorem(150)

#let left-closed = centred-theory(
  "Left closed",
  (
    ..section("Observations"),

    ..observe(
      "1.",
      $X = R[X] arrow.double "Left closed" R space X$,
    ),

    ..observe(
      "2.",
      $("Left closed" R space X arrow.double X = R[X]) arrow.double.l "Reflexive" R$,
    ),

    ..observe(
      "3.",
      $("Left closed" R space X equiv X = R[X]) arrow.double.l "Reflexive" R$,
    ),
  ),
)

#left-closed

#lorem(80)

#let left-closed = centred-theory(
  "Left closed",
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
      $X = R[X] arrow.double "Left closed" R space X$,
    ),

    ..observe(
      "2.",
      $("Left closed" R space X arrow.double X = R[X]) arrow.double.l "Reflexive" R$,
    ),

    ..observe(
      "3.",
      $("Left closed" R space X equiv X = R[X]) arrow.double.l "Reflexive" R$,
    ),
  ),
)

#left-closed

#lorem(500)

#artefact(
  [Example derivation],
  boxed[
    #calc(
      calc-row(
        start,
        $X = R[X]$,
      ),

      step(
        $equiv$,
        [Extensionality],
        $(forall a | : a in X equiv a in R[X])$,
      ),

      step(
        $equiv$,
        [Mutual implication],
        $(forall a | : (a in X arrow.double a in R[X]) and (a in X arrow.double.l a in R[X]))$,
      ),

      step(
        $equiv$,
        [Distributivity; Trading],
        lines(
          $(forall a | a in X : a in R[X]) and$,
          $(forall a | a in R[X] : a in X)$,
        ),
      ),

      step(
        $equiv$,
        [Definition of direct image, twice],
        lines(
          $(forall a | a in X : (exists x | x in X : a "R" x)) and$,
          $(forall a | (exists x | x in X : a "R" x) : a in X)$,
        ),
      ),

      step(
        $equiv$,
        [Identity of conjunction],
        calc(
          calc-row(
            start,
            warn($"Reflexive" R$),
          ),
          
        ),
      ),

      calc-row(
        gap,
        $(forall a | (exists x | x in X : a "R" x) : a in X)$,
      ),

      step(
        $equiv$,
        [Splitting],
        $(forall x | x in X : (forall a | a "R" x : a in X))$,
      ),

      step(
        $equiv$,
        [Definition of Left Set],
        $"Left Set" R space X$,
      ),

      

      calc-row(
        finish,
        [],
      ),
    )
  ],
)