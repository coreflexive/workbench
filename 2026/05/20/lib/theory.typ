// ------------------------------------------------------------
// Structured theory machinery
// ------------------------------------------------------------

#let qed = [$square.filled.small$]

#let normal(x) = math.class("normal", x)

#let theory-stroke = rgb("#6f7f8f")
#let theory-title-fill = rgb("#2f4f6f")
#let theory-section-fill = rgb("#4f6f68")
#let theory-marker-fill = rgb("#6f5f8f")

#let theory(
  title,
  rows,
  width: auto,
  min-width: 45%,
  inset: 9pt,
  stroke: theory-stroke,
) = box(
  stroke: stroke,
  inset: inset,
  width: width,
)[
  #grid(
    columns: (2em, auto),
    row-gutter: 0.75em,
    align: left,

    [#text(fill: theory-marker-fill)[§]],
    [
      #text(fill: theory-title-fill, weight: "bold")[#title]
      #box(width: min-width, height: 0pt)[]
    ],

    ..rows,

    [#text(fill: theory-marker-fill)[#qed]],
    []
  )
]

#let centred-theory(
  title,
  rows,
  width: auto,
  min-width: 45%,
  inset: 9pt,
  stroke: theory-stroke,
) = align(center)[
  #theory(
    title,
    rows,
    width: width,
    min-width: min-width,
    inset: inset,
    stroke: stroke,
  )
]

#let theory-row(mark, body) = (
  [
    #text(fill: theory-marker-fill)[#mark]
  ],
  [
    #pad(y: 0.12em)[#body]
  ],
)

#let theory-section(title) = (
  [],
  [
    #text(
      fill: theory-section-fill,
      size: 0.9em,
      weight: "semibold",
    )[#title]
  ],
)

#let section(title) = theory-section(title)

#let empty-theory-row = theory-row("", [])

#let declare(name, typ) = theory-row("+", [$#name in typ$])

#let imports(body) = theory-row($convolve$, [$#body$])

#let sub(lhs, rhs) = $lhs colon.eq rhs$

#let subs(..items) = items.pos().join($, $)

#let using(name, subst) = $#name [#subst]$

#let import-theory(name, subst: none) = {
  if subst == none {
    imports($#name$)
  } else {
    imports(using(name, subst))
  }
}

#let assume(label, body) = theory-row(label, [$#body$])

#let observe(label, body) = theory-row(label, [$#body$])

#let define(body) = theory-row("+", [$#body$])

#let theory-line(mark, body) = theory-row(mark, [$#body$])

#let theory-text-row(mark, body) = theory-row(mark, [#body])