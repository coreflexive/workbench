#import "../lib/theory.typ": *
#import "../lib/calc.typ": *
#import "../lib/doc.typ": *

#set page(
  margin: 2.5cm,
)

#set text(
  size: 11pt,
)

#doc-title[Left-closed Sets]

#let left-closed = centred-theory(
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

#left-closed

#artefact(
  [Proof of Observation 1.],
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
        [Predicate calculus],
        $(forall a | a in R[X] : a in X)$
      ),

      step(
        $equiv$,
        [Direct image],
        $(forall a | (exists x | x in X : a "R" x) : a in X)$
      ),

      step(
        $equiv$,
        [Splitting],
        $(forall x | x in X : (forall a | a "R" x : a in X))$
      ),

      step(
        $equiv$,
        [Nesting],
        $(forall a,x | x in X and a "R" x : a in X)$
      ),

      step(
        $equiv$,
        [Definition of Left closed],
        $"Left closed" R space X$
      ),

      calc-row(
        finish,
        [],
      ),
    )
  ],
)

#artefact(
  [Proof of Observation 2.],
  boxed[
    #calc(
      calc-row(
        start,
        $X = R[X]$,
      ),

      step(
        $equiv$,
        [Extensionality],
        $(forall a | : a in X equiv a in R[X])$
      ),

      step(
        $equiv$,
        [Mutual implication],
        lines(
          $(forall a | a in X : a in R[X]) and$,
          $(forall a | a in R[X] : a in X)$,
        ),
      ),

      step(
        $equiv$,
        [Definition of Left closed],
        lines(
          $(forall a | a in X : a in R[X]) and$,
          $"Left set" R space X$
        )
      ),

      step(
        $equiv$,
        [Identity of $and$],
        calc(
          calc-row(
            start,
            warn($"Left closed" R space X$),
          ),
        )
      ),

      calc-row(
        gap,
        $(forall a | a in X : a in R[X])$
      ),

      step(
        $equiv$,
        [Definition of direct image],
        $(forall a | a in X : (exists x | x in X : a "R" x))$
      ),

      step(
        $equiv$,
        [Reflexivity of $R$],
        calc(
          calc-row(
            start,
            warn($"Reflexive" R$),
          ),
        )
      ),

      calc-row(
        gap,
        $"true"$
      ),

      calc-row(
        finish,
        [],
      ),
    )
  ]
)

#artefact(
  [Proof of Observation 3.],
  boxed[
    #calc(
      calc-row(
        start,
        $X = R[X]$
      ),

      calc-row(
        "i.",
        $"Reflexive" R$
      ),

      step(
        $arrow.double$,
        [Observation 1.],
        $"Left-closed" R space X$
      ),

      step(
        $equiv$,
        [Assumption i.],
        $"Left-closed" R space X and "Reflexive" R$
      ),

      step(
        $arrow.double$,
        [Observation 2.],
        $X = R[X]$
      ),

      calc-row(
        finish,
        []
      ),
    )
  ]
)
