#import "../../lib/calc.typ":*
#import "../../lib/rel.typ": *

#set page(
  width: auto,
  height: auto,
  margin: 4pt,
)

#set text(size: 11pt)

#let obs-01 = calc(
  calc-start($"Entire" "A" "B" "R"$),

  step(
    $equiv$,
    "Definition of Entire",
    $"Reflexive" ("Kernel" "R")$
  ),

  step(
    $equiv$,
    "Definition of Reflexive",
    $#rel-id("B") subset.eq "Kernel" "R"$
  ),

  step(
    $equiv$,
    "Definition of Kernel",
    $#rel-id("B") subset.eq "R"^circle.small dot R$
  ),

  calc-finish
)

#obs-01
