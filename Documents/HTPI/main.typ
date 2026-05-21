#import "./lib/doc.typ": *
#import "./index.typ": *

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

//------------------------------------------
// Title
//------------------------------------------

#doc-title[How to Prove It]

//------------------------------------------
// Index
//------------------------------------------

== 2.3 More operations on sets

#index
