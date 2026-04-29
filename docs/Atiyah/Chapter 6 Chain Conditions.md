### 6.1
i) Let $M$ be a Noetherian $A$-module and $u: M \to M$ a module homomorphism. 
If $u$ is surjective, then $u$ is an isomorphism.
ii) If $M$ is Artinian and $u$ is injective, then again $u$ is an isomorphism.
Proof: (i) $0\subset \mathrm{Ker}u\subset \mathrm{Ker}u^{2}\subset\cdots$ is an ascending chain, since $M$ is Noetherian, $\mathrm{Ker}u ^{n}=\mathrm{Ker} u ^{n+1}$ for some $n\geqslant 1$. For any $x\in M$, take $y$ such that $u ^{n}(y)=x$, then $u(x)=0\implies u ^{n+1}(y)=0\implies x=u ^{n}(y)=0$ so $u$ is injective.
(ii) $M\supset \mathrm{Im}u\supset \mathrm{Im} u^{2}\supset\cdots$ is a descending chain, since $M$ is Artinian, $\mathrm{Im}u ^{n}=\mathrm{Im}u ^{n+1}$ for some $n\geqslant 1$. For any $x\in M$, $u ^{n}(x)\in \mathrm{Im} u ^{n}=\mathrm{Im} u ^{n+1}$ so take $y$ such that $u ^{n}(x)=u ^{n+1}(y)$. Since $u$ is injective, $x=u(y)\in \mathrm{Im} u$ so $u$ is surjective.
### 6.2
Let $M$ be an $A$-module. If every non-empty set of finitely generated submodules of $M$ has a maximal element, then $M$ is Noetherian.
Proof: By definition and Proposition6.1.
### 6.3
Let $M$ be an $A$-module and let $N_1, N_2$ be submodules of $M$. If $M/N_1$ and $M/N_2$ are Noetherian, so is $M/(N_1 \cap N_2)$. Similarly with Artinian in place of Noetherian.
Proof: Since $(M /N_{1}) /(M /(N_{1}+N_{2}))$ is the holomorphic image of the Noetherian module $M /N_{1}$, it is also Noetherian. By the exact sequence
$$
0\to (M /N_{1}) /(M /(N_{1}+N_{2}))\to M /(N_{1}\cap N_{2})\to M/N_{2}\to 0,
$$
we infer $M /(N_{1}\cap N_{2})$ is Noetherian. The same with Artinian.
### 6.4
Let $M$ be a Noetherian $A$-module and let $\mathfrak{a}$ be the annihilator of $M$ in $A$. Prove that $A/\mathfrak{a}$ is a Noetherian ring.
If we replace "**Noetherian**" by "**Artinian**" in this result, is it still true?
Proof: Every Noetherian module is finitely generated, so suppose $M=\langle x_{1},\cdots,x_{n} \rangle$. Then $\mathfrak{a}=\bigcap_{i=1}^{n}\mathrm{Ann}(x_{i})$, where $A /\mathrm{Ann}(x_{i})\cong Ax_{i}$ is a submodule of the Noetherian module $A$. Hence $A /\mathrm{Ann}(x_{i})$ is Noetherian. By Ex6.3 and induction we infer $A /\mathfrak{a}$ is a Noetherian ring.
If Noetherian is replaced by Artinian, the result may not hold: Consider the $\mathbb{Z}-$module $\mathbb{Z}(p^{\infty})$ which is Artinian but not Noetherian. Then $\mathrm{Ann}(\mathbb{Z}(p)^{\infty})=\{ a\in \mathbb{Z}:a /p^{n}\in \mathbb{Z}\forall n\geqslant 1 \}=(0)$. However, $\mathbb{Z} /(0)=\mathbb{Z}$ is not Artinian.
### 6.5
A topological space $X$ is said to be Noetherian if the open subsets of $X$ satisfy the ascending chain condition (or, equivalently, the maximal condition). Since closed subsets are complements of open subsets, it comes to the same thing to say that the closed subsets of $X$ satisfy the descending chain condition (or, equivalently, the minimal condition). Show that, if $X$ is Noetherian, then every subspace of $X$ is Noetherian, and that $X$ is quasi-compact.
Proof: (i) If $Y\subset X$ is a subspace, then for any ascending chain $O_{1}\cap Y\subset O_{2}\cap Y\subset\cdots$, $O_{1}\subset O_{2}\subset\cdots$ is an ascending chain in $X$, so $O_{n}=O_{n+1}=\cdots$ for some $n\geqslant 1$. Then $O_{n}\cap Y=O_{n+1}\cap Y=\cdots$ so $Y$ is Noetherian.
(ii) For any open covering $X=\bigcup_{\alpha \in I}O_{\alpha}$, suppose there is no finite sub-covering. Then take an arbitrary $U_{1}=O_{\alpha}$ for $\alpha \in I$, and for $n\geqslant 2$, take $\alpha \in I$ such that $O_{\alpha}\not\subset U_{n-1}$ and let $U_{n}=U_{n-1}\cup O_{\alpha}$. Then $U_{n}\neq X$ for all $n$ so the operation is well defined, and $U_{1}\subsetneq U_{2}\subsetneq\cdots$ is a non-stationary ascending chain, a contradiction. Hence there is a finite sub-covering and $X$ is quasi-compact.
### 6.6
Prove that the following are equivalent:
i) $X$ is Noetherian.
ii) Every open subspace of $X$ is quasi-compact.
iii) Every subspace of $X$ is quasi-compact.
Proof: (i)=>(iii)=>(ii) is proved in Ex6.5.
(ii)=>(i): Suppose every open subspace of $X$ is quasi-compact, and we have an ascending chain $O_{1}\subset O_{2}\subset\cdots$. Then $O=\bigcup_{n\geqslant 1}O_{n}$ is open, hence quasi-compact, and there exists $N\geqslant 1$ such that $O=\bigcup_{n\leqslant N}O_{n}$. Therefore $O_{N}=O_{N+1}=\cdots$ so $X$ is Noetherian.
### 6.7
A Noetherian space is a finite union of irreducible closed subspaces. 
Hence the set of irreducible components of a Noetherian space is finite.
Proof: (i) Otherwise consider the set $\Sigma$ of closed subsets of $X$ which are not finite unions of irreducible closed subspaces, then since $X$ is Noetherian and $X\in\Sigma\neq \emptyset$, $\Sigma$ has a minimal element $F$. Clearly $F\neq \emptyset$ and $F$ itself is reducible. Suppose $F=F_{1}\cup F_{2}$ where $F_{1},F_{2}$ are disjoint proper closed subsets, then $F_{1},F_{2}\not\in\Sigma$ implies they are the finite union of irreducible closed subsets, hence so is $F$, a contradiction.
(ii) Recall that the irreducible components (maximal irreducible closed subsets) cover $X$. By (i) $X=\bigcup_{i=1}^{n}F_{i}$ for irreducible closed components $F_{i}$. If $F$ is an irreducible component of $X$, then $F=\bigcup_{i=1}^{n}(F\cap F_{i})$ where $F\cap F_{i}$ are irreducible closed subsets. Since $F$ and $F_{i}$ are maximal, $F=F_{i}$ for some $i$.
### 6.8
If $A$ is a Noetherian ring then $\mathrm{Spec}(A)$ is a Noetherian topological space. Is the converse true?
Proof: If $A$ is Noetherian, and $V(\mathfrak{a}_{1})\supset V(\mathfrak{a}_{2})\supset\cdots$ is a descending closed chain in $\mathrm{Spec}(A)$, then $V(\mathfrak{a}_{1})\supset V(\mathfrak{a}_{2})$ implies $V(\mathfrak{a}_{2})=V(\mathfrak{a}_{2}+ \mathfrak{a}_{1})$. Likewise define $\mathfrak{b}_{n}=\sum_{i=1}^{n}\mathfrak{a}_{i}$, then $V(\mathfrak{a}_{n})=V(\mathfrak{b}_{n})$ and $\mathfrak{b}_{1}\subset \mathfrak{b}_{2}\subset\cdots$ is an ascending chain of ideals in $A$. Since $A$ is Noetherian, the chain is stationary, and suppose $\mathfrak{b}_{n}=\mathfrak{b}_{n+1}=\cdots$ for some $n\geqslant 1$. Hence $V(\mathfrak{a}_{n})=V(\mathfrak{a}_{n+1})=\cdots$ and the descending closed chain is stationary. Therefore $\mathrm{Spec}(A)$ is a Noetherian topological space.
Conversely, suppose $A=k[x_{1},x_{2},\cdots] /(x_{1},x_{2}^{2},x_{3}^{3},\cdots)$, then $A$ is not Noetherian since $(x_{1})\subset(x_{1},x_{2})\subset\cdots$ is strictly increasing. However, $\mathrm{Spec}(A)=\{ \mathfrak{p} \}$ with $\mathfrak{p}=(x_{1},x_{2},\cdots)$ has only one point, hence is clearly Noetherian. So the converse is false.
### 6.9
Deduce from Exercise 8 that the set of minimal prime ideals in a Noetherian ring is finite.
Proof: By Ex6.8 if $A$ is Noetherian then $\mathrm{Spec}A$ is Noetherian, so by Ex6.7 it has finitely many irreducible components. Since every minimal prime ideal $\mathfrak{p}$ corresponds to an irreducible component $V(\mathfrak{p})$, the set of minimal prime ideals is finite.
### 6.10
If $M$ is a Noetherian module (over an arbitrary ring $A$) then $\mathrm{Supp}(M)$ is a closed Noetherian subspace of $\mathrm{Spec}(A)$.
Proof: Recall $\mathrm{Supp}(M)=\{ \mathfrak{p}\in \mathrm{Spec}A:M_{\mathfrak{p}}\neq 0 \}$. Since $M$ is Noetherian, it is finitely generated, so by Ex3.19 $\mathrm{Supp}(M)=V(\mathrm{Ann}(M))$ is a closed subset of $\mathrm{Spec}(A)$. Suppose $\mathfrak{a}=\mathrm{Ann}(M)$ then $\mathrm{Supp}(M)=V(\mathfrak{a})\cong \mathrm{Spec}(A /\mathfrak{a})$ by Ex1.21, and by Ex6.4 $A /\mathfrak{a}$ is Noetherian, so by Ex6.5 $\mathrm{Supp}(M)=\mathrm{Spec}(A /\mathfrak{a})$ is Noetherian.
### 6.11
Let $f: A \to B$ be a ring homomorphism and suppose that $\mathrm{Spec}(B)$ is a Noetherian space (Exercise 5). Prove that $f^*: \mathrm{Spec}(B) \to \mathrm{Spec}(A)$ is a closed mapping if and only if $f$ has the going-up property (Chapter 5, Exercise 10).
Proof: Closed mapping => going-up is proved in Ex5.10.
Now suppose $f$ has the going-up property, and we show $f^{*}$ is closed.
For any closed set $V(\mathfrak{b})\subset \mathrm{Spec}(B)$ with $\mathfrak{b}=r(\mathfrak{b})$, by Ex6.5 $\mathrm{Spec}(B /\mathfrak{b})=V(\mathfrak{b})$ is Noetherian. By Ex6.7 $\mathrm{Spec}(B /\mathfrak{b})$ has finitely many irreducible components, which correspond to minimal primes in $B /\mathfrak{b}$, i.e. minimal elements $\mathfrak{q}_{i}$ in $V(B /\mathfrak{b})$. Suppose $\mathfrak{p}_{i}=\mathfrak{q}_{i}^{c}$, then $\mathfrak{a}=\mathfrak{b}^{c}=\bigcap_{i=1}^{n}\mathfrak{p}_{i}$, so $V(\mathfrak{a})=\bigcup_{i=1}^{n}V(\mathfrak{p}_{i})$. By Ex5.10 $f^{*}(V(\mathfrak{q}_{i}))=V(\mathfrak{p}_{i})$, hence $f^{*}(V(\mathfrak{b}))=V(\mathfrak{a})$ is closed.
### 6.12
Let $A$ be a ring such that $\mathrm{Spec}(A)$ is a Noetherian space. Show that the set of prime ideals of $A$ satisfies the ascending chain condition. Is the converse true?
Proof: (i) Suppose $\mathfrak{p}_{1}\subset \mathfrak{p}_{2}\subset\cdots$ is an ascending chain, then $V(\mathfrak{p}_{1})\supset V(\mathfrak{p}_{2})\supset \cdots$ is a descending chain. Since $\mathrm{Spec}(A)$ is Noetherian, the chain terminates and suppose $V(\mathfrak{p}_{n})=V(\mathfrak{p}_{n+1})=\cdots$. Then $\mathfrak{p}_{n}\in V(\mathfrak{p}_{n})=V(\mathfrak{p}_{n+1})$ implies $\mathfrak{p}_{n}=\mathfrak{p}_{n+1}=\cdots$, so the set of prime ideals satisfy ACC.
(ii) The converse is false.
Consider the Boolean ring $A=\prod_{n=1}^{\infty}{\mathbb{F}_{2}}$, then a Boolean ring clearly satisfy ACC on prime ideals, since every prime ideal is maximal.
However, let $\mathfrak{a}_{n}=\langle e_{1},\cdots,e_{n} \rangle$ then $\mathfrak{a}_{1}\subsetneq\mathfrak{a}_{2}\subsetneq\cdots$ is an ascending chain, and $r(\mathfrak{a}_{n})\neq r(\mathfrak{a}_{n+1})$, so $V(\mathfrak{a}_{1})\supsetneq V(\mathfrak{a}_{2})\supsetneq\cdots$ is a descending chain of closed sets. Therefore $\mathrm{Spec}(A)$ is not Noetherian.
