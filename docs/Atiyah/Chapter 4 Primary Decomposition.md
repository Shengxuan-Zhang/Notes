### 4.1
If an ideal $\mathfrak{a}$ has a primary decomposition, then $\operatorname{Spec}(A/\mathfrak{a})$ has only finitely many irreducible components.
Proof: Every irreducible component of $\mathrm{Spec}(A /\mathfrak{a})$ is in the form $V(\pi(\mathfrak{p}))$ where $\pi(\mathfrak{p})$ is a minimal prime ideal in $A /\mathfrak{a}$, so $\mathfrak{p}$ is minimal in the prime ideals containing $\mathfrak{a}$. Since $\mathfrak{a}$ has a primary decomposition, there are only finitely many minimal ideals.
### 4.2
If $\mathfrak{a} = r(\mathfrak{a})$, then $\mathfrak{a}$ has no embedded prime ideals.
Proof: If $\mathfrak{a}$ has a primary decomposition, since $\mathfrak{a}=r(\mathfrak{a})=\bigcap_{\mathfrak{p}\supset \mathfrak{a},\mathfrak{p}\text{ minimal}} \mathfrak{p}$, where $\mathfrak{p}$ are $\mathfrak{p}-$primary, $\mathfrak{a}$ has no embedded prime ideals.
### 4.3
If $A$ is absolutely flat, every primary ideal is maximal.
Proof: If $\mathfrak{q}$ is $\mathfrak{p}-$primary, by Exercise2.28 $k=A /\mathfrak{q}$ is absolutely flat, so every non-unit is a zero divisor, which is nilpotent since $\mathfrak{q}$ is primary. Hence $k$ is an absolutely flat local ring, so $k$ is a field and $\mathfrak{q}$ is maximal.
### 4.4
In the polynomial ring $\mathbb{Z}[t]$, the ideal $\mathfrak{m} = (2, t)$ is maximal and the ideal $\mathfrak{q} = (4, t)$ is $\mathfrak{m}$-primary, but is not a power of $\mathfrak{m}$.
Proof: $\mathbb{Z}[t] /\mathfrak{m}\cong \mathbb{Z}_{2}$ is a field, and $\mathbb{Z}[t] /\mathfrak{q}\cong \mathbb{Z}_{4}$ whose zero divisors $\bar{0},\bar{2}$ are nilpotent, so $\mathfrak{m}$ is maximal and $\mathfrak{q}$ is primary. $\mathfrak{m}\subset r(\mathfrak{q})$ so $\mathfrak{q}$ is $\mathfrak{m}-$primary. However, $t\not\in \mathfrak{m}^{2}$ so $\mathfrak{m}^{2}\subsetneq \mathfrak{q}\subsetneq\mathfrak{m}$, and $\mathfrak{q}$ is not a power of $\mathfrak{m}$.
### 4.5
In the polynomial ring $K[x, y, z]$ where $K$ is a field and $x, y, z$ are independent indeterminates, let $\mathfrak{p}_1 = (x, y)$, $\mathfrak{p}_2 = (x, z)$, $\mathfrak{m} = (x, y, z)$; $\mathfrak{p}_1$ and $\mathfrak{p}_2$ are prime, and $\mathfrak{m}$ is maximal. Let $\mathfrak{a} = \mathfrak{p}_1 \mathfrak{p}_2$. Show that $\mathfrak{a} = \mathfrak{p}_1 \cap \mathfrak{p}_2 \cap \mathfrak{m}^2$ is a reduced primary decomposition of $\mathfrak{a}$. Which components are isolated and which are embedded?
Solution: Verify that $\mathfrak{p}_{1},\mathfrak{p}_{2}\subsetneq \mathfrak{m}$, while $\mathfrak{p}_{1}\not\subset\mathfrak{p}_{2}\not\subset \mathfrak{p}_{1}$, so $\mathfrak{p}_{1},\mathfrak{p}_{2}$ are isolated and $\mathfrak{m}$ is embedded.
### 4.6
Let $X$ be an infinite compact Hausdorff space, $C(X)$ the ring of real-valued continuous functions on $X$ (Chapter 1, Exercise 26). Is the zero ideal decomposable in this ring?
Solution: No. For any $x\in X$, $r(a:x)=\{ f:f(x)=0 \}=\mathfrak{m}_{x}$ is maximal hence prime, so they are all associated primes of $0$, and there is no finite decomposition of $0$.
### 4.7
Let $A$ be a ring and let $A[x]$ denote the ring of polynomials in one indeterminate over $A$. For each ideal $\mathfrak{a}$ of $A$, let $\mathfrak{a}[x]$ denote the set of all polynomials in $A[x]$ with coefficients in $\mathfrak{a}$.
i) $\mathfrak{a}[x]$ is the extension of $\mathfrak{a}$ to $A[x]$.
ii) If $\mathfrak{p}$ is a prime ideal in $A$, then $\mathfrak{p}[x]$ is a prime ideal in $A[x]$.
iii) If $\mathfrak{q}$ is a $\mathfrak{p}$-primary ideal in $A$, then $\mathfrak{q}[x]$ is a $\mathfrak{p}[x]$-primary ideal in $A[x]$.
iv) If $\mathfrak{a} = \bigcap_{i=1}^n \mathfrak{q}_i$ is a minimal primary decomposition in $A$, then $\mathfrak{a}[x] = \bigcap_{i=1}^n \mathfrak{q}_i[x]$ is a minimal primary decomposition in $A[x]$.
v) If $\mathfrak{p}$ is a minimal prime ideal of $\mathfrak{a}$, then $\mathfrak{p}[x]$ is a minimal prime ideal of $\mathfrak{a}[x]$.
Proof: (i) is trivial. (ii) is Exercise2.7.
(iii) $A[x] /\mathfrak{q}[x]\cong (A /\mathfrak{q})[x]$. If $\sum_{}^{}{\bar{a}_{i}x^{i}}$ is a zero divisor, then $\bar{a}_{i}$ are zero divisors by Exercise1.2, hence they are nilpotent, and $\sum_{}^{}{a_{i}x^{i}}$ is nilpotent. Therefore $\mathfrak{q}[x]$ is primary.
Note that $\mathfrak{p}[x]\subset r(\mathfrak{q}[x])$, so $\mathfrak{q}[x]$ is $\mathfrak{p}[x]-$primary.
(iv) Clearly $\mathfrak{a}[x]=\bigcap_{i=1}^{n}\mathfrak{q}_{i}[x]$ and $q_{i}[x]$ are $p_{i}[x]-$primary. Since $p_{i}$ are distinct, so are $\mathfrak{p}_{i}[x]$, and $\bigcap_{j\neq i}\mathfrak{q}_{j}\not\subset \mathfrak{q}_{i}$ implies $\bigcap_{j\neq i}\mathfrak{q}_{j}[x]\not\subset \mathfrak{q}_{i}[x]$. Hence it is a minimal decomposition.
(v) $\mathfrak{p}$ is minimal in $\mathfrak{a}$ implies $\mathfrak{p}^{c}$ is a minimal prime in $A /\mathfrak{a}$. Since prime ideals $\mathfrak{q}$ in $A /\mathfrak{a}$ correspond to prime ideals $\mathfrak{q}[x]$ in $(A /\mathfrak{a})[x]$, $\mathfrak{p}^{c}[x]$ is minimal in $(A /\mathfrak{a})[x]\cong A[x] /\mathfrak{a}[x]$, hence $\mathfrak{p}[x]$ is a minimal prime ideal of $\mathfrak{a}[x]$.
### 4.8
Let $k$ be a field. Show that in the polynomial ring $k[x_1, \dots, x_n]$ the ideals $\mathfrak{p}_i = (x_1, \dots, x_i)$ ($1 \leqslant i \leqslant n$) are prime and all their powers are primary.
Proof: $k[x_{1},\cdots,x_{n}] /(x_{1},\cdots,x_{i})\cong k[x_{i+1},\cdots,x_{n}]$ is an integral domain so $\mathfrak{p}_{i}$ is prime. We show that $\mathfrak{q}_{i}=\mathfrak{p}_{i}\cap k[x_{1},\cdots,x_{i}]$ satisfy $\mathfrak{q}_{i}^{m}$ is primary, then $p_{i}^{m}=q_{i}^{m}[x_{i+1},\cdots,x_{n}]$ is primary. So we can assume $i=n$.
Note that $k[x_{1},\cdots,x_{n}] /(x_{1},\cdots,x_{n})^{m}=k[y_{1},\cdots,y_{n}]$ where $y_{i_{1}}\cdots y_{i_{m}}=0 \forall i_{1},\cdots,i_{m}\leqslant n$. Every zero divisor has zero constant term, and $y_{i}$ are all nilpotent, hence every zero divisor is nilpotent, and $(x_{1},\cdots,x_{n})^{m}$ is primary.
### 4.9
In a ring $A$, let $D(A)$ denote the set of prime ideals $\mathfrak{p}$ which satisfy the following condition: there exists $a \in A$ such that $\mathfrak{p}$ is minimal in the set of prime ideals containing $(0:a)$. Show that $x \in A$ is a zero divisor $\iff x \in \mathfrak{p}$ for some $\mathfrak{p} \in D(A)$.
Let $S$ be a multiplicatively closed subset of $A$, and identify $\operatorname{Spec}(S^{-1}A)$ with its image in $\operatorname{Spec}(A)$ (Chapter 3, Exercise 21). Show that
$$
D(S^{-1}A) = D(A) \cap \operatorname{Spec}(S^{-1}A).
$$
If the zero ideal has a primary decomposition, show that $D(A)$ is the set of associated prime ideals of $0$.
Proof: (i) If $x\in A$ is a zero divisor, suppose $xa=0$, then $x\in(0:a)$. Consider a minimal prime ideal $\mathfrak{p}$ containing $(0:a)$ (such prime ideals always exist since minimal primes corresponds to maximal multiplicative sets, see Exercise1.8), then $x\in(0:a)\subset \mathfrak{p}$ where $\mathfrak{p}\in D(A)$.
If $x\in \mathfrak{p}$ for some $\mathfrak{p}\in D(A)$ where $\mathfrak{p}$ is minimal containing $(0:a)$, then $a\neq 0$ since $1\in(0:0)$. $\bar{\mathfrak{p}}$ is a minimal prime in $A /(0:a)$, so $S=A /(0:\mathfrak{a})-\bar{\mathfrak{p}}$ is a maximal multiplicative set without zero. Consider $S^{\prime}=\{ s \bar{x}^{n}:s \in S,n\geqslant 0 \}$, then $S\subset S^{\prime}$ and $S^{\prime}$ is multiplicative. Hence $0\in S^{\prime}$ so $s \bar{x}^{n}=0$ for some $s \in S$ and $n>0$. Take the minimal such $n$, let $\bar{y}=s \bar{x}^{n-1}$, then $\bar{y}\neq 0$ and $xy\in(0:\mathfrak{a})$. Hence $(ay)x=0$ for some $a\in \mathfrak{a}$. Since $\bar{y}\neq 0$, $y\not\in(0:\mathfrak{a})$ so $ay\neq 0$, hence $x$ is a zero divisor.
(ii) Clearly $D(S^{-1}A)\subset S^{-1}X=\{ \mathfrak{p}:\mathfrak{p}\cap S=\emptyset \}$.
For $x\in A$, we have $\mathrm{Ann}(x)^{e}=\left\{  \frac{a}{s}:ax=0  \right\}=\mathrm{Ann}\left( \frac{x}{1} \right)$. Hence $S^{-1}\mathfrak{p}\in D(S^{-1}A)$ iff exists $x$ such that $S^{-1}\mathfrak{p}$ is minimal containing $\mathrm{Ann}(x /1)=\mathrm{Ann}(x)^{e}$. Taking contractions we obtain $\mathfrak{p}\supset \mathrm{Ann}(x)$ and $\mathfrak{p}$ is minimal, therefore $D(S^{-1}A)\subset D(A)$. On the other hand, suppose $\mathfrak{p}\in D(A)$ and $\mathfrak{p}\cap S=\emptyset$, take $x\in A$ such that $\mathfrak{p}$ is minimal containing $\mathrm{Ann}(x)$, then $S^{-1}\mathfrak{p}$ is minimal containing $\mathrm{Ann}(x /1)$ so $S^{-1}\mathfrak{p}\in D(S^{-1}A)$.
Therefore $D(S^{-1}A)=D(A)\cap \mathrm{Spec}(S^{-1}A)$.
(iii) Suppose $0=\bigcap_{i=1}^{n}\mathfrak{q}_{i}$ has a primary decomposition, where $\mathfrak{q}_i$ is $\mathfrak{p}_{i}-$primary. Then $\mathfrak{p}_{i}$ are the prime ideals in $r(0:x)$, so if $\mathfrak{p}_{i}=r(0:x)$ it is the minimal prime ideal containing $(0:x)$. If $\mathfrak{p}$ is minimal containing $(0:x)$, then $\mathfrak{p}\supset r(0:x)=\bigcap_{i=1}^{n}r(\mathfrak{q}_{i}:x)=\bigcap_{i=1}^{m}\mathfrak{p}_{i}$. Suppose $\mathfrak{p}_{i}\subset \mathfrak{p}$, then note that $\mathfrak{p}_{i}=r(\mathfrak{q}_{i}:x)\supset \mathfrak{p}$, hence $\mathfrak{p}=\mathfrak{p}_{i}$ is an associated prime.
### 4.10
For any prime ideal $\mathfrak{p}$ in a ring $A$, let $S_{\mathfrak{p}}(0)$ denote the kernel of the homomorphism $A \to A_{\mathfrak{p}}$. Prove that
i) $S_{\mathfrak{p}}(0) \subseteq \mathfrak{p}$.
ii) $r(S_{\mathfrak{p}}(0)) = \mathfrak{p} \Leftrightarrow \mathfrak{p}$ is a minimal prime ideal of $A$.
iii) If $\mathfrak{p} \supseteq \mathfrak{p}'$, then $S_{\mathfrak{p}}(0) \subseteq S_{\mathfrak{p}'}(0)$.
iv) $\bigcap_{\mathfrak{p} \in D(A)} S_{\mathfrak{p}}(0) = 0$, where $D(A)$ is defined in Exercise 9.
Proof: (i) If $a\in S_{\mathfrak{p}}(0)$ then $sa=0$ for some $s\not\in \mathfrak{p}$. Since $0=sa\in \mathfrak{p}$, we have $a\in \mathfrak{p}$ and $S_{\mathfrak{p}}(0)\subset \mathfrak{p}$.
(ii) If $\mathfrak{q}\subsetneq \mathfrak{p}$ for some prime ideal $\mathfrak{q}$, then $sa=0\in \mathfrak{q}$ and $s\not\in \mathfrak{p}\supset \mathfrak{q}$ implies $a\in \mathfrak{q}$. Hence $S_{\mathfrak{p}}(0)\subset \mathfrak{q}$ and $r(S_{\mathfrak{p}}(0))\subset \mathfrak{q}$.
If $\mathfrak{p}$ is a minimal prime then $S=A-\mathfrak{p}$ is a maximal multiplicative set without zero, so for any $x\in \mathfrak{p}$, $sx^{n}=0$ for some $s\in S,n>0$. Hence $r(S_{\mathfrak{p}}(0))=\mathfrak{p}$.
(iii) Note that $S_{\mathfrak{p}}(0)=\bigcup_{s\not\in \mathfrak{p}}\mathrm{Ann}(s)\subset \bigcup_{s\not\in \mathfrak{p}^{\prime}}\mathrm{Ann}(s)=S_{\mathfrak{p}^{\prime}}(0)$.
(iv) For any $a\neq 0$, $(0:a)\neq (1)$ so take $\mathfrak{p}\in D(A)$ minimal in containing $(0:a)$, then $(0:a)\subset \mathfrak{p}$ implies $a\not\in S_{\mathfrak{p}}(0)$. Hence $\bigcap_{\mathfrak{p}\in D(A)}S_{\mathfrak{p}}(0)=0$.
### 4.11
If $\mathfrak{p}$ is a minimal prime ideal of a ring $A$, show that $S_{\mathfrak{p}}(0)$ (Exercise 10) is the smallest $\mathfrak{p}$-primary ideal.
Let $\mathfrak{a}$ be the intersection of the ideals $S_{\mathfrak{p}}(0)$ as $\mathfrak{p}$ runs through the minimal prime ideals of $A$. Show that $\mathfrak{a}$ is contained in the nilradical of $A$.
Suppose that the zero ideal is decomposable. Prove that $\mathfrak{a} = 0$ if and only if every prime ideal of $0$ is isolated.
(i) By Ex4.10(ii) $r(S_{\mathfrak{p}}(0))=\mathfrak{p}$. If $xy\in S_{\mathfrak{p}}(0)$ and $x\not\in \mathfrak{p}$, then $sxy=0$ for some $s \in S$, so $sx\in S$ and $(sx)y=0$. Hence $y\in S_{\mathfrak{p}}(0)$ and $S_{\mathfrak{p}}(0)$ is $\mathfrak{p}-$primary. If $\mathfrak{q}$ is a $\mathfrak{p}-$primary ideal, then $sa=0\in \mathfrak{q}$ for $s\not\in \mathfrak{p}=r(\mathfrak{q})$ implies $a\in \mathfrak{q}$ so $S_{\mathfrak{p}}(0)\subset \mathfrak{q}$.
(ii) Use Ex4.10(iii) and $S_{\mathfrak{p}}(0)\subset \mathfrak{p}$, 
$$
\mathfrak{a}=\bigcap_{\mathfrak{p}\text{ minimal}}S_{\mathfrak{p}}(0)=\bigcap_{\mathfrak{p}\in \mathrm{Spec}A}S_{\mathfrak{p}}(0)\subset \bigcap_{\mathfrak{p}\in \mathrm{Spec}A}\mathfrak{p}=\mathfrak{N}.
$$
(iii) Suppose $0=\bigcap_{i=1}^{n}\mathfrak{q}_{i}$ where $\mathfrak{q}_{i}$ are $\mathfrak{p}_{i}-$primary.
If $\mathfrak{p}_{i}$ are isolated, then $\mathfrak{a}=\bigcap_{\mathfrak{p}\in \mathrm{Spec}A}S_{\mathfrak{p}}(0)\subset \bigcap_{i=1}^{n}S_{\mathfrak{p}_{i}}(0)\subset \bigcap_{i=1}^{n}\mathfrak{q}_{i}=0$ so $\mathfrak{a}=0$.
If $\mathfrak{a}=0$ suppose $q_{1},\cdots,q_{m}$ does not meet $S_{\mathfrak{p}}=A-\mathfrak{p}$ then by Ex4.12(i) $S_{\mathfrak{p}}(0)=\bigcap_{i=1}^{m}\mathfrak{q}_{i}$ where $S_{\mathfrak{p}}(0)$  and $\mathfrak{q}_{i}$ are primary. Hence $\mathfrak{p}=r(S_{\mathfrak{p}}(0))=\bigcap_{i=1}^{m}\mathfrak{p}_{i}$ so every minimal prime is one of $\mathfrak{p}_{i}$. Therefore $0=\bigcap_{\mathfrak{p}\text{ minimal}}S_{\mathfrak{p}}(0)$ is a minimal primary decomposition, and all associated primes are isolated.
### 4.12
Let $A$ be a ring, $S$ a multiplicatively closed subset of $A$. For any ideal $\mathfrak{a}$, let $S(\mathfrak{a})$ denote the contraction of $S^{-1}\mathfrak{a}$ in $A$. The ideal $S(\mathfrak{a})$ is called the **saturation** of $\mathfrak{a}$ with respect to $S$. Prove that
i) $S(\mathfrak{a}) \cap S(\mathfrak{b}) = S(\mathfrak{a} \cap \mathfrak{b})$
ii) $S(r(\mathfrak{a})) = r(S(\mathfrak{a}))$
iii) $S(\mathfrak{a}) = (1) \Leftrightarrow \mathfrak{a}$ meets $S$
iv) $S_1(S_2(\mathfrak{a})) = (S_1S_2)(\mathfrak{a})$.
If $\mathfrak{a}$ has a primary decomposition, prove that the set of ideals $S(\mathfrak{a})$ (where $S$ runs through all multiplicatively closed subsets of $A$) is finite.
Proof: (i) Clearly $S(\mathfrak{a}\cap \mathfrak{b})\subset S(\mathfrak{a}),S(\mathfrak{b})$. If $c\in S(\mathfrak{a})\cap S(\mathfrak{b})$, suppose $\frac{c}{1}=\frac{a}{s}=\frac{b}{t}$ for $a\in \mathfrak{a},b\in \mathfrak{b}$, take $s^{\prime}\in S$ such that $s^{\prime}ta=s^{\prime}sb\in \mathfrak{a}\cap \mathfrak{b}$, then $\frac{c}{1}= \frac{s^{\prime}ta}{s^{\prime}st}\in S^{-1}(\mathfrak{a}\cap \mathfrak{b})$ so $c\in S(\mathfrak{a}\cap \mathfrak{b})$.
(ii) Clearly $S(r(\mathfrak{a}))=r(a)^{ec}\subset r(a^{e})^{c}=r(a^{ec})=r(S(\mathfrak{a}))$.
If $\frac{r^{n}}{1}=\frac{a}{s}\in S^{-1}\mathfrak{a}$ where $a\in \mathfrak{a}$, take $s^{\prime}sr^{n}=s^{\prime}a\in \mathfrak{a}$ for $s^{\prime}\in S$, then $\frac{r}{1}=\frac{s^{\prime}sr}{s^{\prime}s}\in S^{-1}r(\mathfrak{a})$ so $r(S(\mathfrak{a}))\subset S(r(\mathfrak{a}))$.
(iii) If $s\in \mathfrak{a}\cap S$ then $1 /1=s /s\in S^{-1}\mathfrak{a}$ so $S(\mathfrak{a})=(1)$.
If $S(\mathfrak{a})=(1)$ then $\frac{1}{1}=\frac{a}{s}$ for some $a\in \mathfrak{a}$, so $s^{\prime}a=s^{\prime}s\in \mathfrak{a}\cap S$ for some $s^{\prime}\in S$>
(iv) If $x\in(S_{1}S_{2})(\mathfrak{a})$ then $\exists s_{1},s_{2} \in S_{1},S_{2}$ such that $s_{1}s_{2}x\in \mathfrak{a}$, so $s_{1}x\in S_{2}(\mathfrak{a})$ and $x\in S_{1}(S_{2}(\mathfrak{a}))$.
The converse is analogous.
(v) Use Prop4.9, there are at most $2^{n}$ possible choices.
### 4.13
Let $A$ be a ring and $\mathfrak{p}$ a prime ideal of $A$. The **nth symbolic power** of $\mathfrak{p}$ is defined to be the ideal (in the notation of Exercise 12)
$$
\mathfrak{p}^{(n)} = S_{\mathfrak{p}}(\mathfrak{p}^n)
$$
where $S_{\mathfrak{p}} = A - \mathfrak{p}$. Show that
i) $\mathfrak{p}^{(n)}$ is a $\mathfrak{p}$-primary ideal;
ii) if $\mathfrak{p}^n$ has a primary decomposition, then $\mathfrak{p}^{(n)}$ is its $\mathfrak{p}$-primary component;
iii) if $\mathfrak{p}^{(m)}\mathfrak{p}^{(n)}$ has a primary decomposition, then $\mathfrak{p}^{(m+n)}$ is its $\mathfrak{p}$-primary component;
iv) $\mathfrak{p}^{(n)} = \mathfrak{p}^n \Leftrightarrow \mathfrak{p}^n$ is $\mathfrak{p}$-primary.
Proof: (i) Since $\mathfrak{p}-$primary ideals $\mathfrak{q}$ containing $\mathfrak{a}$ and $\mathfrak{p} /\mathfrak{a}-$primary ideals $\mathfrak{q} /\mathfrak{a}$ correspond bijectively, by Ex4.11(i) $\mathfrak{p}^{(n)}$ is the minimal $\mathfrak{p}-$primary ideal containing $\mathfrak{p}^{n}$.
(ii) If $\mathfrak{p}^{n}=\bigcap_{i=1}^{m}\mathfrak{q}_{i}$ and $S_{\mathfrak{p}}$ does not meet $\mathfrak{q}_{1},\cdots,\mathfrak{q}_{m}$, then $\mathfrak{p}^{(n)}=S_{\mathfrak{p}}(\mathfrak{p}^{n})=\bigcap_{i=1}^{m}\mathfrak{q}_{i}$ so $\mathfrak{p}^{n}=\mathfrak{p}^{(n)}\cap\left( \bigcap_{i=m+1}^{n}\mathfrak{q}_{i} \right)$ is a primary decomposition and $\mathfrak{p}^{(n)}$ is its $\mathfrak{p}-$primary component.
(iii) Likewise, $\mathfrak{p}^{(n+m)}=S_{\mathfrak{p}}(\mathfrak{p}^{n+m})\subset S_{\mathfrak{p}}(\mathfrak{p}^{(n)}\mathfrak{p}^{(m)})$, and verify that $\mathfrak{p}^{(n)}\mathfrak{p}^{(m)}\subset \mathfrak{p}^{(n+m)}$ so $S_{\mathfrak{p}}(\mathfrak{p}^{(n)}\mathfrak{p}^{(m)})\subset S_{\mathfrak{p}}(\mathfrak{p}^{(n+m)})=\mathfrak{p}^{(n+m)}$. Hence $\mathfrak{p}^{(n+m)}=S_{\mathfrak{p}}(\mathfrak{p}^{(n)}\mathfrak{p}^{(m)})$. Analogous to (ii) $\mathfrak{p}^{(n+m)}$ is its $\mathfrak{p}-$primary component,
(iv) Trivial by minimality of $\mathfrak{p}^{(n)}$.
### 4.14
Let $\mathfrak{a}$ be a decomposable ideal in a ring $A$ and let $\mathfrak{p}$ be a maximal element of the set of ideals $(\mathfrak{a}:x)$, where $x \in A$ and $x \notin \mathfrak{a}$. Show that $\mathfrak{p}$ is a prime ideal belonging to $\mathfrak{a}$.
Proof: Suppose $\mathfrak{a}=\bigcap_{i=1}^{n}\mathfrak{q}_{i}$ where $\mathfrak{q}_{i}$ are $\mathfrak{p}_{i}-$primary, and $\mathfrak{p}=(\mathfrak{a}:x)$ is maximal. Suppose $yz\in \mathfrak{p}$ while $y\not\in \mathfrak{p}$, then by $y\not\in \mathfrak{p}$ we have $xy\not\in \mathfrak{a}$, so $(\mathfrak{a}:x)\subset((\mathfrak{a}:x):y)=(\mathfrak{a}:xy)$ implies $z\in(\mathfrak{a}:xy)=(\mathfrak{a}:x)$. Hence $\mathfrak{p}$ is prime.
Note that $\mathfrak{p}=(\mathfrak{a}:x)=\bigcap_{i=1}^{n}(\mathfrak{q}_{i}:x)$, so $\mathfrak{p}=r(\mathfrak{a}:x)=\bigcap_{i=1}^{n}r(\mathfrak{q}_{i}:x)=\bigcap_{i=1}^{m}\mathfrak{p}_{i}$, assuming $x\not\in \mathfrak{q}_{1},\cdots,\mathfrak{q}_{m}$. Hence $\mathfrak{p}=\mathfrak{p}_{i}$ for some $1\leqslant i\leqslant n$, and $\mathfrak{p}$ is a prime belonging to $\mathfrak{a}$.
### 4.15
Let $\mathfrak{a}$ be a decomposable ideal in a ring $A$, let $\Sigma$ be an isolated set of prime ideals belonging to $\mathfrak{a}$, and let $\mathfrak{q}_{\Sigma}$ be the intersection of the corresponding primary components. Let $f$ be an element of $A$ such that, for each prime ideal $\mathfrak{p}$ belonging to $\mathfrak{a}$, we have $f \in \mathfrak{p} \iff \mathfrak{p} \notin \Sigma$, and let $S_f$ be the set of all powers of $f$. Show that $\mathfrak{q}_{\Sigma} = S_f(\mathfrak{a}) = (\mathfrak{a}:f^n)$ for all large $n$.
Proof: $\Sigma=\{ \mathfrak{p}\text{ associated}:f\not\in \mathfrak{p} \}$. Suppose $\mathfrak{a}=\bigcap_{i=1}^{n}\mathfrak{q}_{i}$ where $\mathfrak{q}_{i}$ are $\mathfrak{p}_{i}-$primary and $f\not\in \mathfrak{p_{1}},\cdots,\mathfrak{p}_{n}$, then $S_{f}(\mathfrak{a})=\bigcap_{i=1}^{m}\mathfrak{q}_{i}=\mathfrak{q}_{\Sigma}$ and $(\mathfrak{a}:f^{n})=\bigcap_{i=1}^{n}(\mathfrak{q}_{i}:f^{n})=\bigcap_{i=1}^{m}\mathfrak{q}_{i}=\mathfrak{q}_{\Sigma}$.
### 4.16
If $A$ is a ring in which every ideal has a primary decomposition, show that every ring of fractions $S^{-1}A$ has the same property.
Proof: For any ideal $\mathfrak{b}\subset S^{-1}A$, let $\mathfrak{a}=\mathfrak{b}^{c}$ and take its primary decomposition $\mathfrak{a}=\bigcap_{i=1}^{n}\mathfrak{q}_{i}$ where $\mathfrak{q}_{i}$ are $\mathfrak{p}_{i}-$primary. Suppose $S$ does not meet $\mathfrak{p}_{1},\cdots,\mathfrak{p}_{m}$, then $S^{-1}\mathfrak{a}=\bigcap_{i=1}^{m}S^{-1}\mathfrak{q}_{i}$ where $S^{-1}\mathfrak{q}_{i}$ are $S^{-1}\mathfrak{p}_{i}-$primary. Since every ideal in $S^{-1}A$ is extended, $\mathfrak{b}=S^{-1}\mathfrak{a}$ has a primary decomposition.
### 4.17
Let $A$ be a ring with the following property.
(L1) For every ideal $\mathfrak{a} \neq (1)$ in $A$ and every prime ideal $\mathfrak{p}$, there exists $x \notin \mathfrak{p}$ such that $S_{\mathfrak{p}}(\mathfrak{a}) = (\mathfrak{a}:x)$, where $S_{\mathfrak{p}} = A - \mathfrak{p}$.
Then every ideal in $A$ is an intersection of (possibly infinitely many) primary ideals.
Proof: Verify that L1 holds when passing to $A /\mathfrak{a}$, hence it suffices to prove $0=\bigcap_{\mathfrak{q}}\mathfrak{q}$, $\mathfrak{q}$ taking all primary ideals. Recall that $0$ is the intersection of all irreducible ideals (by applying Zorn's lemma to all ideals without $a\neq 0$). We show that if L1 holds, then every irreducible ideal is primary. Likewise passing to $A /\mathfrak{a}$ we need to prove if $0$ is irreducible then $0$ is primary.
Clearly $r(0)=\mathfrak{N}$ is the nilradical. If $0$ is irreducible, then $\mathfrak{a}\cap \mathfrak{b}\neq 0$ for all $\mathfrak{a},\mathfrak{b}\neq 0$. For any prime ideal $\mathfrak{p}$, take $x\not\in \mathfrak{p}$ such that $S_{\mathfrak{p}}(0)=(0:x)$, we show that $(x)\cap S_{\mathfrak{p}}(0)=0$: If $y=ax\in(x)\cap S_{\mathfrak{p}}(0)$, then $x^{2}\in S_{\mathfrak{p}}$ and $ax^{2}=0$ implies $a\in S_{\mathfrak{p}}(0)=(0:x)$, so $y=ax=0$.
Since $0$ is irreducible and $x\neq 0\implies(x)\neq 0$, we infer $S_{\mathfrak{p}}(0)=0$ for all $\mathfrak{p}$ prime. Hence if $xy=0$ and $x\not\in r(0)=\mathfrak{N}$, take $\mathfrak{p}$ prime such that $x\not\in \mathfrak{p}$, then $y\in S_{\mathfrak{p}}(0)=0$ so $y=0$. Therefore $0$ is primary.
### 4.18
Consider the following condition on a ring $A$:
(L2) Given an ideal $\mathfrak{a}$ and a descending chain $S_1 \supseteq S_2 \supseteq \dots \supseteq S_n \supseteq \dots$ of multiplicatively closed subsets of $A$, there exists an integer $n$ such that $S_n(\mathfrak{a}) = S_{n+1}(\mathfrak{a}) = \dots$. Prove that the following are equivalent:
i) Every ideal in $A$ has a primary decomposition;
ii) $A$ satisfies (L1) and (L2).
Proof: (i)=>(L1): If $\mathfrak{a}\neq (1)$ and $\mathfrak{p}$ is prime, consider the primary decomposition $\mathfrak{a}=\bigcap_{i=1}^{n}\mathfrak{q}_{i}$ where $\mathfrak{q}_{i}$ is $\mathfrak{p}_{i}-$primary. Suppose $S_{\mathfrak{p}}$ does not meet $\mathfrak{p}_{1},\cdots,\mathfrak{p}_{m}$, then $S_{\mathfrak{p}}(\mathfrak{a})=\bigcap_{i=1}^{m}\mathfrak{q}_{i}$, where $\mathfrak{p}_{i}\subset \mathfrak{p}\forall 1\leqslant i\leqslant m$ and $\mathfrak{p}_{i}\not\subset \mathfrak{p}$. Note that $\bigcap_{i=m+1}^{n}\mathfrak{q}_{i}\not\subset \mathfrak{p}$, otherwise $\bigcap_{i=m+1}^{n}\mathfrak{p}_{i}\subset r(\mathfrak{p})=\mathfrak{p}$ so $\mathfrak{p}_{i}\subset \mathfrak{p}$ for some $i>m$, a contradiction. Take $x\in (\bigcap_{i=m+1}^{n}\mathfrak{q}_{i})\backslash \mathfrak{p}$, then $x\not\in \mathfrak{p}_{1},\cdots,\mathfrak{p}_{m}$ so $(\mathfrak{a}:x)=\bigcap_{i=1}^{n}(\mathfrak{q}_{i}:x)=\bigcap_{i=1}^{m}\mathfrak{q}_{i}=S_{\mathfrak{p}}(\mathfrak{a})$.
(i)=>(L2) Suppose $\mathfrak{a}=\bigcap_{i=1}^{n}\mathfrak{q}_{i}$ with $p_{i}=r(\mathfrak{q}_{i})$. Then $S_{n}(\mathfrak{a})=\bigcap_{i \in J_{n}}\mathfrak{q}_{i}$ where $J_{n}=\{ i:\mathfrak{p}_{i}\cap S_{n}=\emptyset \}$. Since $J_{1}\subset J_{2}\subset\cdots$ and $J_{1}$ is finite, it will be stationary, and so it the sequence $S_{n}$.
(L1+L2)=>(i): Given an ideal $\mathfrak{a}\neq (1)$, by Ex4.17 $\mathfrak{a}=\bigcap_{\alpha \in J}\mathfrak{q}_{\alpha}$ where $\mathfrak{q}_{\alpha}$ are primary. Since for $p-$primary ideals $\mathfrak{q}_{1},\mathfrak{q}_{2}$, $\mathfrak{q}_{1}\cap \mathfrak{q}_{2}$ is still $\mathfrak{p}-$primary, we can suppose $r(\mathfrak{q}_{\alpha})$ are distinct. Assume otherwise that $\mathfrak{a}$ has no finite primary decomposition. Then we can take a sequence $\mathfrak{q}_{1},\cdots,\mathfrak{q}_{n},\cdots$ with $\mathfrak{p}_{i}=r(\mathfrak{q}_{i})$, such that $\mathfrak{q}_{n+1}\not \subset \bigcap_{i=1}^{n}\mathfrak{q}_{i}$. Let $S_{n}=S_{\mathfrak{p}_{1}}\cap\cdots\cap S_{\mathfrak{p}_{n}}$, then $S_{1}\supset S_{2}\supset\cdots$  is a descending chain of multiplicative sets. Then $S_{n}(a)=\mathfrak{q}_{1}\cap\cdots\cap \mathfrak{q}_{n}$ is a non-stationary chain, a contradiction to (L2).
### 4.19
Let $A$ be a ring and $\mathfrak{p}$ a prime ideal of $A$. Recall that every $\mathfrak{p}$-primary ideal contains $S_{\mathfrak{p}}(0)$, the kernel of the canonical homomorphism $A \to A_{\mathfrak{p}}$.
Suppose that $A$ satisfies the following condition: for every prime ideal $\mathfrak{p}$, the intersection of all $\mathfrak{p}$-primary ideals of $A$ is equal to $S_{\mathfrak{p}}(0)$. (Noetherian rings satisfy this condition: see Chapter 10.) Let $\mathfrak{p}_1, \dots, \mathfrak{p}_n$ be distinct prime ideals, none of which is a minimal prime ideal of $A$. Then there exists an ideal $\mathfrak{a}$ in $A$ whose associated prime ideals are $\mathfrak{p}_1, \dots, \mathfrak{p}_n$.
Proof: Proof by induction on $n$. The case $n = 1$ is trivial by taking $\mathfrak{a} = \mathfrak{p}_1$. Suppose $n > 1$ and let $\mathfrak{p}_n$ be maximal in the set $\{\mathfrak{p}_1, \dots, \mathfrak{p}_n\}$. By the inductive hypothesis there exists an ideal $\mathfrak{b}$ and a minimal primary decomposition $\mathfrak{b} = \mathfrak{q}_1 \cap \dots \cap \mathfrak{q}_{n-1}$, where each $\mathfrak{q}_i$ is $\mathfrak{p}_i$-primary. If $\mathfrak{b} \subseteq S_{\mathfrak{p}_n}(0)$, let $\mathfrak{p}$ be a minimal prime ideal of $A$ contained in $\mathfrak{p}_n$. Then $S_{\mathfrak{p}_n}(0) \subseteq S_{\mathfrak{p}}(0)$, hence $\mathfrak{b} \subseteq S_{\mathfrak{p}}(0)$. Taking radicals and using Exercise 10, we have $\mathfrak{p}_1 \cap \dots \cap \mathfrak{p}_{n-1} \subseteq \mathfrak{p}$, hence some $\mathfrak{p}_i \subseteq \mathfrak{p}$, hence $\mathfrak{p}_i = \mathfrak{p}$ since $\mathfrak{p}$ is minimal. This is a contradiction since no $\mathfrak{p}_i$ is minimal.
Hence $\mathfrak{b} \nsubseteq S_{\mathfrak{p}_n}(0)$ and therefore there exists a $\mathfrak{p}_n$-primary ideal $\mathfrak{q}_n$ such that $\mathfrak{b} \nsubseteq \mathfrak{q}_n$. Consider $\mathfrak{a} = \mathfrak{q}_1 \cap \dots \cap \mathfrak{q}_n$ which is a primary decomposition of $\mathfrak{a}$ since $r(\mathfrak{q}_{i})=\mathfrak{p}_{i}$ are distinct and $\mathfrak{b}=\bigcap_{i=1}^{n-1}\mathfrak{q}_{i}\not \subset \mathfrak{q}_{n}$. We show that $\mathfrak{b}_{i}\cap \mathfrak{q}_{n}\not \subset \mathfrak{q}_{i}$ where $\mathfrak{b}_{i}=\bigcap_{j\neq i,n}\mathfrak{q}_{j}$ by localizing at $\mathfrak{p}_{i}$: Since $\mathfrak{p}_{n}$ is maximal, $\mathfrak{p}_{n}\not \subset \mathfrak{p}_{i}$ so $S_{\mathfrak{p}_{i}}(\mathfrak{q}_{n})=(1)$, hence by $\mathfrak{b}_{i}\not\subset \mathfrak{q}_{i}$ we have $\mathfrak{b}_{i}\cap \mathfrak{q}_{n}\not \subset \mathfrak{q}_{n}$. Therefore the associated primes of $\mathfrak{a}$ are $\mathfrak{p}_{1},\cdots,\mathfrak{p}_{n}$.

