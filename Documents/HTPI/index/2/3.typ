#import "../../lib/theory.typ": *

#let eg-3 = centred-theory(
  [Example 2.3.3],
  (
    ..section("Parameters"),
    
    ..declare($"A"$,
        $"Set"$),

    ..declare($"B"$,
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
    ),

    ..observe("4.",
      $x in op(cal("P"))(A inter B)$
    ),
    ..theory-line("",
      $equiv x in op(cal("P"))A inter x in op(cal("P"))B$
    ),

    ..observe("5.",
      $op(cal("P"))(A inter B)$
    ),
    ..theory-line("",
      $= op(cal("P"))A inter op(cal("P"))B$
    ),
  )
)

#eg-3
