# DAGS and Causality

---

Graphs are nodes/vertices + edges

---

Edges are either directed or undirected

---

DAG: Directed acyclic graph

---

A DAG:

A -> B
A -> C
B -> C

---

Not a DAG:

A -> B
A -> C
B -> A

---

DAG's are everywhere in CS

---

And DAG's are implicit in lots of other fields

---

Revealed preferences in economics define a DAG over goods

---

Ranking of teams in sports defines a DAG over teams

---

Lots of fields have tools for learning latent DAG's from almost DAG data

---

Minimum feedback arc set

---

IRT-like constructs in psychology

---

AST's are linked to DAG's as compute graphs

---

Simple C example of AST leading to a clear DAG

---

Wacky C example of AST not leading to a clear DAG

---

Makefiles define DAG's and automatically allow parallelization

---

Make example

---

Let's go through graph motifs to see how DAG's let us think about causality

---

Chain

A -> B -> C

---

Collider

A -> B <- C

---

Fork

A <- B -> C

---

Reverse Chain

A <- B <- C

---

Unconditional independence: no path between nodes

---

Conditional independence: no path after blocking operation occurs

---

In probabilistic graphical models, edge direction is quasi-arbitrary

---

P(A, B) = P(B | A) P(A) = P(A | B) P(B)

A -> B or B -> A

---

In causal graphs, edge direction is essential

A -> B => A causes B
B -> A => B causes A

---

Why use graphs?

---

They help us reason about learning about causality from observational data

---

* Can conditioning let you infer effects?
* Can conditioning lead you to get the effect wrong?

---

Conditioning as filtering:
P(Y | X) => P(Y | see(X = x))

---

Intervention as program modification:
P(Y | do(X = x))

---

Price-taker vs price-maker

---

Go through examples of graphs and independences

---

Total effect
Direct effect

---

http://www.dagitty.net/dags.html#

---

d-Separation

---

Backdoor criterion