---
**Primary decomposition of modules**
Practically the whole of this chapter can be transposed to the context of modules over a ring $A$. The following exercises indicate how this is done.

### 4.20
Let $M$ be a fixed $A$-module, $N$ a submodule of $M$. The **radical of** $N$ **in** $M$ is defined to be
$$r_M(N) = \{x \in A : x^q M \subseteq N \text{ for some } q > 0\}.$$
Show that $r_M(N) = r(N:M) = r(\operatorname{Ann}(M/N))$. In particular, $r_M(N)$ is an ideal.
State and prove the formulas for $r_M$ analogous to (1.13).
Proof: (i) By definition $r_{M}(N)=r(\{ y\in A:yM\subset N \})=r(N:M)=r(\mathrm{Ann}(M /N))$, since $yM\subset N\iff y(M /N)=0$.
(ii) $r_{M}(N\cap N^{\prime})=\{ x:x^{q}M\subset N\cap N^{\prime} \}=r_{M}(N)\cap r_{M}(N^{\prime})$. 
$r_{M}(N)=(1)\iff N=M$. 
$r_{M}(N+N^{\prime})\supset r(r_{M}(N)+r_{M}(N^{\prime}))$, but the converse is false: Let $M=A\oplus A$ with action $a(b,c)=(ab,ac)$, and $N=(0)\oplus A,N^{\prime}=A\oplus(0)$, then $r_{M}(N+N^{\prime})=(1)$ but $r_{M}(N)=r_{M}(N^{\prime})=(0)$.
### 4.21
An element $x \in A$ defines an endomorphism $\phi_x$ of $M$, namely $m \mapsto xm$. The element $x$ is said to be a **zero-divisor** (resp. **nilpotent**) in $M$ if $\phi_x$ is not injective (resp. is nilpotent). A submodule $Q$ of $M$ is **primary** in $M$ if $Q \neq M$ and every zero-divisor in $M/Q$ is nilpotent.
Show that if $Q$ is primary in $M$, then $(Q:M)$ is a primary ideal and hence $r_M(Q)$ is a prime ideal $\mathfrak{p}$. We say that $Q$ is $\mathfrak{p}$-**primary** (in $M$).
Prove the analogues of (4.3) and (4.4).
Proof: (i) Let $N=M /Q$ be primary, we show that $(Q:M)=\mathrm{Ann}(N)$ is primary. For any $xy\in \mathrm{Ann}(N)$ with $y\not\in \mathrm{Ann}(N)$, take $n\in N$ such that $yn\neq 0$, then $xyn=0$ implies $x(yn)=0$ so $x$ is a zero divisor in $N$. Since $N$ is primary, $x$ is a zero divisor in $N$ hence $x^{n}\in \mathrm{Ann}(N)$ for some $n\geqslant 1$.
(ii) 
Analogue of (4.3): If $Q_{i}$ are $\mathfrak{p}-$primary, then $Q=\bigcap_{i=1}^{n}Q_{i}$ is $\mathfrak{p}-$primary.
Proof: $r_{M}(Q)=\bigcap_{i=1}^{n}r_{M}(Q_{i})=\mathfrak{p}$. Let $xy\in Q$ where $y\not\in Q$, then $xy\in Q_{i}$ for all $1\leqslant i\leqslant n$. For some $1\leqslant i\leqslant n$, $y\not\in Q_{i}$ and $xy\in Q_{i}$, hence $x\in \mathfrak{p}$, and $Q$ is $\mathfrak{p}-$primary.
Analogue of (4.4): Let $Q$ be a $\mathfrak{p}-$primary ideal, then (a) if $x\in Q$ then $(Q:x)=(1)$; (b) if $x\not\in Q$ then $(Q:x)$ is $\mathfrak{p}-$primary; (c) if $x\in A$ and $x\not\in \mathfrak{p}$, then $(Q:x)=\{ m\in M:xm\in Q \}=Q$.
Proof: (a) By definition $1\cdot x\in Q$ so $(Q:x)=(1)$.
(c) If $xm\in Q$ with $m\not\in Q$, then $x\bar{m}=0$ with $\bar{m}\neq 0$ so $x$ is a zero divisor. Hence $x\in \mathfrak{p}$ a contradiction. Therefore $(Q:x)=Q$.
(b) If $ab\in(Q:x)$ and $b\not\in (Q:x)$, then $abx\in Q$ with $bx\not\in Q$. Hence $a$ is a zero-divisor in $M /Q$, so $a^{n}\bar{x}=0$ for some $n\geqslant 1$, which implies $a\in r(Q:x)$ and $(Q:x)$ is primary.
Since $(Q:M)\subset(Q:x)\subset \mathfrak{p}$, we have $\mathfrak{p}=r(Q:M)\subset r(Q:x)\subset \mathfrak{p}$. Therefore $(Q:x)$ is $\mathfrak{p}-$primary.
### 4.22
A **primary decomposition** of $N$ in $M$ is a representation of $N$ as an intersection
$$N = Q_1 \cap \dots \cap Q_n$$
of primary submodules of $M$; it is a **minimal primary decomposition** if the ideals $\mathfrak{p}_i = r_M(Q_i)$ are all distinct and if none of the components $Q_i$ can be omitted from the intersection, that is if $Q_i \nsubseteq \bigcap_{j \neq i} Q_j$ ($1 \leqslant i \leqslant n$).
Prove the analogue of (4.5), that the prime ideals $\mathfrak{p}_i$ depend only on $N$ (and $M$). They are called the **prime ideals belonging to** $N$ **in** $M$. Show that they are also the prime ideals belonging to $0$ in $M/N$.
Proof: (i) We show that the set of primes $\mathfrak{p}_{i}$ are exactly the prime ideals occurring in $\{ r(N:m):m\in M \}$.
Note that if we assume $m\not\in Q_{1},\cdots,Q_{k}$, then $r(N:m)=\bigcap_{i=1}^{n}r(Q_{i}:m)=\bigcap_{i=1}^{k}\mathfrak{p}_{i}$. Hence if $\mathfrak{p}=r(N:m)$ is prime, then $\mathfrak{p}=\mathfrak{p}_{i}$ for some $1\leqslant i\leqslant n$. Conversely, for each $1\leqslant i\leqslant n$ there exists $m\in \bigcap_{j\neq i}Q_{j}\backslash Q_{i}$, then $r(N:m)=\mathfrak{p}_{i}$.
(ii) Trivial since $r(N:m)=r(0:\bar{m})$.
### 4.23
State and prove the analogues of (4.6)-(4.11) inclusive. (There is no loss of generality in taking $N = 0$.)
(4.6'): Let $N$ be a decomposable submodule, then any prime ideal $\mathfrak{p}\supset r_{M}(N)$ contains a minimal prime ideal belonging to $N$, and thus the minimal prime ideals of $N$ are precisely the minimal elements in the set of all prime ideals containing $r_{M}(N)$.
**Proof**: If $\mathfrak{p}\supset r_{M}(N)=\bigcap_{i=1}^{n}\mathfrak{p}_{i}$, then $\mathfrak{p}\supset \mathfrak{p}_{i}$ for some $i$, so $\mathfrak{p}$ contains some minimal prime ideal of $N$.
(4.7'): Let $N$ be a decomposable submodule, and $N=\bigcap_{i=1}^{n}Q_{i}$ be a minimal primary decomposition, with $r_{M}(Q_{i})=\mathfrak{p}_{i}$. Then
$$
\bigcup_{i=1}^{n}\mathfrak{p}_{i}=\{ x\in A:(N:x)\neq N \}.
$$
In particular, if $0$ is decomposable, the set $D\subset A$ of zero-divisors of $A$ is the union of prime ideals belonging to $0$.
**Proof**: It suffices to prove the case $N=0$. Note that $D=r(D)$ since $x^{n}m=0$ for some $m\neq 0$ implies $x\cdot(x^{n-1}m)=0$ so taking the least $n$ we have $x\in D$. By definition $D=\bigcup_{m\neq 0}(0:m)$, so $D=\bigcup_{m\neq 0}r(0:m)$. Since each $r(0:m)$ is the intersection of $\mathfrak{p}_{i}$, and $\exists m,r(0:m)=\mathfrak{p}_{i}$ for all $i$. Hence $D=\bigcup_{i=1}^{n}\mathfrak{p}_{i}$.
(4.8'): Let $S$ be a multiplicative subset of $A$, and $Q$ be a $\mathfrak{p}-$primary submodule. (a) If $S\cap \mathfrak{p}\neq \emptyset$, then $S^{-1}Q=S^{-1}M$; (b) If $S\cap \mathfrak{p}=\emptyset$, then $S^{-1}Q$ is $S^{-1}\mathfrak{p}-$primary and its contraction in $M$ is $Q$. Hence the primary submodules in $S^{-1}M$ correspond to primary submodules in $M$.
**Proof**: (a) If $s \in S\cap \mathfrak{p}\neq \emptyset$, then for some $n\geqslant 1$, $s^{n}\in S\cap (Q:M)$. Hence for any $\frac{m}{s^{\prime}}\in S^{-1}M$, $\frac{m}{s^{\prime}}=\frac{s^{n}m}{s^{n}s^{\prime}}\in S^{-1}Q$, so $S^{-1}Q=S^{-1}M$.
(b) If $S\cap \mathfrak{p}= \emptyset$, and $\frac{a}{s}\cdot \frac{b}{t}\in S^{-1}Q$ with $\frac{b}{t}\not\in S^{-1}Q$, then $s^{\prime}(rab-stq)=0$ for some $s^{\prime},r\in S$ and $q\in Q$. Hence $s^{\prime}rab=s^{\prime}stq\in Q$, with $s^{\prime}rb\not\in Q$ since $\frac{b}{t}\not\in S^{-1}Q$. Therefore $a\in \mathfrak{p}$, so $\frac{a}{s}\in S^{-1}\mathfrak{p}$ and $S^{-1}Q$ is $S^{-1}\mathfrak{p}-$primary. It is easy to verify $(S^{-1}Q)^{c}=Q$.
(Skip the rest).