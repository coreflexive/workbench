#import "../../lib/calc.typ":*
#import "../../lib/rel.typ": *

#let obs-02 = calc(
  calc-start(
    $(forall a | a in X : (exists x | x in X : a "R" x))$
  ),

  calc-row(
    "i.",
    $R in A tilde A$
  ),

  calc-row(
    "ii.",
    $(forall x | x in X : x in A)$
  ),

  calc-row(
    "iii.",
    $(forall a | a in A : a "R" a)$
  ),

  step(
    $forces$,
    [Generalisation, fixing $a in X$],
    
    calc(
      calc-start(
        $(exists x | x in X : a "R" x)$
      ),

      calc-row(
        "iv.",
        $a in X$
      ),

      calc-row(
        "1.",
        $a in A$
      ),

      step(
        $arrow.double.l$,
        [$exists$ introduction],
        $(x in X and a "R" x)[x colon.eq a]$
      ),

      step(
        $equiv$,
        [Textual substitution],
        $a in X and a "R" a$
      ),

      step(
        $equiv$,
        [Assumption iv.],
        $a "R" a$
      ),

      step(
        $equiv$,
        [Assumption iii. using observation 1.],
        $"true"$
      ),

      calc-finish
    )
  ),
  calc-finish
)

#obs-02
