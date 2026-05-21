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

#let part-1 = calc(
  calc-start(
    $x in op(cal("P"))A$
  ),

  step(
    $equiv$,
    [HTPI (2.3.2) Powerset],
    $x in {x | x subset.eq A}$
  ),

  step(
    $equiv$,
    [LADM (11.6) Characteristic predicate],
    $x subset.eq A$
  ),

  step(
    $equiv$,
    [LADM (11.13) Axiom, Subset],
    $(forall z | z in x : z in A)$
  ),

  calc-finish
)

#let part-2 = calc(
  calc-start(
    $op(cal("P"))A subset.eq op(cal("P")B)$
  ),

  step(
    $equiv$,
    [LADM (11.13) Axiom, Subset],
    $(forall X | X subset.eq A : X subset.eq B)$
  ),

  step(
    $equiv$,
    [LADM (11.13) Axiom, Subset, twice],
    $(forall X | (forall z | z in X : z in A) : (forall z | z in X : z in B))$
  ),

  calc-finish
)

#let part-3 = calc(
  calc-start(
    $B in {op(cal("P"))A | A in cal("F")}$
  ),

  step(
    $equiv$,
    [Interpret using LADM notation],
    $B in {A | A in cal("F") : op(cal("P"))A}$
  ),

  step(
    $equiv$,
    [LADM(11.3) Axiom, Set membership],
    $(exists A | A in cal("F") : B = op(cal("P"))A)$
  ),

  step(
    $equiv$,
    [Part 1.],
    $(exists A | (forall z | z in A : z in cal("F")) : B = op(cal("P"))A)$
  ),

  step(
    $equiv$,
    [Focus on term of quantification],
    calc(
      calc-start(
        $B = op(cal("P"))A$
      ),

      step(
        $equiv$,
        [LADM (11.4) Axiom, Extensionality],
        $(forall z |: z in B equiv z in op(cal("P"))A)$
      ),

      step(
        $equiv$,
        [Part 1.],
        $(forall z |: z in B equiv (forall y | y in z : y in A))$
      ),

      calc-finish
    )
  ),

  calc-row(
    gap,
    $(exists A | (forall z | z in A : z in cal("F")) : (forall z |: z in B equiv (forall y | y in z : y in A)))$
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

=== Part 1

Investigate the logical form of $x in op(cal("P"))A$.

==== Solution

$ x in op(cal("P"))A equiv (forall z | z in x : z in A) $

$suit.heart$

=== Part 2

Investigate the logical form of $op(cal("P"))A subset.eq op(cal("P")B)$.

==== Solution

$
op(cal("P"))A subset.eq op(cal("P")B)
equiv
(forall X | (forall z | z in X : z in A) : (forall z | z in X : z in B))
$

$suit.heart$

=== Part 3

Invesitgate the logical form of $B in {op(cal("P"))A | A in cal("F")}$

==== Solution

$
  B in {op(cal("P"))A | A in cal("F")}
  equiv
  (exists A | (forall z | z in A : z in cal("F")) : (forall z |: z in B equiv (forall y | y in z : y in A)))
$

$suit.heart$

== Detailed answers

Each solution was discovered by direct calculation.  I used the laws from LADM and organised the logical transformations using the linear proof layout of Back's refinement calculus.

Parts 1 and 2 were straightforward requiring only a couple of definitions to transform the given statement into a quantified term.

#artefact(
  "Calculation for Part 1.",
  boxed[#part-1]
)

#artefact(
  "Calculation for Part 2.",
  boxed[#part-2]
)

Part 3 was interesting for two reasons.  Firstly, I needed to reinterpret traditional notation for set-comprehension in the uniform syntax of LADM.  Secondly, I used a sub-calculation to focus on manipulating a subterm, thus demonstrating a streamlined calculation.

#artefact(
  "Calculation for Part 3.",
  boxed[#part-3]
)

I delight in turning quanitifer-heavy formulae into pointfree expressions of relation algebra.  This exercise is asking us to do the opposite of that. Yuck.
