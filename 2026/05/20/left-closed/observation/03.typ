#import "../../lib/calc.typ": *

#set page(
  width: auto,
  height: auto,
  margin: 4pt,
)

#set text(size: 11pt)

#let obs-03 = calc(
  calc-start(
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

  calc-finish,
)

#obs-03
