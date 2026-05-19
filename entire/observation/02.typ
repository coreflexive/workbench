#import "../../lib/calc.typ":*
#import "../../lib/rel.typ": *

#let obs-02 = calc(
  calc-start(
    $#rel-id("B") subset.eq R^circle.small dot R$
  ),

  step(
    $equiv$,
    "Extensionality",
    $(forall y, x | y #rel-id("B") x : y(R^circle.small dot R)x)$
  ),

  step(
    $equiv$,
    "Identity",
    $(forall y, x | y = x and x in B: y(R^circle.small dot R)x)$
  ),

  step(
    $equiv$,
    "One-point rule",
    $(forall x | x in B: x(R^circle.small dot R)x)$
  ),

  step(
    $equiv$,
    "Composition",
    $(forall x | x in B: (exists a |: x op(R^circle.small) a and a op(R) x))$
  ),

  step(
    $equiv$,
    "Converse",
    $(forall x | x in B: (exists a |: a op(R) x and a op(R) x))$
  ),

  step(
    $equiv$,
    "Converse",
    $(forall x | x in B: (exists a |: a op(R) x))$
  ),

  calc-finish
)

#obs-02
