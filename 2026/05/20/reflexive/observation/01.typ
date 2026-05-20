#import "../../lib/calc.typ":*
#import "../../lib/rel.typ": *

#set page(
  width: auto,
  height: auto,
  margin: 4pt,
)

#set text(size: 11pt)

#set page(
  width: auto,
  height: auto,
  margin: 4pt,
)

#set text(size: 11pt)

#let obs-01 = calc(
  calc-start(
    $"id"_A subset.eq R$
  ),

  step(
    $equiv$,
    "Extensionality",
    $(forall y, x | y #rel-id("A") x : y "R" x)$
  ),

  step(
    $equiv$,
    "Definition of identity",
    $(forall y, x | y = x and x in A : y "R" x)$
  ),

  step(
    $equiv$,
    "One-point rule",
    $(forall x | x in A : x "R" x)$
  ),

  calc-finish
)

#obs-01
