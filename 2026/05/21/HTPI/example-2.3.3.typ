#import "../lib/calc.typ": *
#import "../lib/rel.typ": *

#import "../lib/doc.typ": *

#set page(
  margin: 2.5cm,
)

#set text(
  size: 11pt,
)

//------------------------------------------
// Heading style
//------------------------------------------

#let heading-fill = rgb("#2f4f6f")
#let heading-rule-fill = rgb("#9aa9b8")

#show heading: it => block(
  above: 1.1em,
  below: 0.95em,
)[
  #text(
  size: if it.level == 1 { 1.12em } else if it.level == 2 { 1.02em } else { 0.95em },
  weight: if it.level <= 2 { "semibold" } else { "medium" },
  fill: heading-fill,
)[
  #it.body
]

  #v(0.25em)
  #line(
    length: 85%,
    stroke: 0.45pt + heading-rule-fill,
  )
]

//----------------------------------------------------
// The calculations
//----------------------------------------------------

#let part-4 = calc(
  calc-start(
    $x in op(cal("P"))(A inter B)$
  ),

  step(
    $equiv$,
    [Part 1.],
    $(forall z | z in x : z in A inter B)$
  ),

  step(
    $equiv$,
    [LADM (11.21) Axiom, Intersection],
    $(forall z | z in x : z in A and z in B)$
  ),

  step(
    $equiv$,
    [LADM (8.15) Axiom, Distributivity],
    $(forall z | z in x : z in A) and (forall z | z in x : z in B)$
  ),

  step(
    $equiv$,
    [Part 1., twice],
    $x in op(cal("P")A) and x in op(cal("P")B)$
  ),

  step(
    $equiv$,
    [Part 1., twice],
    $x in op(cal("P")A) inter op(cal("P")B)$
  ),

  calc-finish
)
//----------------------------------------------------
// The presentation
//----------------------------------------------------

#set page(
  margin: 2.5cm,
)

#set text(
  size: 11pt,
)

#doc-title[How to Prove It - Example 2.3.3]

== Solutions in brief

=== Part 4 and 5

Investigate the logical form of $x in op(cal("P"))(A inter B)$.

==== Solution

By direct calculation

$ x in op(cal("P"))(A inter B) equiv x in op(cal("P"))A inter x in op(cal("P"))B $

That is

$ op(cal("P"))(A inter B) = op(cal("P"))A inter op(cal("P"))B $

$suit.heart$

== Detailed answers

#artefact(
  "Calculation for Part 4.",
  boxed[#part-4]
)
