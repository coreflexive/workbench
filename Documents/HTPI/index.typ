#import "./lib/theory.typ": *
#import "./lib/rel.typ": *

#let index = centred-theory(
  [Example 2.3.3],
  (
    ..section("Parameters"),
    
    ..declare($"A"$,
        $"Set"$),

        
    ..section("Observations"),
    
    ..observe("1.",
      $x in op(cal("P"))A$),
    ..theory-line("",
      $equiv (forall z | z in x : z in A)$
    ),
    
    ..observe("2.",
      $op(cal("P"))A subset.eq op(cal("P")B)$),
    ..theory-line("",
      $equiv (forall X | (forall z | z in X : z in A) : (forall z | z in X : z in B))$
    ),
    
    ..observe("3",
      $B in {op(cal("P"))A | A in cal("F")}$
    ),
    ..theory-line("",
      $equiv (exists A | (forall z | z in A : z in cal("F")) : (forall z |: z in B equiv (forall y | y in z : y in A)))$
    )
  )
)

#index
