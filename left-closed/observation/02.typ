#import "../../lib/calc.typ": *

#let obs-02 = calc(
  calc-start(
    $X = R[X]$
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

  calc-finish,
)
