// ------------------------------------------------------------
// Surrounding document helpers
// ------------------------------------------------------------

#let doc-title-fill = rgb("#2f4f6f")
#let artefact-title-fill = rgb("#4f6f68")

#let doc-title(body) = align(center)[
  #pad(bottom: 1em)[
    #text(
      size: 1.25em,
      weight: "bold",
      fill: doc-title-fill,
    )[#body]
  ]
]

#let artefact-title(body) = align(center)[
  #pad(top: 0.9em, bottom: 0.45em)[
    #text(
      size: 1em,
      weight: "semibold",
      fill: artefact-title-fill,
    )[#body]
  ]
]

#let artefact(title, body) = align(center)[
  #block(
    breakable: false,
  )[
    #artefact-title(title)

    #body
  ]
]

#let artefact-gap = v(1.2em)