# HW1 Schröder-Bernstein Theorem

## PSA
#### A1) Suppose a non-empty set $X \subset \mathbb{R}$ has an upper bound, and $M$ is an upper bound of $X$. The following two propositions are equivalent:
* $M = \sup X$.
* For any $\varepsilon > 0$, there exists an $x \in X$ such that $x > M - \varepsilon$.

Proof:
$$
M= \sup_{}{X} \iff \forall M^{\prime}<M,\, \exists x\in X,x>M^{\prime} \iff \forall \varepsilon=M-M^{\prime}>0,\exists x\in X,x>M-\varepsilon.
$$

#### A2) Prove that every non-empty open interval contains infinitely many rational numbers.

Proof: We only need to find one rational number $q$ in the interval $(a,b)$, then we can apply the process to $(a,q)$ and so on.
By the Archimedean rule, there is a positive integer $N$ such that $N(b-a)>2$, hence there exists an integer $p$ such that $p=\lfloor bN \rfloor \in(aN,bN)$, and $q=\frac{p}{N}\in(a,b)\cap \mathbb{Q}$.
#### A3) Let $(X, d)$ be a metric space, $Y \subset X$. We define the distance function on $Y$:
$$d_Y: Y \times Y \to \mathbb{R}, (y_1, y_2) \mapsto d_{Y}(y_1, y_2) = d(y_1, y_2).$$
Prove that $d_Y$ is a distance function, and $(Y, d_Y)$ is a metric space. We call $d_Y$ the induced metric on $Y$, and $(Y, d_Y)$ is called a subspace.
Proof: Trivial, since $d_{Y}(y_{1},y_{2})=d(y_{1},y_{2})$.
#### A4) Let $\mathbb{R}^n = \mathbb{R} \times \mathbb{R} \times \cdots \times \mathbb{R} = \left\{\left(x_1, \ldots, x_n\right) \mid x_i \in \mathbb{R}, \ldots, x_n \in \mathbb{R}\right\}$, for any $x, y \in \mathbb{R}^n$, we define
$$
d(x, y) = \sqrt{\left(x_1 - y_1\right)^2 + \cdots + \left(x_n - y_n\right)^2}, \quad x = (x_1, \ldots, x_n), y = (y_1, \ldots, y_n).
$$

Prove that $(\mathbb{R}^n, d)$ is a metric space.
Proof:

1. $d(x,y)=0 \iff x_{i}=y_{i},\forall 1\leqslant i\leqslant n \iff x=y$.
2. $d(x,y)=d(y,x)$ is trivial.
3. $d(x,y)+d(y,z)\geqslant d(x,z)$ is the Minkowski inequality:

$$
\left( \sqrt{ \sum_{i=1}^{n}{a_{i}^{2}} }+\sqrt{ \sum_{i=1}^{n}{b_{i}^{2}} } \right)^{2}=\sum_{i=1}^{n}{a_{i}^{2}+b_{i}^{2}}+2\sqrt{ \sum_{i=1}^{n}{a_{i}^{2}}\sum_{i=1}^{n}{b_{i}^{2}} }\geqslant \sum_{i=1}^{n}{a_{i}^{2}+b_{i}^{2}}+2a_{i}b_{i}=\sum_{i=1}^{n}{(a_{i}+b_{i})^{2}}.
$$
#### A5) Given a metric space $(X, d)$, and $Y \subset X$. If for any $x \in X$ and $\varepsilon > 0$, there exists $y \in Y$ such that $d(y, x) < \varepsilon$, then we say $Y$ is dense in $X$. Prove that the set of rational numbers is dense in $\mathbb{R}$.
Proof: For any $x\in \mathbb{R}$, let $N=\lfloor x \rfloor$, then for any $\varepsilon>0$, let $q> 1 / \varepsilon$. Then for $p\in [Nq,(N+1)q]\cap \mathbb{Z}$, choose $p$ such that $\lvert x-p /q \rvert$ is minimal. Suppose $p /q<x$, then
$$
2\left\lvert  x-\frac{p}{q}  \right\rvert < \left\lvert  x-\frac{p}{q}  \right\rvert +\left\lvert  x- \frac{p+1}{q}  \right\rvert =\frac{1}{q}<\varepsilon.
$$
Hence $d(x,p /q)<\varepsilon$.
#### A6) For $(x, y) \in \mathbb{R}^2$, if its coordinates $x$ and $y$ are rational numbers, then we call this point a rational point. Prove that $(\mathbb{R}^2, d)$ (refer to question A4) the set of rational points in $\mathbb{R}^{2}$ is dense.
Proof: By A5), $\overline{\mathbb{Q}}=\mathbb{R}$. Hence for any $(x,y)\in \mathbb{R}^{2}$ and $\varepsilon>0$, there exists $(a,b)\in \mathbb{Q}^{2}$ such that $\lvert a-x \rvert,\lvert b-y \rvert< \varepsilon /2$. Then
$$
d((x,y),(a,b))= \sqrt{ (a-x)^{2}+(b-y)^{2} }<\varepsilon.
$$
Hence $\mathbb{Q}^{2}$ is dense in $\mathbb{R}^{2}$
#### A7) Prove that the axiom (F) and (O), and the boundedness principle imply the Archimedean axiom (A).
Proof: Otherwise assume that $\mathbb{N}$ has an upper bound. Then $M=\sup_{}{\mathbb{N}}$ exists. Let $\varepsilon = 1 /2$ then there is an $n\in \mathbb{N}$ such that $n>M-\varepsilon$. Hence $n+1>M$, leading to contradiction.
#### A8) (Existence of irrational numbers) Let $X = \left\{x \in \mathbb{Q} \mid x^2 < 2\right\}$ be a bounded set, and $\sqrt{2} = \sup X$. Prove that $\sqrt{2}$ is an irrational number.
Proof: If $\sqrt{ 2 }=s= p /q$ is rational, then $p^{2}\geqslant 2q^{2}$, otherwise let $x=s(2-s^{2}) /4+s$, then $s<x$ and $x^{2}<2$, a contradiction. If $s^{2}>2$, then $x=s(2-s^{2}) /4<s$ and $x^{2}>2$, hence $x$ is an upper bound of $X$, leading to contradiction. Therefore $s^{2}=2$ which is impossible.
#### A9) Prove that every open interval contains infinitely many irrational numbers.
Proof: Otherwise the open interval will be a countable set.
## PSB: Countable and Uncountable Sets
Let $\mathbb{N}$ denote the set of natural numbers (including 0). $X$ is a set, if there is an injective map $f: X \to \mathbb{N}$, then we say $X$ is countable; if $X$ is not countable, then we say $X$ is uncountable.
#### B1) Prove that finite sets are countable.
Proof: For any finite set $X=\{ a_{1},\cdots,a_{n} \}$, the map $f:a_{k}\mapsto k$ is an injective, hence $X$ is countable.
#### B2) Prove that subsets of countable sets are countable.
Proof: If $X$ is countable and $Y \subset X$, then there is an injective map $f:X\to N$, so $f\vert_{Y}:Y\to N$ is an injective map, hence $Y$ is countable.
#### B3) Prove that if $X$ is a countable set, then we can always write $X = \{x_1, x_2, x_3, \ldots\}$ (that is, the elements of $X$ can be indexed by natural numbers). 
Proof: Let $I=\{ n\in \mathbb{N}:f^{-1}(n)\neq \emptyset \}$, $x_{k}=f^{-1}(\min I\backslash \{ f(x_{1}),\cdots,(x_{k-1}) \})$. Then $x_{x}\in X$, and for any $x\in X$, $f(x)\in I$ hence $x\in \{ x_{1},\cdots,x_{f(x)} \}$. Therefore $X=\{ x_{1},\cdots,x_{n},\cdots \}$.
#### B4) Prove that the set of rational numbers $\mathbb{Q}$ is countable.
Proof: List every positive rational number as below:
$$
\frac{1}{1},\frac{1}{2},\frac{2}{1},\frac{1}{3},\frac{2}{2},\frac{3}{1},\frac{1}{4},\frac{2}{3},\cdots
$$
such that $p /q$ is before $m /n$ if $p+q<m+n$ or $p+q=m+n$ and $p<m$, then every number in $\mathbb{Q}_{>0}$ is listed at least once. Hence $\mathbb{Q}_{>0}$ is countable and so is $\mathbb{Q}$.
#### B5) Prove that the countable union of countable sets is countable, that is, if $X_1, X_2, \ldots, X_n, \ldots$ are all countable sets, then their union $\bigcup_{n=1}^{\infty} X_n$ is also a countable set. 
Proof: Assume $X_{n}$ are disjoint. Since $X_{n}$ are countable, we can write
$$
X_{n}=\{ a_{1}^{(n)},a_{2}^{(n)},\cdots,a_{m}^{(n)},\cdots \}.
$$
Then 
$$
\bigcup_{n=1}^{\infty} X_{n}=\{ a_{1}^{(1)},a_{2}^{(1)},a_{1}^{(2)},a_{3}^{(1)},\cdots \}
$$
where the order is the same as in B4). Hence $\bigcup_{n\geqslant 1}X_{n}$ is countable.
#### B6) If $X$ is countable, and the map $f: X \to Y$ is surjective, then $Y$ is countable.
Proof: Since $X$ is countable, there is an injective map $g: X\to \mathbb{N}$. Let
$$
h: Y\to \mathbb{N},\, y\mapsto \min g(f^{-1}(\{ y \})).
$$
then $g$ is injective, hence $Y$ is countable.
#### B7) Prove the following using proof by contradiction: $\mathbb{R}$ is uncountable. 
B7-1) Suppose $J \subset \mathbb{R}$ is a closed interval and its length $|J| > 0$. For any $x \in \mathbb{R}$, there always exists an interval $I \subset J$ such that $|I| > 0$ and $x \notin I$.
Proof: Any closed interval $J=[a,b]$ can be written in the form $J= A\cup B \cup C$, where $A=\left[ a, \frac{2a+b}{3} \right],B=\left[ \frac{2a+b}{3},\frac{a+2b}{3} \right],C=\left[ \frac{a+2b}{3},b \right]$, and $x$ can only be in at most $2$ of these sets. Hence we can choose a set $I$ in $A,B,C$.
B7-2) Prove that if $\{x_1, x_2, \ldots\}$ is a countable subset of $\mathbb{R}$, then there exists a nested interval sequence $I_1 \supset I_2 \supset \cdots$ such that for any $n$, $x_n \notin I_n$.
Proof: Simple application of B7-1)
B7-3) Prove that $\mathbb{R}$ is uncountable.
Proof: If $\mathbb{R}$ is countable, write $\mathbb{R}=\{ r_{1},r_{2},\cdots \}$, then set $I_{0}=[0,1]$. By B7-2) we can obtain a sequence $I_{0} \supset I_{1} \supset\cdots$ such that $x_{n}\not\in I_{n}$ for any $n$. Hence
$$
\bigcap_{n=0}^{\infty}I_{n}= \emptyset,
$$
leading to contradiction.
#### B8) Prove that if $X$ is an uncountable set, and $A$ is a countable subset of $X$, then $X - A$ is uncountable.
Proof: Otherwise suppose that both $A$ and $X-A$ is countable, then there exist injective mappings $f:A\to \mathbb{N}$ and $g: X-A\to \mathbb{N}$. Define
$$
h:X\to \mathbb{N} , \, x\mapsto \begin{cases}
2f(x), & x\in A, \\
2g(x)+1, & x \not\in A.
\end{cases}
$$
Then $h$ is injective, hence $X$ is countable.
#### B9) Prove that any interval of non-zero length (open or closed) is uncountable.
Proof: Same as B7).
Or use the fact that $\mathbb{R}$ is the countable union of intervals of the same length, and the countable union of countable sets is still countable.
#### B10) Prove that the set of complex numbers $\mathbb{C}$ is uncountable.
Proof: $\mathbb{C}$ has an uncountable subset $\mathbb{R}$.
#### B11) Suppose $\mathcal{I}$ is a collection of non-overlapping closed intervals, satisfying the following property: for any $I, J \in \mathcal{I}$, if $I \neq J$, then their intersection is empty, i.e., $I \cap J = \emptyset$. Prove that $\mathcal{I}$ is countable.
Proof: For any $I\in \mathcal{I}$, there exists a rational number $r_{I} \in I$. Consider $f:\mathcal{I}\to \mathbb{Q},\, I \mapsto r_{I}$, then $f$ is injective. Since $\mathbb{Q}$ is countable, so is $\mathcal{I}$.
## PSC: Schröder-Bernstein Theorem
Suppose $X$ and $Y$ are two sets, and mappings $f: X \to Y$ and $g: Y \to X$ are both injective. Let $X' = X - g(Y)$.
#### C1) If $X$ is a finite set, prove that there exists a bijection $\varphi: X \to Y$.
Proof: $g: Y\to X$ is injective and $X$ is finite, $\implies Y$ is finite. Hence $\lvert X \rvert\leqslant \lvert Y \rvert$, and $\lvert X \rvert\geqslant \lvert Y \rvert$, so $\lvert X \rvert=\lvert Y \rvert$. Therefore we can write $X=\{ x_{1},x_{2},\cdots,x_{n} \}$ and $Y=\{ y_{1},y_{2},\cdots,y_{n} \}$, and obtain
$$
\varphi:X\to Y, \, x_{k}\mapsto y_{k}.
$$
#### C2) If $X$ is countable, prove that there exists a bijection $\varphi: X \to Y$.
Proof: Assume $X$ is infinite, then $Y$ is countable (by $g$) and infinite (by $f$). Hence we can list $X=\{ x_{1},x_{2},\cdots \}$ and $Y=\{ y_{1},y_{2},,.. \}$ and define
$$
\varphi:X\to Y,\, x_{k}\mapsto y_{k}.
$$

---
From now on, we impose no restrictions on $X$. Let $h: X \to X$ be the composite map $h = g \circ f$.
$$
\begin{array}{ccc}
X & \xrightarrow{f} & Y \\
\downarrow h & & \downarrow g \\
X & \xleftarrow{} &
\end{array}
$$
#### C3) Consider the set family $\mathcal{F} = \left\{A \subset X \mid X' \cup h(A) \subset A\right\}$. Prove that $\mathcal{F}$ is non-empty.
Proof: $X\in \mathcal{F}$.
#### C4) Prove that if $A \in \mathcal{F}$, then $X' \cup h(A) \in \mathcal{F}$.
Proof: If $A\in \mathcal{F}$ then $X^{\prime}\cup h(A) \subset A$, hence (let $B$ denote $X^{\prime}\cup h(A)$)
$$
X^{\prime}\cup h(B) \subset X^{\prime}\cup h(A)=B.
$$
#### C5) We define
$$
A_0 = \bigcap_{A \in \mathcal{F}}A= \left\{x \in X \mid \text{for any } A \in \mathcal{F}, \text{ we have } x \in A\right\}.
$$
Prove that $A_0 \in \mathcal{F}$.
Proof:
$$
X^{\prime}\cup h(A_{0})\subset X^{\prime}\cup (\bigcap_{A\in \mathcal{F}}h(A))=\bigcap_{A\in \mathcal{F}}X^{\prime}\cup h(A)\subset \bigcap_{A\in \mathcal{F}}A=A_{0}.
$$
Hence $A_{0}\in \mathcal{F}$.
#### C6) Prove that $X' \cup h(A_0) = A_0$.
Proof:
$$
A_{0}\in \mathcal{F}\implies X^{\prime}\cup h(A_{0}) \in \mathcal{F}\implies A_{0}\subset X^{\prime}\cup h(A_{0}).
$$
The other side is proved in C5).
#### C7) Let $B_0 = X - A_0$. Prove that $f(A_0) \cap g^{-1}(B_0) = \emptyset$ and $f(A_0) \cup g^{-1}(B_0) = Y$.
Proof: If $f(A_{0})\cap g^{-1}(B_{0})\neq \emptyset$, then there exist $a\in A_{0},b\in B_{0}$ such that $f(a)=g^{-1}(b)$, i.e. $b=h(a)$. Since $a\in A_{0}$, for any $A\in \mathcal{F}$, $a \in A$, hence $b=h(a)\in X^{\prime} \cup h(A) \subset A$. Therefore $b\in A_{0}$, a contradiction. 
Otherwise if there exists $y\in Y$ such that $y \not\in f(A_{0})\cup g^{-1}(B_{0})$, then $g(y)\not\in B_{0}\implies g(y)\in A_{0}$. Let $z=g(y)\in A_{0}\cap g(Y)$, then $z\not\in X^{\prime}$ so $z\in h(A_{0})$ by C6). Let $z=h(t)$ then $y=f(t)\in f(A_{0})$ since $g$ is injective, leading to contradiction.
#### C8) We define the map $\varphi: X \to Y$. For $x \in X$, we require
$$
\varphi(x) = \begin{cases}
f(x), & \text{if } x \in A_0; \\
g^{-1}(x), & \text{if } x \in B_0.
\end{cases}
$$
Prove that this is a bijection.
Proof: 
1. $\varphi$ is injective: for any $x,y\in A_{0},x\neq y$, $\varphi(x)\neq\varphi(y)$ since $f$ is injective. For any $x,y \in B_{0}$, $x\neq y$, $\varphi(x)\neq \varphi(y)$ since $g$ is a mapping. For any $x\in A_{0},y\in B_{0}$, $\varphi(x)\neq\varphi(y)$ since $f(A_{0})\cap g^{-1}(B_{0})=\emptyset$.
2. $\varphi$ is subjective: $\varphi(X)=\varphi(A_{0}\cup B_{0})=f(A_{0})\cup g^{-1}(B_{0})=Y$.

Based on the above, we have proved:
**Theorem (Schroeder-Bernstein).** If there exist injective maps $f: X \to Y$ and $g: Y \to X$, then there exists a bijection $\varphi: X \to Y$ between the two sets.

## PSD: Details of Dedekind Cut
The goal of this part of the exercise is to complete the part of the Dedekind cut construction method taught in class, thereby providing a complete proof for the construction of real numbers.
#### D1) Prove that if $X$ and $Y$ are both Dedekind cuts, then the product $X \cdot Y$ as defined in the lecture is also a Dedekind cut, i.e.,
$$\times: \mathbb{R} \times \mathbb{R} \to \mathbb{R}, (X, Y) \mapsto X \cdot Y,$$
is well-defined. (Hint: You only need to prove the case where $X > 0, Y > 0$.)
Proof: The set $X\cdot Y$ is define as $Z=\bar{0}\cup \{ x \cdot y: x,y\geqslant 0, x\in X,y\in Y \}$. Let $Z^{\prime}=\mathbb{Q}-Z$, then
1. $Z\neq \emptyset, Z^{\prime}\neq \emptyset$, since for any $x\in X^{\prime},y\in Y^{\prime}$, $x\cdot y\not\in Z$.
2. For any $z\in Z,z^{\prime} \in Z^{\prime},$ if $z^{\prime}<z$ then $z>0$. So assume $z=x\cdot y,x\in X,y\in Y,x,y\geqslant 0$, then $z^{\prime}= x \cdot (y z^{\prime} /z) \in Z$, a contradiction.
3. If $Z$ has a maximal element $z=x\cdot y,x,y\geqslant 0,x\in X,y\in Y$, then since $x,y$ are both not maximal, there exists $x^{\prime} \in X,y^{\prime}\in Y$, such that $x<x^{\prime},y<y^{\prime}$ so $z<z^{\prime}=x^{\prime}\cdot y^{\prime} \in Z$, a contradiction.
#### D2) Prove that $(X \cdot Y) \cdot Z = X \cdot (Y \cdot Z)$. ($\implies$(F5))
Proof: We only need to verify the case where $X,Y,Z>0$. Then both $(X\cdot Y)\cdot Z$ and $X \cdot(Y \cdot Z)$ are the set
$$
\bar{0}\cup \{ x\cdot y\cdot z:x,y,z\geqslant 0,x\in X,y\in Y,z\in Z \}.
$$
#### D3) Prove that $X \cdot Y = Y \cdot X$. ($\implies$(F6))
Proof: Same as D2).
#### D4) Prove that $X \cdot (Y + Z) = X \cdot Y + X \cdot Z$. ($\implies$(F9))
Proof: We can assume that $X,Y,Z>0$, then
$$
X\cdot(Y+Z)=\{ xy+xz:x\in X,y\in Y,z\in Z \}
$$
while
$$
X\cdot Y+X\cdot Z=\{ xy+x^{\prime}z:x,x^{\prime}\in X,y\in Y,Z\in Z \}.
$$
Hence $X\cdot(Y+Z)\subset X\cdot Y+X\cdot Z$.
For any $xy+x^{\prime}z\in X\cdot Y+X\cdot Z$, suppose $x\geqslant x^{\prime}$, then
$xy+xz\in X\cdot(Y+Z)$ and $xy+x^{\prime}z\leqslant xy+xz$, so $xy+x^{\prime}z\in X\cdot Y+X\cdot Z$, therefore $X\cdot Y+X\cdot Z=X\cdot(Y+Z)$.
#### D5) Prove that $\overline{1} \cdot X = X$ and $\overline{1} \neq \overline{0}$. ($\implies$(F7))
Proof: Assume that $X>0$, then $\overline{1}\cdot X=\{ u\cdot v:u<1,v\in X \}$. Foy any $u<1,v\in X$, $u\cdot v<v$ hence $u\cdot v\in X$. For any $x\in X$, there exists $x^{\prime}\in X,x^{\prime}>x$, then $x=x^{\prime} \cdot(x /x^{\prime})\in \overline{1}\cdot X$. Therefore $\overline{1}\cdot X=X$ and $1 /2 \in \overline{1}\backslash\overline{0}$, so $\overline{1}\neq\overline{0}$.
#### D6) Prove that if $X \cdot Y = \overline{0}$, then $X = \overline{0}$ or $Y = \overline{0}$; conversely, if $X \ge \overline{0}, Y \ge \overline{0}$, then $X \cdot Y \ge \overline{0}$. ($\implies$(O5))
Proof: Otherwise there exists $x,x^{\prime}\in X,y,y^{\prime}\in Y$, such that $x,y>0,x^{\prime},y^{\prime}<0$. Hence $xy,x^{\prime}y \in X\cdot Y$, where $xy>0>x^{\prime}y$, so  $X\cdot Y\neq \overline{0}$. 
Suppose $X,Y>0$, then there exists $x\in X,y\in Y$ such that $x,y>0$, hence $0<xy \in X\cdot Y$, so $X\cdot Y>\overline{0}$.
#### D7) $X$ is a positive Dedekind cut. Prove that for any integer $n$, there exist $x \in X, x' \in X'$ such that
$$1 < \frac{x'}{x} < 1 + \frac{1}{n}.$$
Proof: Let $l_{0}=x\in X,r_{0}=x^{\prime}\in X^{\prime}$. Define $l_{n},r_{n}$ as follows: If $(l_{n-1}+r_{n-1}) /2 \in X$, then $l_{n}=(l_{n-1}+r_{n-1}) /2,r_{n}=r_{n-1}$, otherwise $l_{n}=l_{n-1},r_{n}=(l_{n-1}+r_{n-1}) /2$. Then 
$$
0< \frac{r_{n}-l_{n}}{l_{n}}\leqslant\frac{1}{2} \frac{r_{n-1}-l_{n-1}}{l_{n-1}}.
$$
Hence there exist such $x,x^{\prime}$.
#### D8) Prove that for any Dedekind cuts $X$ and $Y$, if $Y \neq \overline{0}$, there exists a unique Dedekind cut $Z$ such that
$$Y \cdot Z = X.$$
We denote $Z$ as $\frac{X}{Y}$. When $X = \overline{1}$, we also denote it as $Y^{-1}$. ($\implies$(F8))
Proof: By D6), $Z$ is unique. By D2) we can assume that $X=\overline{1}$, and $Y>0$. Let 
$$
Z=\left\{  \frac{1}{y}:y\in Y^{\prime} \right\}\cup \overline{0}\cup \{ 0 \}.
$$
Then by D7), $Y\cdot Z=\overline{1}$.

# HW2 Cesàro sum
## PSA
#### A1) $\{ x_{n} \}_{n\geqslant 1}$ is a bounded real sequence. Prove that there is a subsequence $\{ x_{n_{i}} \}_{i\geqslant 1}$ such that $\lim_{ i \to \infty }x_{n_{i}}$ exists and 
$$
\lim_{ i \to \infty } x_{n_{i}}=\limsup_{ n \to \infty } {x_{n}}.
$$
Proof: Let $M=\limsup_{ n \to \infty }x_{n}<\infty$, then for any $\varepsilon=1 /i>0$ there exists $N\geqslant n_{i-1}$ such that $M\leqslant \sup_{k\geqslant N}{x_{k}}<M+\varepsilon$. Hence there exists $n_{i}\geqslant N$ such that $x_{n_{i}}\in(M-\varepsilon,M+\varepsilon)$. Take the sequence $\{ x_{n_{i}} \}_{i\geqslant 1}$ then $\lim_{ i \to \infty }x_{n_{i}}=\limsup_{ n \to \infty }x_{n}$. 
#### A2) $\{ x_{n} \}_{n\geqslant 1}$ is a real sequence. Prove that $\{ x_{n} \}_{n\geqslant 1}$ converges iff $\limsup_{ n \to \infty }x_{n}=\liminf_{ n \to \infty }x_{n}$.
Proof: Since a sub-sequence of a Cauchy sequence converge to the same value as the original sequence, ==> is trivial by A1). 
<== $\lim_{ n \to \infty }\sup_{k\geqslant n}{x_{k}}-\inf_{k\geqslant n}{x_{k}}=0$ implies $x_{n}$ is Cauchy, hence convergent.
#### A3) $\{ x^{(k)} \}_{k\geqslant 1}\subset \mathbb{R}^{n}$, where $x^{(k)}=(x_{1}^{(k)},x_{2}^{(k)},\cdots,x_{n}^{(k)})$. Then $\{ x^{(k)} \}_{k\geqslant 1}$ converges in $\mathbb{R}^{n}$ iff for any $i=1,2,\cdots,n$, $\{ x_{i}^{(k)} \}_{k\geqslant 1}$ converges.
Proof: Use Cauchy sequences and the fact that for $x=(x_{1},x_{2},\cdots,x_{n})$, 
$$
\max\{ \lvert x_{k} \rvert :1\leqslant k\leqslant n \}\leqslant\|x\|\leqslant \sum_{k=1}^{n}{\lvert x_{k} \rvert }.
$$
#### A4) Suppose $\{ z_{n} \}_{n\geqslant 1},\{ w_{n} \}_{n\geqslant 1}$ are two convergent complex sequences. Prove that if $\lim_{ n \to \infty }w_{n}\neq 0$, then the sequence $\{ z_{n} /w_{n} \}_{n\geqslant 1}$ converges.
Proof: Suppose $z=\lim_{ n \to \infty }z_{n}$ and $w=\lim_{ n \to \infty }w_{n}$, then
$$
\left\lvert  \frac{z_{n}}{w_{n}}-\frac{z}{w}  \right\rvert\leqslant \frac{\lvert w \rvert \cdot \lvert z_{n}-z \rvert }{\lvert w\cdot w_{n} \rvert }+\frac{\lvert z \rvert \cdot \lvert w_{n}-w \rvert }{\lvert w\cdot w_{n} \rvert }.
$$
Hence $\left\lvert  \frac{z_{n}}{w_{n}}-\frac{z}{w}  \right\rvert\to 0$, so $\lim_{ n \to \infty }z_{n} /w_{n}=z /w$.
#### A5) Suppose $\{ a_{n} \}_{n\geqslant 1}$ is a monotonically decreasing sequence of positive reals, and $\lim_{ n \to \infty }a_{n}=0$. Prove that the series
$$
a_{1}-a_{2}+a_{3}-a_{4}+\cdots+(-1)^{n-1}a_{n}+\cdots
$$
converges.
Proof: Suppose $a_{n}=a_{1}-\sum_{k=1}^{n}{b_{k}}$, then $b_{k}\geqslant 0$ and $\sum_{k=1}^{\infty}{b_{k}}=a_{1}$. The series
$$
\sum_{n=1}^{\infty}{(-1)^{n-1}a_{n}}=\sum_{n=1}^{\infty}{b_{2n}}<a_{1}
$$
clearly converges.
#### A6) $\{ a_{n} \}_{n\geqslant 1} \subset \mathbb{C}$. Prove that if $\sum_{k=1}^{\infty}{\lvert a_{k} \rvert}$ converges, then $\sum_{k=1}^{\infty}{a_{k}}$ converges.
Proof: $\sum_{k=1}^{\infty}{\lvert a_{k} \rvert}$ converges implies for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $p\geqslant 0$, $\sum_{k=n}^{n+p}{\lvert a_{k} \rvert}<\varepsilon$. Note that $\left\lvert  \sum_{k=n}^{n+p}{a_{k}}  \right\rvert\leqslant \sum_{k=n}^{n+p}{\lvert a_{k} \rvert}$, so $\sum_{k=1}^{\infty}{a_{k}}$ converges.
#### A7) Prove that we can define the exponential function on $\mathbb{C}$:
$$
\exp:\mathbb{C}\to \mathbb{C},\,z\mapsto \exp(z)=e^{z}=\sum_{n=0}^{\infty}{\frac{z^{n}}{n!}}.
$$
Proof: Use A6).
#### A8) $\{ a_{n} \}\subset \mathbb{C}$. Suppose for any $n\in \mathbb{N}$, $a_{n}\neq 0$. Let $P_{n}=a_{1}\cdot a_{2}\cdots a_{n}$. If $\lim_{ n \to \infty }P_{n}$ exists and is not $0$, we call $\prod_{n=1}^{\infty}{a_{n}}$ convergent and let $\prod_{n=1}^{\infty}{a_{n}}=\lim_{ n \to \infty }P_{n}$. Prove that $\prod_{n=1}^{\infty}{a_{n}}$ converges iff for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $p\geqslant 0$, 
$$
\lvert a_{n}\cdot a_{n+1}\cdots a_{n+p}-1 \rvert <\varepsilon.
$$
Proof: If $\lim_{ n \to \infty }P_{n}=P$ exists and is non-zero, then for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $\lvert P_{n}-P \rvert<\varepsilon P /4$ and $\lvert P_{n} \rvert>P /2$. Then for any $n\geqslant N$, $p\geqslant 0$, $\lvert P_{n+p} /P_{n}-1 \rvert<\varepsilon$.
If for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $p\geqslant 0$, $\lvert P_{n+p}-P_{n} \rvert<\varepsilon \lvert P_{n} \rvert$, then let $\varepsilon=1$ we infer that $P_{n}$ is bounded by some constant $M$. Hence the sequence $\{ P_{n} \}$ is Cauchy, and $P=\lim_{ n \to \infty }P_{n}$ cannot be zero, otherwise there is no such $N$ for $\varepsilon =1 /2$.
#### A9) Prove that $\exp(x)$ is monotonically increasing on $\mathbb{R}$.
Proof: For $x,y\in \mathbb{R}$, 
$$
\exp(x)\cdot \exp(y)=\sum_{n=0}^{\infty}{\frac{x^{n}}{n!}}\cdot \sum_{m=0}^{\infty}{\frac{y^{m}}{m!}}=\sum_{k=0}^{\infty}{\sum_{n+m=k}^{}{\frac{x^{n}y^{n}\binom{k}{n}}{k!}}}=\sum_{k=0}^{\infty}{\frac{(x+y)^{k}}{k!}}=\exp(x+y).
$$
$\exp(x)\cdot \exp(-x)=\exp(0)=1$ implies $\exp(x)>0$ for all $x\in \mathbb{R}$, so if $x>y$, $\exp(x) /\exp(y)=\exp(x-y)>1\implies \exp(x)>\exp(y)$.
#### A10) Suppose $P(x)$ and $Q(x)$ are polynomials of degree $n,m$, where $m>n$. Prove that
$$
\lim_{ n \to \infty } \frac{Q(n)}{P(n)}=0,\,\lim_{ n \to \infty } \frac{Q(n)}{e^{n}}=0.
$$
Proof: Suppose $P(x)=\sum_{k=0}^{n}{a_{k}x^{k}}$ and $Q(x)=\sum_{k=0}^{m}{b_{k}x^{k}}$, then there exists $N$ such that for any $x\geqslant N$, $\lvert P(x) \rvert>\lvert a_{n} \rvert x^{n} /2$, $\lvert Q(x) \rvert\leqslant \sum_{k=0}^{m}{\lvert b_{k} \rvert \cdot x^{m}}$, and $e^{x}\geqslant x^{m+1} /(m+1)!$, hence
$$
\left\lvert  \frac{Q(x)}{P(x)}  \right\rvert \leqslant \frac{2\sum_{k=0}^{m}{\lvert b_{k} \rvert }}{\lvert a_{n} \rvert }\cdot x^{m-n}\to 0,\, \left\lvert  \frac{Q(x)}{e^{x}}  \right\rvert \leqslant (m+1)!\sum_{k=0}^{m}{\lvert b_{k} \rvert }\cdot x^{-1}\to 0.
$$
## PSB: Calculation of Limits
#### B1)
$$
\lim_{ n \to \infty } \frac{n+10}{2n-1}=\frac{1}{2}.
$$

#### B2)

$$
\lim_{ n \to \infty } \frac{\sqrt{ n }+10}{2\sqrt{ n }-1}=\frac{1}{2}.
$$

#### B3)
$$
\lim_{ n \to \infty } 0.\underbrace{99\cdots 9}_{n\text{ times}}=1.
$$
#### B4)
$$
\lim_{ n \to \infty } \frac{1}{n(n+3)}=0.
$$
#### B5)
$$
\lim_{ n \to \infty } \frac{\cos n}{n}=0.
$$
#### B6) 
$$
\lim_{ n \to \infty } \frac{2^{n}}{n!}=0.
$$
#### B7)
$$
\lim_{ n \to \infty } \frac{n!}{n^{n}}=0.
$$
#### B8)
$$
\lim_{ n \to \infty } \sqrt{ n+10 }-\sqrt{ n+1 }=0.
$$
#### B9)
$$
\lim_{ n \to \infty } \frac{1+2+\cdots+n}{n^{2}}=\frac{1}{2}.
$$
#### B10)
$$
\lim_{ n \to \infty } \frac{1^{2}+2^{2}+\cdots+n^{2}}{n^{3}}=\frac{1}{3}.
$$
#### B11) $a>0$
$$
\lim_{ n \to \infty } a^{1/n}=1.
$$
#### B12) $a>1$
$$
\lim_{ n \to \infty } \frac{n^{10000}}{a^{n}}=0.
$$
#### B13)
$$
\lim_{ n \to \infty } \frac{2^{n}+n}{3^{n}+n^{2}}=0.
$$
#### B14)
$$
\lim_{ n \to \infty } \frac{3^{n}+2^{n}}{3^{n}+n^{2}}=1.
$$
#### B15)
$$
\lim_{ n \to \infty } \sqrt{ n }(\sqrt{ n+1 }-\sqrt{ n })=\frac{1}{2}.
$$
#### B16) same as B12)
#### B17)
$$
\lim_{ n \to \infty } \left( 1-\frac{1}{n} \right)^{n}=e^{-1}.
$$
#### B18)
$$
\lim_{ n \to \infty } \left( 1-\frac{1}{5n} \right)^{n+2019}=e^{-1/5}.
$$
#### B19)
$$
\lim_{ n \to \infty } (n^{3}+n^{2}+9n+1)^{1/n}=1.
$$
#### B20)
$$
\lim_{ n \to \infty } (2018^{n}+2019^{n})^{1/n}=2019.
$$
## PSC: Riemann Rearrangement Theorem
Suppose $\sum_{n=1}^{\infty}{a_{n}}$ is conditionally convergent, we will prove that for and $\alpha \in \mathbb{R}\cup \{ -\infty,\infty \}$, we can rearrange the sequence such that the new series sums to $\alpha$. Suppose $\varphi:\mathbb{Z}_{\geqslant 1}\to \mathbb{Z}_{\geqslant 1}$ is a bijection, let $b_{k}=a_{\varphi(k)}$, then the sequence $\{ b_{k} \}_{k\geqslant 1}$ is called a rearrangement of $\{ a_{n} \}_{n\geqslant 1}$. 
Let all non-negative terms of $\{ a_{n} \}_{n\geqslant 1}$, listed in the same order as in $\{ a_{n} \}$ be $c_{1},c_{2},\cdots$, and the negative terms be $d_{1},d_{2},\cdots$.
#### C1) Prove that $\lim_{ n \to \infty }c_{n}=\lim_{ n \to \infty }d_{n}=0$.
Proof: Since $\sum_{n=1}^{\infty}{a_{n}}$ is conditionally convergent, $c_{n},d_{n}$ both have infinite terms and $\lim_{ n \to \infty }a_{n}=0$. Therefore $\lim_{ n \to \infty }c_{n}=\lim_{ n \to \infty }d_{n}=0$.
#### C2) Prove that $\sum_{n=1}^{\infty}{c_{n}}=\sum_{n=1}^{\infty}{b_{n}}=\infty$.
Proof: Since $\sum_{n=1}^{\infty }{a_{n}}$ is not absolutely convergent, the two series can not be both convergent. If one converges and the other doesn’t, then $\sum_{n=1}^{\infty}{a_{n}}$ will diverge. Hence they both diverge.
#### C3) Prove that for any $\alpha \in \mathbb{R}$, there exists a rearrangement $\{ b_{n} \}$ of $\{ a_{n} \}$ such that $\sum_{k=1}^{\infty}{b_{k}}=\alpha$.
Proof: Suppose $\alpha\geqslant 0$. Inductively define the indices $u_{i}$ and $v_{i}$ as follows ($u_{0}=v_{0}=0$): For $i\geqslant 1$, let $u_{i}$ be the least index such that $u_{i}>u_{i-1}$ and 
$$
\sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i-1}}{d_{j}}\geqslant \alpha,
$$
and $v_{i}$ be the least index such that $v_{i}>v_{i-1}$ and
$$
\sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i}}{d_{j}}\leqslant \alpha.
$$
Let $\varphi$ be the permutation such that
$$
b_{1}=c_{1},b_{2}=c_{2},\cdots,b_{u_{1}}=c_{u_{1}},b_{u_{1}+1}=-d_{1},\cdots,b_{u_{1}+v_{1}}=-d_{u_{1}},\cdots
$$
Since $\sum_{n=1}^{\infty}{c_{n}}=\sum_{n=1}^{\infty}{d_{n}}=\infty$, $u_{i}$ and $v_{i}$ all exists, so $\varphi$ is indeed a bijection. By definition we know that
$$
\left\lvert  \sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i-1}}{d_{j}}-\alpha  \right\rvert \leqslant c_{u_{i}-1},
$$
and
$$
\left\lvert  \sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i}}{d_{j}}-\alpha  \right\rvert \leqslant d_{v_{i}-1}.
$$
Since $\lim_{ n \to \infty }c_{n}=\lim_{ n \to \infty }d_{n}=0$, the two values above both tend to $0$. Note that the series $\sum_{n=1}^{\infty}{b_{n}}$ is monotonic between these indices, hence $\sum_{n=1}^{\infty}{b_{n}}=\alpha$.
#### C4) Prove that there exists a rearrangement $\{ x_{k} \}$ of $\{ a_{n} \}$ such that $\sum_{k=1}^{\infty}{x_{k}}=\infty$.
Proof: Define $u_{i}$ and $v_{i}$ as in C3), such that
$$
\sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i-1}}{d_{j}}\geqslant i\geqslant \sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i}}{d_{j}}.
$$
Same as C3) define the sequence $x_{k}$ and clearly $\sum_{n=1}^{\infty }{x_{k}}=\infty$.
## PSD: Cesàro Sum
For a real sequence $\{ a_{n} \}_{n\geqslant 1}$, let $\sigma_{n}=\frac{a_{1}+a_{2}+\cdots+a_{n}}{n}$.
#### D1) Suppose $\lim_{ n \to \infty }a_{n}=a$, prove that $\lim_{ n \to \infty }\sigma_{n}=a$.
Proof: For any $n>0$,
$$
\lvert \sigma_{n}-a \rvert \leqslant \sum_{i=1}^{N}{\frac{\lvert a_{i}-a \rvert }{n}}+\sum_{i=N+1}^{n}{\frac{\lvert a_{i}-a \rvert }{n}}\leqslant \frac{MN}{n}+\varepsilon(N),
$$
where $M=\lvert a \rvert+\sup_{i\leqslant N}{\lvert a_{i} \rvert}$, and $\varepsilon(N)=\sup_{i>N}{\lvert a_{i}-a \rvert}$. By $\lim_{ n \to \infty }a_{n}=a$ we know $\varepsilon(N)\to 0$, hence $\lim_{ n \to \infty }\sigma_{n}=a$.
#### D2) Construct a divergent sequence $\{ a_{n} \}$ such that $\lim_{ n \to \infty }\sigma_{n}=0$.
Solution: $a_{n}=(-1)^{n-1}$, $\sigma_{n}\in[0,1 /n]$.
#### D3) Determine whether there exists $\{ a_{n} \}_{n\geqslant 1}$ such that for any $n\geqslant 1$, $a_{n}>0$ and $\limsup_{ n \to \infty }a_{n}=\infty$ but $\lim_{ n \to \infty }\sigma_{n}=0$.
Solution: Let
$$
a_{n}=\begin{cases}
2^{-n}, & n\neq 2^{k}, \\
k, & n=2^{k}.
\end{cases}
$$
Then $\limsup_{ n \to \infty }a_{n}=\infty$ and $a_{n}>0$, but for any $n$, suppose $n\in[2^{k-1},2^{k}]$, then
$$
\sigma_{n}\leqslant \frac{1}{n}\cdot\left( 1+\frac{k(k+1)}{2} \right)\leqslant \frac{k(k+1)}{2^{k-1}}.
$$
Hence $\lim_{ n \to \infty }\sigma_{n}=0$.
#### D4) For $k\geqslant 1$, denote $b_{k}=a_{k+1}-a_{k}$. Prove that for any $n\geqslant 2$, $a_{n}-\sigma_{n}=\sum_{k=1}^{n-1}{kb_{k} /n}$.
Proof: 
$$
\sum_{k=1}^{n-1}{kb_{k}}=\sum_{k=1 }^{n-1}{k(a_{k+1}-a_{k})}=(n-1)a_{n}-\sum_{k=1}^{n-1}{a_{k}}=n(a_{n}-\sigma_{n}).
$$
#### D5) Suppose $\lim_{ k \to \infty }kb_{k}=0$ and $\{ \sigma_{n} \}_{n\geqslant 1}$ converges. Prove that $\{ a_{n} \}_{n\geqslant 1}$ also converges.
Proof: By D1), $\lim_{ k \to \infty }kb_{k}=0$ implies
$$
\lim_{ n \to \infty } a_{n}-\sigma_{n}=\lim_{ n \to \infty } \frac{\sum_{k=1}^{n-1}{kb_{k}}}{n}=\lim_{ k \to \infty } kb_{k}=0.
$$
Therefore $\lim_{ n \to \infty }a_{n}=\lim_{ n \to \infty }\sigma_{n}$ exists.
#### D6) Suppose $\{ kb_{k} \}_{k\geqslant 1}$ is bounded, i.e. $b_{k}=O(k^{-1})$, and $\lim_{ n \to \infty }\sigma_{n}=\sigma$. Prove that $\lim_{ n \to \infty }a_{n}=\sigma$.
Proof: Note that for $m<n$,
$$
a_{n}-\sigma_{n}= \frac{m}{n-m}(\sigma_{n}-\sigma_{m})+\frac{1}{n-m}\sum_{k=m+1}^{n}{a_{n}-a_{k}}.
$$
Therefore since $\sigma_{n}$ is a Cauchy sequence, and $\lvert a_{n}-a_{k} \rvert\leqslant M(n-k) /k$, we can choose $n,m$ to show that $\lim_{ n \to \infty }a_{n}-\sigma_{n}=0$.
## PSE: Definition of $\sqrt[n]{ x }$ and $b^{x}$
#### E1) Given $n\in \mathbb{N}$ and $x>0$, prove that if $y_{1},y_{2}>0$ satisfy $y_{1}^{n}=x=y_{2}^{n}$, then $y_{1}=y_{2}$.
Proof: Note that $y_{1}^{n-1}+y_{1}^{n-2}y_{2}+\cdots+y_{2}^{n-1}>0$, and 
$$
0=y_{1}^{n}-y_{2}^{n}=(y_{1}-y_{2})\cdot(y_{1}^{n-1}+y_{1}^{n-2}y_{2}+\cdots+y_{2}^{n-1}).
$$
Hence $y_{1}=y_{2}$.
#### E2) Prove that if $x>0$, then the set $E(x)=\{ t\in \mathbb{R}: t^{n}<x \}$ is non-empty and has an upper-bound.
Proof: Note that $0\in E(x)$ and $E(x)$ has the upper-bound $\max\{ 1,x \}$.
#### E3) Prove that $y=\sup_{}{E(x)}$ satisfy $y^{n}=x$ and $y>0$.
Proof: $y=\sup_{}{E(x)}\implies y^{n}=x$ since $t^{n}$ is continuous on $\mathbb{R}$, and $y^{n}=x$ and $0\in E(x)$ implies $y>0$.
#### E4) Prove that the mapping $\sqrt[n]{ \cdot }:\mathbb{R}_{>0}\to \mathbb{R}_{>0},x\mapsto \sqrt[n]{ x }=y$ is well-defined. Denote $\sqrt[n]{ x }$ as $x^{1/n}$.
Proof: Use E3).
#### E5) Prove the $\sqrt[n]{ \cdot }:\mathbb{R}_{>0}\to \mathbb{R}_{>0}$ is a bijection.
Proof: By E1) it is injective, and $\sqrt[n]{ y^{n} }=y$ implies it is surjective. Hence it is a bijection.
#### E6) $a,b>0$, $n\in \mathbb{N}$, prove that $(ab)^{1/n}=a^{1/n}b^{1/n}$.
Proof: Use E5) and $(xy)^{n}=x^{n}y^{n}$.
#### E7) Suppose $b>1$, $m,n,p,q\in \mathbb{Z}$ where $n,q>0$. Let $r=\frac{m}{n}=\frac{p}{q}$, prove that
$$
(b^{m})^{1/n}=(b^{p})^{1/q}.
$$
Proof: Use $(b^{m})^{q}=(b^{p})^{n}$ and E5).
#### E8) Prove that for any $r\in \mathbb{Q}$, $r\mapsto b^{r}$ is well-defined.
Proof: For $r=p /q$, where $q>0,\gcd(p,q)=1$, let $b^{r}=(b^{p})^{1/q}$, then for any $r=m /n$, $b^{r}=(b^{m})^{1 /n}$. 
#### E9) Prove that for $r,s \in \mathbb{Q}$, $b^{r+s}=b^{r}b^{s}$.
Proof: Suppose $r=p /q,s=m /n$, where $n,q>0$, then
$$
b^{r+s}=b^{(mq+np)/nq}=(b^{mq}\cdot b^{np})^{1/nq}=(b^{m})^{1/n}\cdot(b^{p})^{1/q}=b^{r}b^{s}.
$$
#### E10) For $x\in \mathbb{R}$, let $B(x)=\{ b^{t}:t\in \mathbb{Q},t\leqslant x \}$. Prove that $B(x)$ is non-empty and has an upper-bound. Define $b^{x}=\sup_{}{B(x)}$. 
Proof: $B(x)$ is clearly non-empty and bounded by $b^{\lfloor x \rfloor+1}$.
#### E11) Prove that if $r\in \mathbb{Q}$, then
$$
b^{r}=\sup_{}{B(r)},\,\forall r\in \mathbb{Q}.
$$
Proof: $b^{r}\in B(r)$ and since $b^{t}$ is monotonically increasing, $b^{r}\geqslant \sup_{}{}B(r)$, hence $b^{r}=\sup_{}{B(r)}$.
#### E12) Prove that for any $x,y\in \mathbb{R}$, $b^{x+y}=b^{x}b^{y}$.
Proof: For any $b^{t}\in B(x)$, $b^{s}\in B(y)$, $t\leqslant x$ and $s\leqslant y$, so $t+s\leqslant x+y$ and $b^{t+s}\in B(x+y)$, hence $b^{x+y}\geqslant b^{x}b^{y}$. For any $b^{t}\in B(x+y)$, $t$ can be written in the form $t=u+v$ where $b^{u}\in B(x)$, $b^{v}\in B(y)$, so $b^{x+y}\leqslant b^{x}b^{y}$.
#### E13\*) Prove that when $b=e$, the function derived from E10) (denoted as $e^{x}$) is the same as $\exp(x)=\sum_{n=0}^{\infty}{x^{n} /n!}$.
Proof: From $\exp(1)=e$, $\exp(0)=1$ and $\exp(x+y)=\exp(x)\cdot \exp(y)$ we know that for $n\in \mathbb{Z}$, $\exp(n)=e^{n}$. For $r=p /q\in \mathbb{Q}$, 
$$
(e^{r})^{q}=e^{p}=\exp(p)=\exp(r)^{q},
$$
so by E5) $e^{r}=\exp(r)$. Since $\exp$ is continuous, for any $x\in \mathbb{R}$, $e^{x}=\exp(x)$.
## PSF
Given $\alpha>0$ and $x_{1}>\sqrt{ \alpha }$, we define inductively $\{ x_{n} \}_{n\geqslant 1}$:
$$
x_{n+1}=\frac{1}{2}\left( x_{n}+\frac{\alpha}{x_{n}} \right),n\geqslant 1.
$$
#### F1) Prove that $\{ x_{n} \}$ is monotonically decreasing and $\lim_{ n \to \infty }x_{n}=\sqrt{ \alpha }$ (which is defined in E).
Proof: Note that
$$
x_{n+1}-x_{n}=\frac{\alpha-x_{n}^{2}}{2x_{n}}.
$$
Hence we can prove by induction that $x_{n}>\sqrt{ \alpha }$ and $x_{n}>x_{n+1}$. $x_{n}$ is decreasing and bounded, so $\lim_{ n \to \infty }x_{n}=A$ exists, and $A=(A+\alpha /A) /2$. Therefore $\lim_{ n \to \infty }x_{n}=A=\sqrt{ \alpha }$.
#### F2) Let $\varepsilon_{n}=x_{n}-\sqrt{ \alpha }$. Prove that $\varepsilon_{n+1}=\frac{\varepsilon_{n}^{2}}{2x_{n}}<\frac{\varepsilon_{n}^{2}}{2\sqrt{ \alpha }}$.
Proof: 
$$
\frac{\varepsilon_{n}^{2}}{2x_{n}}=\frac{x_{n}^{2}+\alpha-2x_{n}\sqrt{ \alpha }}{2x_{n}}=\frac{1}{2}\left( x_{n}+\frac{\alpha}{x_{n}} \right)-\sqrt{ \alpha }=x_{n+1}-\sqrt{ \alpha }=\varepsilon_{n+1}.
$$
#### F3) Prove that if $\beta=2\sqrt{ \alpha }$, then $\varepsilon_{n+1}<\beta(\varepsilon_{1} /\beta)^{2^{n}}$.
Proof: $\varepsilon_{n+1} /\beta< (\varepsilon_{n} /\beta)^{2}$, hence $\varepsilon_{n+1}<\beta(\varepsilon_{1} /\beta)^{2^{n}}$.
#### F4) Let $\alpha=3,x_{1}=2$. Verify that $\varepsilon_{1} /\beta<0.1$, $\varepsilon_{5}<4\cdot 10^{-16}$, $\varepsilon_{6}<4\cdot 10^{-32}$.

Now we consider $\alpha>1$ and $y_{1}>\sqrt{ \alpha }$, and define 
$$
y_{n+1}=\frac{\alpha+y_{n}}{1+y_{n}}=y_{n}+\frac{\alpha-y_{n}^{2}}{1+y_{n}},n\geqslant 1
$$
#### F6) Prove that $\{ y_{2k-1} \}$ is monotonically decreasing.
Proof: Note that
$$
y_{n+2}=\frac{\alpha+y_{n+1}}{1+y_{n+1}}= \frac{\alpha+\frac{\alpha+y_{n}}{1+y_{n}}}{1+\frac{\alpha+y_{n}}{1+y_{n}}}=\frac{2\alpha+(\alpha+1)y_{n}}{(\alpha+1)+2y_{n}}，
$$
hence
$$
y_{n+2}-y_{n}= \frac{2(\alpha-y_{n}^{2})}{(\alpha+1)+2y_{n}}, \, y_{n+2}-\sqrt{ \alpha }= \frac{(\sqrt{ \alpha }-1)^{2}}{(\alpha+1)+2y_{n}}(y_{n}-\sqrt{ \alpha }).
$$
Therefore $y_{1}>\sqrt{ \alpha }$ implies $\sqrt{ \alpha }<y_{2n+1}<y_{2n-1}$.
#### F7) Prove that $\{ y_{2k} \}$ is monotonically increasing.
Proof: $y_{2}=(\alpha+y_{1}) /(1+y_{1})<\sqrt{ \alpha }$, so same as F6), $y_{2k}>y_{2k-2}$ and $y_{2k}<\sqrt{ \alpha }$.
#### F8) Prove that $\lim_{ n \to \infty }y_{n}=\sqrt{ \alpha }$.
Proof: $\{ y_{2n-1} \}$ is decreasing and bounded by $\sqrt{ \alpha }$, so $\lim_{ n \to \infty }y_{2n-1}=A$ exists and $A=(2\alpha+(\alpha+1)A) /((\alpha+1) +2A)$, so $A=\sqrt{ \alpha }$. Likewise $\lim_{ n \to \infty }y_{2n}=\sqrt{ \alpha }$, hence $\lim_{ n \to \infty }y_{n}=\sqrt{ \alpha }$.
#### F9) Compare the rates of convergence between $x_{n}$ and $y_{n}$.
Solution: Let $\delta_{n}=\lvert y_{n}-\sqrt{ \alpha } \rvert$, then $\delta_{n}\sim c^{n}\delta_{1}$, hence $x_{n}$ converges faster then $y_{n}$.
## PSG: Banach-Mazur Game
Alice and Bob are playing a game: Alice selects a closed interval $W_{1}$ first, then Bob choose a subinterval $L_{1}$ of $W_{1}$, such that the length of $L_{1}$ is less than half of the length of $W_{1}$; they take turns choosing intervals $W_{n}$ and $L_{n}$, such that $L_{n}\subset W_{n}\subset L_{n-1}$ and $\lvert L_{n} \rvert< \lvert W_{n} \rvert /2<\lvert L_{n-1} \rvert /4$, obtaining 
$$
W_{1}\supset L_{1} \supset W_{2} \supset L_{2} \supset\cdots \supset W_{n}\supset L_{n} \supset \cdots
$$
Alice and Bob find that 
$$
\bigcap_{n\geqslant 1}W_{n}=\bigcap_{n\geqslant 1}L_{n}=\{ x \}
$$
is a real number. If $x\in \mathbb{Q}$ then Alice wins, otherwise Bob wins. Who has a winning strategy?
**Solution:** Bob will win. We show that if $\mathbb{Q}$ is replaced with any set $M$ that is of first category, Bob can still win.
$M$ can be written as the union of a countable number of nowhere dense sets. Then in every move of Bob, he can choose $L_{n}$ such that it does not intersect the $n$th such nowhere dense set. Hence the final number $x$ is not in $M$.
## Problem H
Consider the set $\mathcal{P}=\{ \{ p_{n} \}_{n\geqslant 1}:p_{n}\in \mathbb{Z},p_{1}\geqslant 2,p_{n+1}\geqslant p_{n}^{2} \}$.
#### H1) For any $p=\{ p_{n} \}_{n\geqslant 1}\in \mathcal{P}$, define the sequence
$$
a_{n}=\prod_{k=1}^{n}{\left( 1+\frac{1}{p_{k}} \right)}.
$$
Prove that $f(p)=\lim_{ n \to \infty }a_{n}$ exists and $f(p)\in(1,2]$.
Proof: Note that $p_{n}\geqslant p_{1}^{2^{n-1}}$, then
$$
a_{n}\leqslant \prod_{k=1}^{n}{\left( 1+\frac{1}{p_{1}^{2^{k-1}}} \right)=\frac{1-p_{1}^{-2^{n}}}{1-p_{1}^{-1}}}< \frac{1}{1-p_{1}^{-1}}.
$$
So the sequence $\{ a_{n} \}$ is monotonic and bounded, hence $f(p)=\lim_{ n \to \infty }a_{n}$ exists. Since $a_{n}\in (1+1 /p_{1},\frac{1}{1-p_{1}^{-1}})$, we obtain $f(p)\in [1+1 /p_{1},\frac{1}{1-p_{1}^{-1}}]\subset(1,2]$.
#### H2) Prove that $f:\mathcal{P}\to(1,2]$ is a bijection.
Proof: For any $p=\{ p_{n} \},q=\{ q_{n} \}\in \mathcal{P}$, if $p\neq q$, take the least $k$ such that $p_{k}\neq q_{k}$ and suppose $q_{k}\geqslant p_{k}+1$, then for any $n>k$,
$$
\begin{align}
a_{n}&=\prod_{t=1}^{n}{\left( 1+\frac{1}{p_{t}} \right)}\geqslant \prod_{t=1}^{k}{\left( 1+\frac{1}{p_{t}} \right)}\cdot \left( 1+\frac{1}{p_{k+1}} \right) \\
b_{n}&=\prod_{t=1}^{n}{\left( 1+\frac{1}{q_{t}} \right)}\leqslant \prod_{i=1}^{k-1}{\left( 1+\frac{1}{p_{t}} \right)}\cdot \frac{1-q_{k}^{-2^{n-k}}}{1-q_{k}^{-1}}
\end{align}
$$
Therefore
$$
b_{n}\leqslant \prod_{t=1}^{k}{\left( 1+\frac{1}{p_{t}} \right)}\leqslant (1+C)a_{n}
$$
for all $n>k$ where $C=p_{k+1}^{-1}>0$, hence $f(q)\leqslant (1+C)f(p)<f(p)$, hence $f$ is injective.
For any $x\in(1,2]$, inductively define $p=\{ p_{n} \}\in \mathcal{P}$ as follows: For any $n\geqslant 1$, Let $t$ be the least integer such that $a_{n}\leqslant x$ and $t\geqslant p_{n-1}^{2}$ (clearly such $t$ exists). If $a_{n}=x$, then let $p_{n}=t-1$, $p_{m}=p_{n}^{2^{m-n}}$ for all $m>n$, then $f(p)=x$. Otherwise let $p_{n}=t$. Note that for any $n$ such that $p_{n}>p_{n-1}^{2}$, 
$$
\lvert x-a_{n} \rvert \leqslant 2^{-2^{n}},
$$
therefore $f(p)=x$, and $f$ is surjective.
#### H3) Prove that $\mathcal{P}$ is uncountable.
Proof: By H2) and the fact that $(1,2]$ is uncountable.
## Problem I: Binary Expansion
Consider the set $\mathcal{S}=\{ \{ s_{n} \}_{n\geqslant 0}:s_{n}\in \{ -1,1 \} \}$.
#### I1) For any $s=\{ s_{n} \}_{n\geqslant 0}\in \mathcal{S}$, define the sequence
$$
c_{n}=\sum_{k=0}^{n}{\frac{s_{0}s_{1}\cdots s_{k}}{2^{k}}}.
$$
Prove that $h(s)=\lim_{ n \to \infty }c_{n}$ exists and $h(s)\in[-2,2]$.
Proof: $h(s)$ exists since $c_{n}$ is clearly a Cauchy sequence, and $c_{n}\in[-2,2]$ hence $h(s)\in[-2,2]$.
#### I2) Prove that $h:\mathcal{S}\to[-2,2]$ is surjective. Determine whether is is injective.
Proof: Consider any $x\in[-2,2]$, we can choose $s_{n}$ such that $\lvert c_{n}-x \rvert\leqslant 2^{-n}$. Hence there exists $s=\{ s_{n} \}\in \mathcal{S}$ such that $h(s)=\lim_{ n \to \infty }c_{n}=x$, so $h$ is surjective.
Consider $s=\{ 1,-1,1,1,1,\cdots \}\in \mathcal{S}$ and $s^{\prime}=\{ -1,-1,1,1,\cdots \}$, then $h(s)=h(s^{\prime})=0$, hence $h$ is not injective.
#### I3) For $s=\{ s_{n} \}_{n\geqslant 0}\in \mathcal{S}$, prove that
$$
2\sin\left(  \frac{\pi}{4}c_{n} \right)=s_{0}\sqrt{ 2+s_{1}\sqrt{ 2+\cdots+s_{n}\sqrt{ 2 } } }.
$$
Proof: We prove by induction on $n$. The base $n=0$ is trivial. If the statement holds for $n-1$, then let $s^{\prime}=\{ s_{n+1} \}_{n\geqslant 0}\in \mathcal{S}$, we have
$$
2\sin \left( \frac{\pi}{4}c_{n} \right)=2\sin s_{0}\left( \frac{\pi}{4}+\frac{1}{2}\cdot \frac{\pi}{4}c_{n-1}^{\prime} \right)=s_{0} \sqrt{ 2+\sin\left( \frac{\pi}{4}c_{n-1}^{\prime} \right) }.
$$
By the induction hypothesis, the statement also holds for $n$.
#### I4) Calculate the limit
$$
\lim_{ n \to \infty } \sqrt{ 2+\sqrt{ 2+\cdots+\sqrt{ 2 } } }
$$
Solution: Consider $s=\{ s_{n}=1 \}_{n\geqslant 0} \in \mathcal{S}$, then $c_{n}=2-2^{n}$ hence $\lim_{ n \to \infty }2\sin(\pi c_{n} /4)=2$.
## Problem J
#### Problem: $k\geqslant 2$ is a given integer. Define the sequence $\{ a_{n} \}$ as follows:
$$
a_{0}>0 \text{ already given},a_{n+1}=a_{n}+a_{n}^{-1/k},n\geqslant 0.
$$
Calculate $\lim_{ n \to \infty }a_{n}^{k+1}/n^k$.
Solution: It is easy to see that $a_{n}\to \infty$, hence
$$
\begin{align}
\lim_{ n \to \infty } \frac{a_{n}^{\frac{k+1}{k}}}{n} &= \lim_{ n \to \infty } a_{n+1}^{\frac{k+1}{k}} - a_{n}^{\frac{k+1}{k}}=\lim_{ n \to \infty } a_{n}^{\frac{k+1}{k}} \left({\left( 1+\frac{a_{n+1}-a_{n}}{a_{n}} \right) ^{\frac{k+1}{k}}-1} \right) \\
&= \lim_{ n \to \infty } a_{n}^{\frac{k+1}{k}} \left( \left( 1+a_{n}^{-\frac{k+1}{k}} \right) ^{\frac{k+1}{k}}-1 \right)  = \frac{k+1}{k}.
\end{align}
$$
Therefore 
$$
\lim_{ n \to \infty } \frac{a_{n}^{k+1}}{n^k}= \left( 1+\frac{1}{k} \right)^k.
$$

# HW3 Basel Problem
## PSA
#### A1) Given $f:(a,x_{0})\cup(x_{0},b)\to \mathbb{R}$, then $\lim_{ x \to x_{0} }f(x)$ exists iff for any $\varepsilon>0$, there exists $\delta>0$ such that for any $x_{1},x_{2}\in(x_{0}-\delta,x_{0}+\delta)$, $\lvert f(x_{1})-f(x_{2}) \rvert<\varepsilon$.
Proof: <== Let $x_{n}=x_{0}+1 /n$, then $\{ f(x_{n}) \}$ form a Cauchy sequence, hence $f(x_{0})=\lim_{ n \to \infty }f(x_{n})$ exists. For any $\varepsilon>0$, there exists $N,\delta>0$ such that for any $x,y\in(x_{0}-\delta,x_{0}+\delta),\lvert f(x)-f(y) \rvert<\varepsilon$ and for any $n>N$, $\lvert f(x_{n})-f(x_{0}) \rvert<\varepsilon$, hence let $\delta^{\prime}=\min\{ \delta,1 /N \}$, then for any $x\in(x_{0}-\delta^{\prime},x_{0}+\delta^{\prime})$, 
$$\lvert f(x)-f(x_{0}) \rvert\leqslant \lvert f(x)-f(x_{N}) \rvert+\lvert f(x_{N})-f(x_{0}) \rvert<2\varepsilon.$$
Hence $\lim_{ x \to x_{0} }f(x)=f(x_{0})$ exists.
==> For any $\varepsilon>0$ there exists $\delta>0$ such that for any $x\in(x_{0}-\delta,x_{0}+\delta)$, $\lvert f(x)-f(x_{0}) \rvert<\varepsilon$, hence for any $x,y\in(x_{0}-\delta,x_{0}+\delta)$, $\lvert f(x)-f(y) \rvert<2\varepsilon$. 
#### A2) Suppose $I$ is an interval (not a point), prove that the linear space $C(I)$ on $\mathbb{R}$ is of infinite dimension.
Proof: $C(I)$ contains the subspace of all polynomials, hence is of infinite dimension.
#### A3) Suppose $f:X\to Y$ and $g:Y\to Z$ are both continuous, prove that $g\circ f:X\to Z$ is also continuous.
Proof: For any open set $U\in Z$, $g^{-1}(U)\subset Y$ is an open set, and $f^{-1}(g^{-1}(U))\subset X$ is an open set, hence $(g\circ f)^{-1}(U)$ is an open set in $X$ and therefore $g\circ f$ is continuous on $X$.
#### A4) Suppose $(X,d_{X})$ and $(Y,d_{Y})$ are metric spaces, $f:X\to Y$ is continuous. If $d_{X}^{\prime}$ and $d_{X}$ are equivalent metrics, and so are $d_{Y}^{\prime}$ and $d_{Y}$, then in the spaces $(X,d_{X}^{\prime})$ and $(Y,d_{Y}^{\prime})$, $f$ is also continuous.
Proof: The topology generated by equivalent metrics are the same.
#### A5) The mapping $f:X\to \mathbb{R}^{n}$ can be written in the form
$$
f:X\to \mathbb{R}^{n},\,x\mapsto f(x)=(f_{1}(x),f_{2}(x),\cdots,f_{n}(x)).
$$
Prove that $f$ is continuous iff $f_{i}$ is continuous for every $i=1,2,\cdots,n$.
Proof: Since $f$ is continuous iff $\forall x_{n}\to x, f(x_{n})\to f(x)$, and $\{ x_{k}=(x_{k}^{(1)},\cdots,x_{k}^{(n)}) \}_{k\geqslant 1}$ converges iff every $\{ x_{k}^{(i)} \}_{k\geqslant 1}$ converges, $f$ is continuous iff every $f_{i}$ is continuous.
#### A6) Suppose $(X,d_{X})$ is a metric space, $(V,\|\cdot\|)$ is a normed linear space. $f:X\to V$ and $g:X\to V$ are continuous mappings. Prove that $f\pm g:X\to V$ is continuous. If $V=\mathbb{C}$ then $f\cdot g:X\to \mathbb{C}$ is continuous. If $V=\mathbb{C}$ and for any $x\in X$, $g(x)\neq 0$, then $f /g:X\to \mathbb{C}$ is continuous. 
(Choose one statement to prove.)
Proof: Since for $\{ x_{n} \},\{ y_{n} \}\subset \mathbb{C}$, $\lim_{ n \to \infty }x_{n}y_{n}=\lim_{ n \to \infty }x_{n}\cdot \lim_{ n \to \infty }y_{n}$ and if $y_{n}\neq 0$, then
$$
\lim_{ n \to \infty } x_{n} /y_{n}=\lim_{ n \to \infty } x_{n} /\lim_{ n \to \infty } y_{n}.
$$
Hence $f\cdot g$, $f /g$ are both continuous.
For $\{ x_{n} \},\{ y_{n} \}\subset V$, if $A=\lim_{ n \to \infty }x_{n}$ and $B=\lim_{ n \to \infty }y_{n}$ then
$$
\|x_{n}+y_{n}-A-B \|\leqslant \|x_{n}-A\|+\|y_{n}-B\|\to 0.
$$
Hence $f\pm g$ is continuous.
#### A7) Find all discontinuities of the function 
$$
f:\mathbb{R}\to \mathbb{R},\,x\mapsto \begin{cases}
1 /q, & \text{if } x=p /q\in \mathbb{Q}, \text{where } q\geqslant 1,(p,q)=1. \\
0, & \text{if } x\not\in \mathbb{Q}.
\end{cases}
$$
Solution: For any $x\in \mathbb{Q}$, $f(x)\neq 0$ but for any $\delta>0$ there exists $y\in(x-\delta,x+\delta)$ such that $y\not\in \mathbb{Q}$. Hence $\lvert f(x)-f(y) \rvert=f(x)$, so $f$ is not continuous at $x$.
For any $x\not\in \mathbb{Q}$, and any $\varepsilon>0$, let $N= \lfloor 1 /\varepsilon \rfloor+1$ and $\delta=\inf_{n\leqslant N}{\|xn\|} /n$, then for any $y\in(x-\delta,y+\delta)$, if $y\not\in \mathbb{Q}$ then $f(x)=f(y)=0$, if $y=p /q\in \mathbb{Q}$ then $q>N>1 /\varepsilon$, hence $\lvert f(x)-f(y) \rvert=f(y)=1 /q <\varepsilon$. Therefore $f$ is continuous at $x$ iff $x\not\in \mathbb{Q}$.
#### A8) Calculate
$$
\lim_{ x \to 0 } \frac{e^{x}-1}{x}=\lim_{ x \to 0 } \sum_{n=1}^{\infty}{\frac{x^{n-1}}{n!}}=1.
$$
#### A9) Calculate
$$
\lim_{ x \to \infty } \left( 1+\frac{1}{x} \right)^{x}=e.
$$
Since $\lim_{ n \to \infty }(1+1 /n)^{n}=e$ and $(1+1 /x)^{x}$ is monotonic on $[100,\infty)$.
#### A10) Calculate
$$
\lim_{ x \to -\infty } \left( 1+\frac{1}{x} \right)^{x}= e.
$$
Since $\lim_{ x \to \infty }(1-1 /x)^{x}=\lim_{ x \to \infty }(1-1 /x)^{x-1}=e$.
## PSB
#### B1) Calculate the following series:
1.
$$
\sum_{n=1}^{\infty}{\frac{1}{n(n+1)}}=\sum_{n=1}^{\infty}{\frac{1}{n}-\frac{1}{n+1}}=1.
$$
2.
$$
\sum_{n=1}^{\infty}{\frac{1}{4n^{2}-1}}=\frac{1}{2}\sum_{n=1}^{\infty}{\frac{1}{2n-1}-\frac{1}{2n+1}}=\frac{1}{2}.
$$
3.
$$
\sum_{n=1}^{\infty}{\frac{1}{n(n+1)(n+2)}}=\frac{1}{2}\sum_{n=1}^{\infty}{\frac{1}{n(n+1)}-\frac{1}{(n+1)(n+2)}}=\frac{1}{4}.
$$
4.
$$
\sum_{n=1}^{\infty}{\arctan \frac{1}{n^{2}+n+1}}=\sum_{n=1}^{\infty}{ \arctan \frac{1}{n}-\arctan \frac{1}{n+1}}= \frac{\pi}{4}.
$$
5.
$$
\sum_{n=0}^{\infty}{\frac{(-1)^{n}+2}{3^{n}}}= \frac{1}{1+1 /3}+\frac{2}{1-1 /3}=\frac{3}{4}+3=\frac{15}{4}.
$$
6.
$$
\sum_{n=1}^{\infty}{\frac{n}{3^{n}}}=\frac{3}{4}.
$$
7.
$$
\sum_{n=1}^{\infty}{\frac{(-1)^{n-1}}{2^{n-1}}}=\frac{1}{1+1 /2}=\frac{2}{3}.
$$
8.
$$
\sum_{n=1}^{\infty}{\frac{2n-1}{2^{n}}}=3.
$$
9.
$$
\sum_{n=1}^{\infty}{\frac{2n+1}{n^{2}(n+1)^{2}}}=\sum_{n=1}^{\infty}{\frac{1}{n^{2}}-\frac{1}{(n+1)^{2}}}=1.
$$
10.
$$
\sum_{n=1}^{\infty}{\sqrt{ n+2 }-2\sqrt{ n+1 }+\sqrt{ n }}=1-\sqrt{ 2 }.
$$
11.
$$
\sum_{n=1}^{\infty}{\log \left( \frac{n(2n+1)}{(n+1)(2n-1)} \right)}=\lim_{ n \to \infty } \log\left( \frac{2n+1}{n+1} \right)=\log 2.
$$
12.
$$
\sum_{n=1}^{\infty}{\frac{1}{n(n+m)}}=\frac{1}{m}\sum_{n=1}^{\infty}{\frac{1}{n}-\frac{1}{n+m}}=\frac{1}{m}\sum_{n=1}^{m}{\frac{1}{n}}.
$$
#### B2) Determine whether the following series converge:
1.
$$
\sum_{n=1}^{\infty}{\sqrt{ n+1 }-\sqrt{ n }}=\lim_{ n \to \infty } \sqrt{ n+1 }-1=\infty.
$$
2.
$$
\sum_{n=1}^{\infty}{\frac{\sqrt{ n+1 }-\sqrt{ n }}{n}}\leqslant \sum_{n=1}^{\infty}{\frac{1}{2n\sqrt{ n }}}
$$
converges.
3.
$$
\sum_{n=2}^{\infty}(\sqrt[n]{ n }-1)^{n}
$$
converges, since $\limsup_{ n \to \infty }\sqrt[n]{ (\sqrt[n]{ n }-1)^{n} }=0<1$.
4.
$$
\sum_{n=1}^{\infty}{\frac{1}{1+x^{n}}}
$$
converges if $\lvert x \rvert>1$ and diverges if $\lvert x \rvert\leqslant 1$.
5.
$$
\sum_{n=1}^{\infty}{\frac{1}{n 2^{n}}}\leqslant \sum_{n=1}^{\infty}{\frac{1}{2^{n}}}=1.
$$
converges
6.
$$
\sum_{n=1}^{\infty}{\left( \frac{n^{2}}{3n^{2}+1} \right)^{n}}\leqslant \sum_{n=1}^{\infty}{\frac{1}{3^{n}}}<1.
$$
converges.
7.
$$
\sum_{n=1}^{\infty}{\frac{1}{n^{1+1 /n}}} \geqslant \sum_{n=1}^{\infty}{\frac{1}{2n}}
$$
diverges.
8.
$$
\sum_{n=2}^{\infty}{\frac{1}{(\log n)^{\log n}}}=\sum_{n=2}^{\infty}{\frac{1}{n^{\log \log n}}}\leqslant C+\sum_{n=100}^{\infty}{\frac{1}{n^{2}}} 
$$
converges.
9.
$$
\sum_{n=1}^{\infty}{\frac{n^{n+1/n}}{\left( n+\frac{1}{n} \right)^{n}}}
$$
diverges, since 
$$
\lim_{ n \to \infty } \frac{n^{n+1/n}}{\left( n+\frac{1}{n} \right)^{n}}=\exp \lim_{ n \to \infty } \left( \frac{\log n}{n}-n\log\left( 1+\frac{1}{n^{2}} \right) \right)=1.
$$
10.
$$
\sum_{n=1}^{\infty}{\frac{(-1)^{n-1}\sqrt{ n }}{n+1}}
$$
converges (conditionally), since the partial sum of $(-1)^{n-1}$ is bounded and $\frac{\sqrt{ n }}{n+1}$ monotonically tends to $0$.
11.
$$
\sum_{n=1}^{\infty}{\frac{(-1)^{n-1}}{\sqrt[n]{ n }}}
$$
diverges since $(-1)^{n-1} n^{-1/n}$ does not tend to $0$.
12.
Let $H_{n}=1+1 /2+\cdots+1 /n$.
$$
\sum_{n=1}^{\infty}{\frac{H_{n}\sin nx}{n}}
$$
converges since the partial sum of $\sin nx$ is bounded and $\frac{H_{n}}{n}$ monotonically tends to $0$.
#### B3) Determine whether the following series converge (absolutely):
1.
$$
\sum_{n=2}^{\infty}{\frac{(-1)^{n}}{n\log n}}
$$
converges since the partial sum of $(-1)^{n}$ is bounded and $\frac{1}{n\log n}$ monotonically tends to $0$, but only conditionally by C3).
2.
$$
\sum_{n=2}^{\infty}{\frac{\sin(n\pi /4)}{\log n}}
$$
converges since the partial sum of $\sin(n\pi /4)$ is bounded and $\frac{1}{\log n}$ monotonically tends to $0$, but only conditionally since $\sum_{n=2}^{\infty}{\frac{1}{\log(4n+2)}}$ tends to infinity.
3.
$$
\sum_{n=1}^{\infty}{(-1)^{n} \frac{n-1}{n+1} \frac{1}{\sqrt[3]{ n }}}
$$
converges since $\frac{n-1}{(n+1)\sqrt[3]{ n }}$ monotonically tends to $0$, but only conditionally since $\sum_{n=1}^{\infty}{n^{-1/3}}$ diverges.
4.
$a>1$.
$$
\sum_{n=1}^{\infty}{(-1)^{n(n-1)/2} \frac{n^{10}}{a^{n}}}
$$
converges absolutely since there exists $C>0$ such that for $n>C$, $n^{10}a^{-n}\leqslant a^{-n /2}$, and $\sum_{n=1}^{\infty}{a^{-n/2}}$ converges.
## PSC
Suppose the integer $b\geqslant 2$, $f:[1,\infty)\to \mathbb{R}_{>0}$ is monotonically decreasing.
#### C1) Prove that
$$
(b-1)b^{k-1}f(b^{k})\leqslant \sum_{j=b^{k-1}}^{b^{k}-1}{f(j)}\leqslant (b-1)b^{k-1}f(b^{k-1}).
$$
Proof: There are $(b-1)b^{k-1}$ integers in $[b^{k-1},b^{k}-1]$, and since $f$ is monotonically decreasing, for any $j\in[b^{k-1},b^{k}-1]$, $f(j)\in[f(b^{k}),f(b^{k-1})]$.
#### C2) Prove that the series
$$
\sum_{n=1}^{\infty}{f(n)} \text{ and } \sum_{n=1}^{\infty}{b^{n}f(b^{n})}
$$
converge or diverge simultaneously.
Proof: From C1), 
$$
\sum_{k=1}^{\infty}{(b-1)b^{k-1}f(b^{k})}\leqslant\sum_{n=1}^{\infty}{f(n)}=\sum_{k=1}^{\infty}{\sum_{j=b^{k-1}}^{b^{k}-1}{f(j)}}\leqslant \sum_{k=1}^{\infty}{(b-1)b^{k-1}f(b^{k-1})}.
$$
Therefore the two series converge or diverge simultaneously.
#### C3) Prove that $\displaystyle \sum_{n=2}^{\infty}{\frac{1}{n\log n}}$ diverges.
Proof: Consider $f(x)=\frac{1}{x\log x}$ which is monotonically decreasing. Note that
$$
\sum_{n=2}^{\infty}{2^{n}f(2^{n})}=\sum_{n=2}^{\infty}{\frac{1}{n\log 2}}=\infty.
$$
From C2) we know that $\sum_{n=2}^{\infty}{f(n)}$ diverges.
#### C4) Prove that $\sum_{n=100}^{\infty}{\frac{1}{n\log n\log \log n}}$ diverges.
Proof: Consider $f(x)=\frac{1}{x\log x\log \log x}$ which is monotonically decreasing. From C3),
$$
\sum_{n=100}^{\infty}{2^{n}f(2^{n})}=\sum_{n=100}^{\infty}{\frac{1}{n \log 2\cdot \log(n\log 2)}}
$$
diverges. Hence from C2) we know that $\sum_{n=100}^{\infty}{f(n)}$ diverges.
#### C5) Prove that $\sum_{n=1}^{\infty}{n^{-s}}$ converges iff $s>1$.
Proof: Consider $f(x)=x^{-s}$ which is monotonically decreasing. Note that
$$
\sum_{n=1}^{\infty}{2^{n}f(2^{n})}=\sum_{n=1}^{\infty}{2^{-n(s-1)}}=\frac{2^{1-s}}{1-2^{1-s}}.
$$
#### C6) Suppose $s>1$, prove that $\sum_{n=2}^{\infty}{\frac{1}{n(\log n)^{s}}}$ and $\sum_{n=10}^{\infty}{\frac{1}{n\log n(\log \log n)^{s}}}$ converges.
Proof: Same as C3) and C4).
## PSD
For $\{ a_{n} \}_{n\geqslant 1}\subset \mathbb{R}$, 
- $\alpha \in \mathbb{R}$, if for any $\varepsilon>0$, there are infinitely many $n$ such that $a_{n}\in(\alpha-\varepsilon,\alpha+\varepsilon)$, then we call $\alpha$ a limit point of $\{ a_{n} \}_{n\geqslant 1}$.
- Likewise define limit points for $\alpha=\pm \infty$.
#### D1) Prove that $\alpha \in \mathbb{R}$ is a limit point of $\{ a_{n} \}_{n\geqslant 1}$ iff there is a sub-sequence $\{ a_{n_{k}} \}_{k\geqslant 1}$ which converges to $\alpha$.
Proof: <== is trivial. ==> Let $\varepsilon=1 /k$ then there exists $a_{n_{k}}$ such that $\lvert a_{n_{k}}-\alpha \rvert<\varepsilon$. Hence $\lim_{ k \to \infty }a_{n_{k}}=\alpha$.
#### D2) Prove that $+\infty$ is a limit point of $\{ a_{n} \}_{n\geqslant 1}$ iff there is a sub-sequence $\{ a_{n_{k}} \}_{k\geqslant 1}$ such that $\lim_{ k \to \infty }a_{n_{k}}=\infty$.
Proof: Same as D1).
#### D3) Let $E=\{ \alpha \in \mathbb{R}\cup \{ \pm \infty \}:\alpha \text{ is a limit point of }\{ a_{n} \} \}$. Prove that $E\neq \emptyset$. 
Proof: If $\{ a_{n} \}$ is unbounded, then by D2) $E\cap \{ \pm \infty \}\neq 0$. If $\{ a_{n} \}$ is bounded, then by Bolzano-Weierstrass theorem, $E\neq \emptyset$.
#### D4) Prove that $E\subset \mathbb{R}$ iff $\{ a_{n} \}$ is bounded.
Proof: Use D2)
#### D5) Suppose $\{ a_{n} \}_{n\geqslant 1}$ is bounded. Prove that $\sup_{}{E}=\limsup_{ n \to \infty }a_{n}$, $\inf_{}{E}=\liminf_{ n \to \infty }a_{n}$.
Proof: Let $M=\limsup_{ n \to \infty }a_{n}$, then for any $\varepsilon>0$, there exists $n$ such that $M\leqslant\sup_{k\geqslant n}{a_{k}}<M+\varepsilon$, hence there exists $k\geqslant n$ such that $\lvert a_{k}-M \rvert<\varepsilon$, so $M\in E$.
For any $\alpha\in E$, there is a sub-sequence $\{ a_{n_{k}} \}\to \alpha$, hence 
$$
\alpha=\lim_{ k \to \infty } a_{n_{k}}\leqslant \lim_{ k \to \infty } \sup_{m\geqslant n_{k}}{a_{n_{k}}}=\limsup_{ n \to \infty } a_{n}=M.
$$
Therefore $M=\sup_{}{E}$. Substitute $a_{n}\to -a_{n}$ and we obtain $\inf_{}{E}=\liminf_{ n \to \infty }a_{n}$.
#### D6) Suppose $\{ a_{n} \}_{n\geqslant 1}$ is bounded. Let $a^{*}=\limsup_{ n \to \infty }a_{n}$. Prove that
i) $a^{*}\in E$, i.e. $\sup_{}{E}\in E$.
Proof: See the proof of D5).
ii) For any $x>a^{*}$, there exists $N\in \mathbb{Z}_{\geqslant 1}$ such that for any $n>N$, $a_{n}<x$.
Proof: If there is an infinite sub-sequence $\{ a_{n_{k}} \}_{k\geqslant 1}$ such that $a_{n_{k}}\geqslant x$, then $\{ a_{n_{k}} \}$ has a limit point $a^{\prime}>x>a^{*}$, contradicting $a^{*}=\sup_{}{E}$.
#### D7) Construct an example of $\{ a_{n} \}_{n\geqslant 1}$ such that $E\cap \mathbb{R}\neq \emptyset$ and $E\not\subset \mathbb{R}$.
Solution: Since $\mathbb{Q}$ is countable, let $\{ a_{n} \}_{n\geqslant 1}$ iterate every element of $\mathbb{Q}$, then $E=\mathbb{R}\cup \{ \pm \infty \}$ is an infinite set.
#### D8) Construct $\{ a_{n} \}_{n\geqslant 1}$ such that $E$ is an infinite set.
Solution: Same as D7).
## PSE: Reciprocal Sum of Primes
Define the $\zeta$-function:
$$
\zeta(s)=\sum_{n=1}^{\infty}{n^{-s}}.
$$
We have proved the formula:
$$
\zeta(s)=\prod_{p\in \mathcal{P}}^{}{\frac{1}{1-p^{-s}}}.
$$
Prove that the series
$$
\sum_{p\in \mathcal{P}}^{}{p^{-s}}
$$
converges when $s>1$, and diverges when $0<s\leqslant 1$.
Proof: We know that for $\lvert a_{n} \rvert<1$, $\prod_{n=1}^{\infty}{(1-a_{n})}$ converges iff $\sum_{n=1}^{\infty}{a_{n}}$ converges. Hence by $\zeta(s)^{-1}=\prod_{p\in \mathcal{P}}^{}{(1-p ^{-s})}$, we obtain $\sum_{p\in \mathcal{P}}^{}{p ^{-s}}$ converges iff $s>1$.
## PSF: Euler’s “Proof” of the Basel Problem
For any $\theta \in \mathbb{R},n\in \mathbb{Z}$, prove the identity
$$
\frac{\sin((2n+1)\theta)}{(2n+1)\sin\theta}=\prod_{k=1}^{n}{\left( 1- \frac{\sin ^{2}\theta}{\sin ^{2}(k\pi /(2n+1))} \right)}.
$$
Further prove that for any $x\in \mathbb{R}$,
$$
\frac{\sin(\pi x)}{\pi x}=\prod_{n=1}^{\infty}{\left( 1- \frac{x^{2}}{n^{2}} \right)}.
$$
Proof: (1) By induction there is a polynomial $P_{n}(x)$ such that $P_{n}(\sin\theta)=\sin(2n+1)\theta$ for any $\theta \in \mathbb{R}$ and $\deg P_{n}=2n+1$. For any $k=1,2,\cdots,n$, and $\theta=\pm k\pi /(2n+1)$, $\sin((2n+1)\theta)=0$, hence $P_{n}$ has roots $0$ and $\pm\sin(k\pi /(2n+1))$ for $k=1,2,\cdots,n$. Since $\deg P_{n}=2n+1$, 
$$
P_{n}(x)=Cx\prod_{k=1}^{n}{\left(1-\frac{x^{2}}{\sin ^{2}(k\pi /(2n+1))}\right)}
$$
for some $C\in \mathbb{R}$. Let $x=\sin \theta$ and consider the derivatives on both sides when $\theta=0$, then we obtain $C=2n+1$, therefore
$$
\frac{\sin((2n+1)\theta)}{(2n+1)\sin\theta}=\prod_{k=1}^{n}{\left( 1-\frac{\sin ^{2}\theta}{\sin ^{2}(k\pi /(2n+1))} \right)}.
$$
(2) Let $m=2n+1$. From (1) we know that for any $x\in \mathbb{C}$ and $k<n$, $\sin x=U_{k}^{(n)}\cdot V_{k}^{(n)}$, where
$$
\begin{align}
U_{k}^{(n)} & = m\sin \frac{x}{m}\prod_{j=1}^{k}{\left( 1-\frac{\sin ^{2}(x /m)}{\sin ^{2}(j\pi /m)} \right)}, \\
V_{k}^{(n)} & =\prod_{j=k+1}^{n}{\left( 1-\frac{\sin ^{2}(x /m)}{\sin ^{2}(j \pi /m)} \right)}.
\end{align}
$$
Clearly, for any $k\in \mathbb{N}$,
$$
\lim_{ n \to \infty } U_{k}^{(n)}=U_{k}=x\prod_{j=1}^{k}{\left( 1-\frac{x^{2}}{j^{2}\pi^{2}} \right)}.
$$
and for any $x\in \mathbb{C}$ and $j\in \mathbb{N}$,
$$
\left\lvert  \frac{\sin ^{2}(x /m)}{\sin ^{2}(j \pi /m)}  \right\rvert \leqslant \frac{x^{2}}{4j^{2}}\cdot K(\lvert x \rvert  /m)^{2},
$$
where $K(x)=\sum_{n=0}^{\infty}{\lvert x \rvert^{n} /(2n+1)!}$ is monotonic on $[0,\infty)$ and $K(0)=1$.
Note that for $\alpha_{i}\in \mathbb{C}$,
$$
\left\lvert  1-\prod_{j=1}^{n}{(1-\alpha_{n})}  \right\rvert \leqslant \sum_{j=1}^{n}{\left( \sum_{k=1}^{n}{\lvert \alpha_{k} \rvert } \right)^{j}}.
$$
Hence for any $x\in \mathbb{C}$ and $\varepsilon>0$, there exists $N$ such that for any $k\geqslant N$, and any $n>k$, $\lvert V_{k}^{(n)}-1 \rvert<\varepsilon$, since
$$
\lvert V_{k}^{(n)}-1 \rvert \leqslant \sum_{j=1}^{\infty}{\left( \sum_{l=k+1}^{\infty}{\frac{x^{2}}{4l^{2}}K(\lvert x \rvert /m)^{2}} \right)^{j}}\leqslant \sum_{j=1}^{\infty}{\left( K(\lvert x \rvert /(2k+1))^{2}\cdot \frac{x^{2}}{k} \right)^{j}}\to 0.
$$
i.e. for any $x\in \mathbb{C}$
$$
\lim_{ k \to \infty } \sup_{n>k}{\lvert V_{k}^{(n)}-1 \rvert }=0.
$$
And likewise we know that there is a constant $M$ such that for any $n>k$, $\lvert x \rvert<k$, $\lvert U_{k}^{(n)} \rvert\leqslant M$.
Therefore for any $x\in \mathbb{C}$,
$$
\sin x=x\lim_{ n \to \infty } \prod_{k=1}^{n}{\left( 1-\frac{x^{2}}{k^{2}\pi^{2}} \right)}=x\prod_{n=1}^{\infty}{\left( 1-\frac{x^{2}}{n^{2}\pi^{2}} \right)}.
$$

>Note:
>From the formula above, we can formally deduce that
>$$
>\sin(\pi x)=\pi x(1-\zeta(2)x^{2}+\zeta(4)x^4+\cdots).
>$$
>Compare it to $\sin z=x-x^3 /6+\cdots$, and we get $\zeta(2)=\pi^{2} /6$.

# HW4 Topology

## PSA: Topology on Metric Spaces
#### A1) Suppose $(X,d_{x})$ and $(Y,d_{Y})$ are metric spaces, $f:X\to Y$ is a mapping. Prove that the two following definitions of continuity is equivalent:
- Suppose $x_{0}\in X$, if for any $\{ x_{n} \}_{n\geqslant 1}\subset X$ such that $\lim_{n \to \infty }x_{n}=x_{0}$, we have $\lim_{ n \to \infty }f(x_{n})=f(x_{0})$, then we say $f$ is continuous at $x_{0}$. If $f$ is continuous at every point $x\in X$, then $f$ is a continuous mapping.
- Suppose $x_{0}\in X$, $y_{0}=f(x_{0})\in Y$. If for any $\varepsilon>0$, there exists $\delta>0$ such that for any $d_{X}(x,x_{0})<\delta$, $x\in X$, we have $d_{Y}(f(x),f(x_{0}))<\varepsilon$, we call $f$ continuous at $x_{0}$. If $f$ is continuous at every point $x\in X$, then $f$ is a continuous mapping. 
Proof: 1=>2: If there exists $\varepsilon>0$ such that for any $n\geqslant 1$, there exists $x_{n}$ such that $d_{X}(x_{0},x_{n})<1 /n$ but $d_{Y}(f(x_{n}),f(x_{0}))>\varepsilon$, then $\lim_{ n \to \infty }x_{n}=x_{0}$ but $\lim_{ n \to \infty }f(x_{n})\neq f(x_{0})$, a contradiction.
2=>1: For any $\{ x_{n} \}_{n\geqslant 1}\subset X$ such that $\lim_{ n \to \infty }x_{n}=x_{0}$, and any $\varepsilon>0$, take the corresponding $\delta$ and $N$ such that $n>N\implies d(x_{n},x_{0})<\delta$. Then for any $n>N$, $d(x_{n},x_{0})<\delta$ so $d(f(x_{n}),f(x_{0}))<\varepsilon$, hence $\lim_{ n \to \infty }f(x_{n})=f(x_{0})$.
#### A2) $(X,d)$ is a metric space. For any $x\in X$, $r>0$, let $B(x,r)=\{ y\in X:d(x,y)<r \}$. Proved that for any $x\in X$, $r>0$, if $x^{\prime}\in B(x,r)$, then there exists $r^{\prime}>0$ such that $B(x^{\prime},r^{\prime})\subset B(x,r)$.
If $U=\bigcup_{\alpha \in \mathcal{A}}B(x_{\alpha},r_{\alpha})$, then we call $U$ an open set. Prove that $U\subset X$ is open iff for any $x\in U$, there exists $\delta_{x}>0$ such that $B(x,\delta_{x})\subset U$.
Proof: If $x^{\prime}\in B(x,r)$, let $r^{\prime}=r-d(x,x^{\prime})$, then for any $y\in B(x^{\prime},r^{\prime})$, $d(x,y)\leqslant d(x,x^{\prime})+d(x^{\prime},y)<d(x,x^{\prime})+r^{\prime}=r$, hence $y\in B(x,r)$ so $B(x^{\prime},r^{\prime})\subset B(x,r)$.
If for any $x\in U$, there exists $\delta_{x}>0$ such that $B(x,\delta_{x})\subset U$, then $U=\bigcup_{x\in U}B(x,\delta_{x})$ is open.
If $U$ is open then for any $x\in U$, suppose $x\in B(x_{\alpha},r_{\alpha})$ for some $\alpha \in \mathcal{A}$, then there exists $\delta_{x}>0$ such that $B(x,\delta_{x})\subset B(x_{\alpha},r_{\alpha})\subset U$.
#### A3) Let $\mathcal{T}$ denote all open sets on $(X,d)$. Prove that $\mathcal{T}$ is a topology.
Proof: 1. $\emptyset \in \mathcal{T}$, $X=\bigcup_{x\in X}B(x,1)\in \mathcal{T}$. 2. If $\{ U_{\alpha}:\alpha \in J \}\subset \mathcal{T}$, where $U_{\alpha}=\bigcup_{x\in \mathcal{A}_{\alpha}}B(x,r_{\alpha,x})$ then let $\mathcal{A}=\bigcup_{\alpha \in J}\mathcal{A}_{\alpha}$,
$$
\bigcup_{\alpha \in J}U_{\alpha}=\bigcup_{x\in \mathcal{A}}{B(x,\sup_{\alpha,x\in \mathcal{A}_{\alpha}}{r_{\alpha,x}})}\in \mathcal{T}.
$$
3. If $U_{1},\cdots,U_{n}\in \mathcal{T}$, where $U_{k}=\bigcup_{x\in \mathcal{A}_{k}}B(x,r_{k,x})$, then let $\mathcal{A}=\bigcup_{k=1}^{n}\mathcal{A}_{k}$
$$
\bigcap_{k=1}^{n}U_{k}=\bigcup_{x\in \mathcal{A}}B(x,\min_{x\in \mathcal{A_{k}}}r_{k,x})\in \mathcal{T}.
$$
Therefore $\mathcal{T}$ is a topology on $X$.
#### A4) $(X,d)$ is a metric space. If $F\subset X$ and $F^{C}$ is open, then we call $F$ a closed set. Prove that $F$ is closed iff for any sequence $\{ x_{n} \}_{n\geqslant 1}\in F$, if $\lim_{ n \to \infty }x_{n}=x$ then $x\in F$.
Proof: Suppose $F$ is closed, if a sequence $\{ x_{n} \}_{n\geqslant 1}$ satisfy $\lim_{ n \to \infty }x_{n}=x$ and $x\in F^{C}$, then there exists $\varepsilon>0$ such that $B(x,\varepsilon)\subset F^{C}$. However $B(x,\varepsilon)\cap \{ x_{n} \}\neq \emptyset$, leading to contradiction.
If for any sequence $\{ x_{n} \}_{n\geqslant 1}$ such that $\lim_{ n \to \infty }x_{n}=x$, there is $x\in F$, then for any $x\in F^{C}$, if for any $\varepsilon>0$ $B(x,\varepsilon)\not\subset F^{C}$, then for any $n\geqslant 1$, take $x_{n}\in B(x,\varepsilon)\cap F$. The sequence $\{ x_{n} \}$ has the limit $\lim_{ n \to \infty }x_{n}=x$ but $x\in F^{C}$, a contradiction. Hence $F$ is closed.
#### A5) Prove that 
1) $\emptyset$ and $X$ are closed sets.
2) Any intersection of closed sets are still closed.
3) Finite unions of closed sets are still closed.
Proof: Use A3) and de Morgan’s theorem.
#### A6) Suppose $(X,d_{X})$ and $(Y,d_{Y})$ are metric spaces and $f:X\to Y$, then the following statements are equivalent:
1) $f$ is continuous.
2) For any $U\subset Y$ open, $f^{-1}(U)$ is an open set in $X$.
3) For any $F\subset Y$ closed, $f^{-1}(F)$ is a closed set in $X$.
Proof: 1=>2: If $f$ is continuous, then for any $U\subset Y$ open, consider any point $x\in f^{=1}(U)$. Let $y=f(x)\in U$, then there exists $\varepsilon>0$ such that $B(y,\varepsilon)\subset U$. Since $f$ is continuous, there exists $\delta>0$ such that for any $x^{\prime}\in B(x,\delta)$, $f(x^{\prime})\in B(y,\varepsilon)\subset U$, hence $B(x,\delta)\subset f^{-1}(U)$. Therefore $f^{-1}(U)$ is an open set in $X$.
2=>1: For any $x\in X$ and $\varepsilon>0$, consider the open set $U=B(y,\varepsilon)$, where $y=f(x)$. Since $x\in f^{-1}(U)$ and $f^{-1}(U)$ is an open set, there exists $\delta>0$ such that $B(x,\delta)\subset f^{-1}(U)$, therefore $f$ is continuous.
2<=>3: Note that $f^{-1}(Y\backslash A)=X\backslash f^{-1}(A)$.
#### A7) Let $A^{\prime}$ be the set of limit points of $A$. Prove that $\bar{A}=A^{\prime}\cup A$.
Proof: For any closed set $F\supset A$, by A4) we know $A^{\prime}\subset F$, hence $A^{\prime}\cup A\subset \bar{A}$. Consider a sequence $\{ x_{n} \}_{n\geqslant 1}\subset A^{\prime}\cup A$ such that $\lim_{ n \to \infty }x_{n}=x$ exists, for any $n\geqslant 1$ we can find a $y_{n}\in A$ such that $d(x_{n},y_{n})\leqslant 2^{-n}$, hence $\lim_{ n \to \infty }y_{n}=\lim_{ n \to \infty }x_{n}=x$ so $x\in A^{\prime}\cup A$. Therefore $A^{\prime}\cup A$ is closed, and hence $\bar{A}=A^{\prime}\cup A$.
#### A8) Suppose $(Y,d_{Y})$ and $(Z,d_{Z})$ are metric spaces, define the metric on $Y\times Z$:
$$
d_{Y\times Z}:(Y\times Z)^{2}\to \mathbb{R}_{\geqslant 0},\, ((y_{1},z_{1}),(y_{2},z_{2}))\to \sqrt{ d_{Y}(y_{1},y_{2})^{2}+d_{Z}(z_{1},z_{2})^{2} }.
$$
Prove that this defines a metric and the projection mappings are continuous:
$$
\pi_{Y}:Y\times Z\to Y,\,(y,z)\mapsto y; \, \pi_{Z}:Y\times Z\to Z,\,(y,z)\mapsto z.
$$
Given a mapping $F:X\to Y\times Z$, then $F$ is continuous iff $\pi_{Y}\circ F$ and $\pi_{Z}\circ F$ are both continuous.
Proof: $d((y_{1},z_{1}),(y_{2},z_{2}))=0\iff(y_{1},z_{1})=(y_{2},z_{2})$, $d((y_{1},z_{1}),(y_{2},z_{2}))=d((y_{2},z_{2}),(y_{1},z_{1}))$, and $d((y_{1},z_{1}),(y_{2},z_{2}))\leqslant d((y_{1},z_{1}),(y_{3},z_{3}))+d((y_{3},z_{3}),(y_{2},z_{2}))$ (since $\sqrt{ (x+y)^{2}+(u+v)^{2} }\leqslant \sqrt{ x^{2}+u^{2} }+\sqrt{ y^{2}+v^{2} }$), hence $d_{Y\times Z}$ is a metric.
Note that $d((y_{1},z_{1}),(y_{2},z_{2})\geqslant d(y_{1},y_{2})$, hence $\pi_{Y}$ and $\pi_{Z}$ are continuous.
$d((y_{1},z_{1}),(y_{2},z_{2}))\leqslant d(y_{1},y_{2})+d(z_{1},z_{2})$, hence $F$ is continuous iff $\pi_{Y}\circ F$ and $\pi_{Z}\circ F$ are both continuous.
#### A9) Prove that the operators $+$ and $\cdot$ on real numbers are continuous.
Proof: For any $(x,y),(u,v)\in \mathbb{R}^{2}$, 
$$
\lvert (x+y)-(u+v) \rvert \leqslant \lvert x-u \rvert +\lvert y-v \rvert \leqslant 2\lvert (x,y)-(u,v) \rvert .
$$
Hence $+$ is uniformly continuous.
$$
\lvert x\cdot y-u\cdot v \rvert \leqslant \lvert x \rvert \cdot \lvert y-v \rvert +\lvert v \rvert \cdot \lvert x-u \rvert .
$$
Therefore $\cdot$ is continuous.
#### A10) Prove that the operators $+$ and $\cdot$ on $\mathbf{M}_{n}(\mathbb{R})$ are continuous.
Proof: The proof of A9) only uses the properties of norms, and the fact that $\|A\cdot B\|\leqslant \|A\|\cdot\|B\|$. This also holds for the norm $\|A\|=\sup_{\lvert \mathbf{x} \rvert=1}{\lvert A\mathbf{x} \rvert}$ on $\mathbf{M}_{n}(\mathbb{R})$, therefore $+$ and $\cdot$ are continuous on $\mathbf{M}_{n}(\mathbb{R})$.
#### A11) Prove that $\mathbf{GL}_{n}(\mathbb{R})$ is an open set on $\mathbf{M}_{n}(\mathbb{R})$.
Proof: The mapping $\det:\mathbf{M}_{n}(\mathbb{R})\to \mathbb{R}$ is continuous, since view as $\det:\mathbb{R}^{n^{2}}\to \mathbb{R}$ it is a multi-linear mapping. The set $\mathbf{GL}_{n}(\mathbb{R})=\det ^{-1}(\{ x\in \mathbb{R}:x\neq 0 \})$, where $\{ x\in \mathbb{R}:x\neq 0 \}$ is an open set on $\mathbb{R}$, therefore $\mathbf{GL}_{n}(\mathbb{R})$ is an open set on $\mathbf{M}_{n}(\mathbb{R})$.
#### A12) Prove that $\mathrm{Inv}:\mathbf{GL}_{n}(\mathbb{R})\to \mathbf{GL}_{n}(\mathbb{R}),A\mapsto A^{-1}$ is continuous.
Proof: Note that for any $A,B\in \mathbf{GL}_{n}(\mathbb{R})$, 
$$
\|A^{-1}-B^{-1}\|\leqslant \frac{\|A-B\|}{\|A\|\cdot\|B\|}.
$$
Hence $\mathrm{Inv}$ is continuous.
## PSB
Prove the following equalities:
#### B1) $\lambda>0$, $\displaystyle \lim_{ x \to \infty } \frac{x^{n}}{e^{\lambda x}}=0$.
Proof: By definition, for $x>0$, $e^{\lambda x}\geqslant (\lambda x)^{n+1}/(n+1)!$. Hence for any $\varepsilon>0$, let $M=\frac{(n+1)!}{\lambda ^{n+1}\varepsilon}$, then for any $x>M$,
$$
\left\lvert  \frac{x^{n}}{e^{\lambda x}}  \right\rvert\leqslant \frac{(n+1)!}{\lambda ^{n+1}x}<\varepsilon.
$$
Therefore
$$
\lim_{ x \to \infty } \frac{x^{n}}{e^{\lambda x}}=0.
$$
#### B2) $\alpha>0$, then
$$
\lim_{ x \to \infty } x^{\alpha}\log\left( 1+\frac{1}{x} \right)=\begin{cases}
\infty, & \alpha>1; \\
1, & \alpha=1; \\
0, & 0<\alpha<1.
\end{cases}
$$
Proof: If $0<\alpha<1$, then for any $\varepsilon>0$, there exists $\delta=\varepsilon ^{1/(\alpha-1)}$ such that for any $x>\delta$,
$$
\left\lvert  x^{\alpha}\log\left( 1+\frac{1}{x} \right)  \right\rvert \leqslant x^{\alpha-1}<\varepsilon.
$$
If $\alpha>1$, then for any $\varepsilon>0$, there exists $\delta=(2\varepsilon)^{1/\alpha-1}$ such that for any $x>\delta$,
$$
\left\lvert  x^{\alpha}\log\left( 1+\frac{1}{x} \right)  \right\rvert \geqslant \frac{x^{\alpha}}{x+1}\geqslant \frac{1}{2}x^{\alpha-1}>\varepsilon.
$$
If $\alpha=1$, then for any $\varepsilon>0$, there exists $\delta=1 /\varepsilon$ such that for any $x>\delta$,
$$
1-\varepsilon\leqslant\frac{x}{x+1}\leqslant x\log\left( 1+\frac{1}{x} \right)\leqslant 1.
$$
Therefore
$$
\lim_{ x \to \infty } x^{\alpha}\log\left( 1+\frac{1}{x} \right)=\begin{cases}
\infty, & \alpha>1;\\
1, & \alpha=1; \\
0, & 0<\alpha<1.
\end{cases}
$$
#### B3) $\displaystyle\lim_{ x \to 0^{+} }x^{-n}e^{-1/x^{2}}=0$.
Proof: If $x<1$, then $e^{-1/x^{2}}\leqslant e^{-1/x}\leqslant(n+1)!x^{n+1}$, hence for any $\varepsilon>0$, let $\delta=\varepsilon /(n+1)!$, then for any $x\in(0,\delta)$, $x^{-n}e^{-1/x^{2}}\leqslant(n+1)!x\leqslant\varepsilon$. Therefore
$$
\lim_{ x \to 0^{+} } x^{-n}e^{-1/x^{2}}=0.
$$
#### B4) We know that $\displaystyle\lim_{ x \to 0 } \frac{\sin x}{x}=1$. Calculate
$$
\lim_{ x \to 0 } \frac{\cos x-1}{x}, \text{and} \, \lim_{ x \to 0 } \frac{\cos x-1}{x^{2} /2}.
$$
Solution: For any $\varepsilon>0$, there exists $\delta>0$ such that for any $\lvert x \rvert<\delta$, $\sin x\in((1-\varepsilon)x,(1+\varepsilon)x)$. Hence
$$
\left\lvert  \frac{\cos x-1}{x}  \right\rvert \leqslant \left\lvert  \frac{\sqrt{ 1-\sin ^{2}x }-1}{x}  \right\rvert \leqslant \left\lvert  \frac{\sin ^{2}x}{x(\sqrt{ 1-\sin ^{2}x }+1)}  \right\rvert \leqslant (1+\varepsilon)^{2}x\leqslant\delta(1+\varepsilon)^{2}.
$$
Therefore
$$
\lim_{ x \to 0 } \frac{\cos x-1}{x}=0.
$$
Likewise
$$
\left\lvert  \frac{\cos x-1}{x^{2} /2}+1  \right\rvert \leqslant \left\lvert  \frac{\sin ^{2}x-x^{2}(1+\sqrt{ 1-\sin ^{2}x }) /2}{x^{2} /2\cdot (\sqrt{ 1-\sin ^{2}x }+1)}  \right\rvert \leqslant (2\varepsilon+\sqrt{ 1-\sin ^{2}x }-1) .
$$
Therefore
$$
\lim_{ x \to 0 } \frac{\cos x-1}{x^{2} /2}=-1.
$$
## PSC: Root of Function:
#### C1) Prove that $x^{3}+2x-1=0$ has exactly one root which lies in $(0,1)$.
Proof: Let $f(x)=x^{3}+2x-1$, then $f(0)=-1$ and $f(1)=2$, so $f(0)<0<f(1)$. Since $f$ is continuous and monotonically increasing on $(0,1)$, there is exactly one root in $(0,1)$.
#### C2) Suppose $0\leqslant\lambda<1$, $b>0$, determine whether the equation $x-\lambda \sin x=b$ has a solution.
Solution: 

#### C3) Prove that $\sin x=1 /x$ has infinitely many roots.
Proof: For any $n\in \mathbb{N}$, let $x_{n}=(2n+1 /2)\pi$, $y_{n}=(2n+3 /2)\pi$, and $f(x)=\sin x -1 /x$, then $f(x_{n})=1-1 /x_{n}>0$, $f(y_{n})=-1-1 /y_{n}<0$, therefore $f$ has a root in $(x_{n},y_{n})$, and hence $f$ has infinitely many roots.
#### C4) Assume $f\in C([0,2])$ and $f(0)=f(2)$. Prove that $f(x)-f(x+1)=0$ has a root in $[0,1]$.
Proof: Let $g(x)=f(x)-f(x+1)$, then $g(0)=f(0)-f(1)=-g(1)$ and $g\in C([0,1])$. Therefore $g$ has a root in $[0,1]$.
#### C5) Prove that $x^{3}+3=e^{x}$ has a solution in $\mathbb{R}$.
Proof: Let $f(x)=e^{x}-x^{3}-3$, then $\lim_{ x \to \infty }f(x)=\infty$ and $\lim_{ x \to -\infty }f(x)=-\infty$, therefore $f$ has a root in $\mathbb{R}$.
#### C6) Suppose $f:[0,2]\to \mathbb{R}$ is continuous and $f(0)=f(2)$ then there exists $x\in[1,2]$ such that $f(x)=f(x-1)$.
Exactly the same as C4)?
#### C7) $f:\mathbb{R}\to \mathbb{R}$, Prove that if for any $c\in \mathbb{R}$, $\lvert f^{-1}(c) \rvert=2$, then $f$ is not continuous.
Proof: If $f$ is continuous on $\mathbb{R}$, suppose $f^{-1}(0)=\{ a<b \}$, then $f\vert_{[a,b]}$ is bounded. Suppose $f\left( \frac{a+b}{2} \right)>0$, then for any $t\in(a,b)$, $f(t)>0$ (otherwise $\lvert f^{-1}(0) \rvert>2$). Consider an arbitrary $M>y=\sup_{x\in[a,b]}{f(x)}$, and take $t\in f^{-1}(M)$. Assume $t<a$, then $f(t)=M> y /2>f(a)=0$, hence there exists $s \in(t,a)$ such that $f(s)=y /2$. However there are at least two elements of $f^{-1}(y /2)$ in $(a,b)$, leading to contradiction.
#### C8) Suppose the continuous function $f:[a,b]\to \mathbb{R}$ is injective. If $f(a)<f(b)$, prove that $f$ is monotonically increasing.
Proof: Otherwise suppose $f(u)>f(v)$ for some $u<v$. Note that for any $c\in(a,b)$, $f(a)<f(c)<f(b)$, otherwise $f(c)<f(a)\implies \exists d\in(c,b), f(d)=f(a)$, or $f(c)>f(b)\implies \exists d\in(a,c), f(d)=f(b)$. Hence $a<u<v<b$. Likewise consider $u<v<b$ we get $f(u)>f(v)>f(b)$, and by $a<u<v$ we get $f(a)>f(u)>f(v)$, therefore $f(a)>f(b)$, a contradiction.
## PSD: Calculation of Limits
$n,m$ are positive integers.
#### (1)
$$
\lim_{ x \to \infty } \frac{a_{0}x^n+a_{1}x^{n-1}+\cdots+a_{n}}{b_{0}x^m+b_{1}x^{m-1}+\cdots+b_{m}}=\begin{cases}
0, & m>n, \\
\infty, & m<n,a_{0}>0, \\
-\infty, & m<n,a_{0}<0, \\
\frac{a_{0}}{b_{0}},& m=n.
\end{cases}
$$
#### (2) $a>1,b>0$
$$
\lim_{ x \to \infty } \frac{x^{b}}{a^{x}}=0.
$$
#### (3) $a>0$
$$
\lim_{ x \to \infty } \frac{\log x}{x^{a}} =0.
$$
#### (4) $a>0$
$$
\lim_{ x \to 0^{+} } x^{a}\log x=0.
$$
#### (5)
$$
\lim_{ x \to \infty } \left( \frac{x^{2}+1}{x^{2}-2} \right)^{x^{2}}=\lim_{ x \to \infty } \left( \frac{x+1}{x-2} \right)^{x}=e^{3}.
$$
#### (6) 
$$
\lim_{ x \to \infty } (x-\sqrt{ x^{2}-a })=\lim_{ x \to \infty } \frac{a}{x+\sqrt{ x^{2}-a }}=0.
$$
#### (7)
$$
\lim_{ x \to \infty } \sqrt{ x+1 }-\sqrt{ x-1 }=\lim_{ x \to \infty } \frac{2}{\sqrt{ x+1 }-\sqrt{ x-1 }}=0.
$$
#### (8)
$$
\lim_{ x \to 0 } \frac{(1+x)(1+2x)(1+3x)-1}{x}=1+2+3=6.
$$
#### (9)
$$
\lim_{ x \to 1 } \frac{x+x^{2}+\cdots+x^{n}-n}{x-1}=\frac{n(n+1)}{2}.
$$
#### (10)
$$
\lim_{ x \to 1 } \frac{x^{100}-2x+1}{x^{50}-2x+1}= \frac{49}{24}.
$$
#### (11)
$$
\lim_{ x \to 1 } \left( \frac{m}{1-x^{m}}-\frac{n}{1-x^{n}} \right)=\frac{m-n}{2}.
$$
Proof: Note that
$$
\begin{align}
\lim_{ x \to 1 } \left( \frac{m}{1-x^{m}}-\frac{n}{1-x^{n}} \right)&=\lim_{ x \to 1 } \frac{m(1+x+\cdots+x^{n-1})-n(1+x+\cdots+x^{m-1})}{(1+x+\cdots+x^{m-1})(1+x+\cdots+x^{n-1})(1-x)} \\
&= \frac{1}{mn}\cdot \lim_{ x \to 1 } \frac{m(x-1+\cdots+x^{n-1}-1)-n(x-1+\cdots+x^{m-1}-1)}{1-x} \\
&= \frac{1}{mn}\cdot (-m(1+2+\cdots+(n-1))+n(1+2+\cdots+(m-1))) \\
&= \frac{m-n}{2}.
\end{align}
$$


#### (12)
$$
\lim_{ x \to 0 } \frac{(1+x)^{a}-1}{x}=a.
$$
(diverges if $a=0$).
#### (13)
$$
\lim_{ x \to 1 } \frac{x^{a}-1}{x^{b}-1}=\frac{a}{b}.
$$
#### (14)
$$
\lim_{ x \to \infty } (\log x)^{1/x}=\lim_{ x \to \infty } e^{(\log \log x)/x}=1.
$$
#### (15) $a,b>0$
$$
\lim_{ x \to 0 } \left( \frac{a^{x}+b^{x}}{2} \right)^{1/x}=\sqrt{ ab }.
$$
#### (16)
$$
\lim_{ x \to \infty } \sqrt[k]{ (x+a_{1})(x+a_{2})\cdots(x+a_{k}) }-x
$$
Proof: Let $y=(x+a_{1})(x+a_{2})\cdots(x+a_{k})$ and $s=a_{1}+\cdots+a_{k}$, then
$$
\frac{sx^{k-1}}{ky^{(k-1)/k}}\leqslant\sqrt[k]{ y }-x= \frac{y-x^{k}}{y^{(k-1)/k}+\cdots+x^{k-1}}\leqslant \frac{ sx^{k-1}+\prod_{i=1}^{k}{(1+a_{i})}x^{k-2} }{kx^{k-1}}.
$$
Therefore
$$
\lim_{ x \to \infty } \sqrt[k]{ y }-x=s=\sum_{i=1}^{k}{a_{i}}.
$$
#### (17)
$$
\lim_{ x \to 0 } \frac{(\sqrt{ 1+x^{2} }+x)^{n}-(\sqrt{ 1+x^{2} }-x)^{n}}{x}=2n.
$$
#### (18)
$$
\lim_{ x \to \frac{\pi}{2} } (\sin x)^{\tan x}=1.
$$
#### (19)
$$
\lim_{ x \to \infty } \left( \sin \frac{1}{x}+\cos \frac{1}{x} \right)^{x}=e.
$$
#### (20) $\alpha>0$,
$$
\lim_{ x \to \infty } \frac{\sqrt{ x+\sqrt{ x+\sqrt{ x } } }}{x^{\alpha}}=\begin{cases}
0, & \alpha>\frac{1}{2}, \\
1,  & \alpha=\frac{1}{2}, \\
\infty, & \alpha<\frac{1}{2}.
\end{cases}
$$
#### (21) $\alpha>0$,
$$
\lim_{ x \to 0^{+} } \frac{\sqrt{ x+\sqrt{ x+\sqrt{ x } } }}{x^{\alpha}}=\begin{cases}
0, & \alpha<\frac{1}{8}, \\
1, & \alpha=\frac{1}{8}, \\
\infty, & \alpha>\frac{1}{8}.
\end{cases}
$$
Proof: Note that for $x\in(0,1)$,
$$
x^{1/8-\alpha}\leqslant\frac{\sqrt{ x+\sqrt{ x+\sqrt{ x } } }}{x^{\alpha}}\leqslant 2x^{1/8-\alpha}.
$$
And for any $\varepsilon>0$ there exists $\delta=(1+\varepsilon)\varepsilon$ such that for any $x<\delta$, $\sqrt{ x+\sqrt{ x+\sqrt{ x } } }<\varepsilon x^{1/8}$. Therefore
$$
\lim_{ x \to 0^{+} } \frac{\sqrt{ x+\sqrt{ x+\sqrt{ x } } }}{x^{\alpha}}=\begin{cases}
0, & \alpha<\frac{1}{8}, \\
1, & \alpha=\frac{1}{8}, \\
\infty, & \alpha>\frac{1}{8}.
\end{cases}
$$
## Problem E
Prove that for any $A\subset \mathbb{R}$ that is countable, there exists a monotonic function $f:\mathbb{R}\to \mathbb{R}$, such that the set of discontinuities of $f$ is exactly $A$.
Proof: Let $A=\{ x_{1},x_{2},\cdots \}$ and $f(x)=\sup_{}\{ 1-2^n:x_{n}<x \}$, (define $\sup_{}{\emptyset}=0$) then $f$ is monotonically increasing and the set of discontinuities is exactly $A$.

## Problem F
$f:[0,1]\to [0,1]$ is monotonic. Prove that $f$ has a fixed point.
Proof: Otherwise suppose that $f$ has no fixed points. Let $S=\{ t\in[0,1]:f(t)> t \}$ and $x=\sup_{}{S}$. Note that $0\in S$ so $S$ is non-empty. If $x\in S$, then $f(x)>x$ so $f(f(x))>f(x)$ ($f$ is monotonic) then $x<f(x)\in S$ which leads to contradiction. If $x\not\in S$, then $f(x)<x$. Take $y\in(f(x),x)\cap S$, ($y$ exists since $x=\sup_{}{S}$) then $f(x)>f(y)>y>f(x)$, a contradiction.

## Problem G
Consider all self-homeomorphisms of $[0,1]$, i.e.
$$
\text{Homeo}([0,1])=\{ f:[0,1]\to[0,1]: f  \text{ is a continuous bijective}\}
$$
We know that for any $f\in \text{Homeo}([0,1])$, $f^{-1} \in \text{Homeo}([0,1])$. Suppose $f,g\in \text{Homeo}([0,1])$ and the only fixed points of $f,g$ are $0,1$. Prove that there exists $h\in \text{Homeo}([0,1])$, such that
$$
h\circ f\circ h^{-1}=g.
$$
Proof: Take $x_{0}=1 /2$, and let $I_{n}=[f^n(x_{0}),f^{n+1}(x_{0})]$, $J_{n}=[g^n(x_{0}),g^{n+1}(x_{0})]$. Note that $(0,1)=\bigcup_{n\in \mathbb{Z}}I_{n}=\bigcup_{n\in \mathbb{Z}}J_{n}$. Define $h_{0}:I_{0}\to J_{0}, \, x\mapsto kx+b$ such that the line $h_{0}$ passes $(x_{0},x_{0})$ and $(f(x_{0}),g(x_{0}))$, i.e. $x\mapsto \frac{g(x_{0})-x_{0}}{f(x_{0})-x_{0}}(x-x_{0})+x_{0}$. Define $h_{n}:I_{n}\to J_{n}, \, x\mapsto g^{n}\circ f^{-n}(x)$, and $h:[0,1]\to[0,1]$ such that
$$
h(x)=\begin{cases}
x, & x\in \{ 0,1 \} , \\
h_{n}(x), & x\in I_{n}.
\end{cases}
$$
Then for any $x\in I_{n}$, $f(x)\in I_{n+1}$ hence $h(f(x))=g^{n+1}\circ f^{-n}(x)=g(h(x))$. Since $h$ maps $I_{n}$ to $J_{n}$ bijectively, $h$ is a bijection on $[0,1]$. For any $x\in I_{n}\cap I_{n+1}$ the value of $h$ does not depend on which interval we choose, and $h$ is continuous on any interval $I_{n}$, therefore $h$ is a continuous bijection.

# HW5 Infinity of Primes
## PSA
#### A1) Prove that $e^{x}$ is uniformly continuous on $(-\infty,0]$ but not on $\mathbb{R}$.
Proof: For $y<x\leqslant0$ and $\lvert x-y \rvert<\varepsilon$,
$$
e^{x}-e^{y}=e^{y}(e^{y-x}-1)\leqslant e^{\varepsilon}-1.
$$
Hence $e^{x}$ is uniformly continuous on $(-\infty,0]$. But for any $\delta>0$, there exists $y$ and $x=y+\delta$ such that
$$
e^{x}-e^{y}=e^{y}\cdot(e^{\delta}-1)>1.
$$
Therefore $e^{x}$ is not uniformly continuous on $\mathbb{R}$.
#### A2) Prove that the function $f:\mathbb{R}_{>0}\times \mathbb{R}\to \mathbb{R},\,(x,\alpha)\mapsto x^{\alpha}$ is continuous on $\mathbb{R}_{>0}\times \mathbb{R}$.
Proof: For $(x,\alpha),(y,\beta)$,
$$
\lvert x^{\alpha}-y^{\beta} \rvert \leqslant \lvert x^{\alpha}- y^{\alpha} \rvert +\lvert y^{\alpha}-y^{\beta} \rvert .
$$
Since $x^{\alpha}$ and $a^{x}$ are both continuous (as functions of $x$), so is $x^{\alpha}:\mathbb{R}_{>0}\times \mathbb{R}\to \mathbb{R}$.
#### A3) Prove that for any $x,y>0$ and $\alpha,\beta$, $(xy)^{\alpha}=x^{\alpha}y^{\alpha}$, $(x^{\alpha})^{\beta}=x^{\alpha\beta}$, $a^{\log_{a}x}=x$. If $x>0,y>0$, then $a^{x+y}=a^{x}a^{y}$, $\log_{a}(x\cdot y)=\log_{a}x+\log_{a}y$.
Proof: See PSE of HW2.
#### A4) Consider the sequence of functions $\{ f_{n}(x) \}_{n\geqslant 1}$ defined on $[0,1]$, where $f_{n}(x)=x^{n}$. Prove that for any $a<1$, $\{ f_{n}(x) \}_{n\geqslant 1}$ converges uniformly to $0$ on $[0,a]$, but $\{ f_{n}(x)\}_{n\geqslant 1}$ does not converge uniformly on $[0,1)$.
Proof: For any $a<1$, and any $\varepsilon>0$, let $N=\log_{a}x$, then for any $n>N$, $f_{n}(x)<\varepsilon$, hence $\{ f_{n}(x) \}_{n\geqslant 1}$ converges uniformly to $0$ on $[0,a]$. Let $\varepsilon=1 /2$, then for any $N\in \mathbb{N}$, there exists $1>x>2^{-1/N}$ such that $f_{N}(x)>\varepsilon$. Hence $\{ f_{n}(x) \}_{n\geqslant 1}$ is not uniformly convergent on $[0,1)$.
#### A5) Consider the sequence of functions $\{ f_{n}(x) \}_{n\geqslant 1}$, where $f_{n}(x)=\frac{nx}{1+n^{2}x^{2}}$. Prove that $\{ f_{n}(x) \}_{n\geqslant 1}$ converges point-wise to $0$ on $\mathbb{R}$, but does not converge uniformly.
Proof: For any $x\in \mathbb{R}$, and any $\varepsilon>0$, there exists $N=1 /(x\varepsilon)$ such that for any $n\geqslant N$, 
$$
\left\lvert  \frac{nx}{1+n^{2}x^{2}}  \right\rvert \leqslant \frac{1}{\lvert nx \rvert }<\varepsilon.
$$
Hence $f_{n}(x)$ converges to $0$ for any $x\in \mathbb{R}$. 
Let $\varepsilon=1 /2$, then for any $n\in \mathbb{N}$, there exists $x=1 /n$ such that $f_{n}(x)=\varepsilon$, so $f$ is not uniformly continuous on $\mathbb{R}$.
#### A6) Consider the sequence of functions $\{ f_{n}(x) \}_{n\geqslant 1}$, where 
$$
f_{n}(x)=\begin{cases}
\frac{nx^{2}}{1+nx}, & x>0; \\
\frac{nx^{3}}{1+nx^{2}}, & x\leqslant 0.
\end{cases}
$$
Determine the convergence of $\{ f_{n}(x) \}_{n\geqslant 1}$ on $\mathbb{R}$ (both point-wise and uniformly).
Proof: For any $\varepsilon>0$, let $N=\max\{ 1 /\varepsilon,1 /4\varepsilon^{2}\}$, then for any $x>0$ and $n>N$,
$$
\lvert f_{n}(x)-x \rvert =\left\lvert  \frac{x}{1+nx}  \right\rvert < \frac{1}{n}<\varepsilon.
$$
For any $x<0$,
$$
\lvert f_{n}(x)-x \rvert =\left\lvert  \frac{x}{1+nx^{2}}  \right\rvert \leqslant \frac{1}{2\sqrt{ n }}<\varepsilon.
$$
Hence $\{ f_{n} \}_{n\geqslant 1}$ converges uniformly to $x$.
#### A7) Given $\varphi:\mathbb{R}_{\geqslant 0}\to \mathbb{R}$ such that $\varphi(0)=0$, $\lim_{ x \to \infty }\varphi(x)=0$, $\varphi$ is continuous and not identically zero. Prove that the sequences $\{ f_{n}(x) \}_{n\geqslant 1}$ and $\{ g_{n}(x) \}_{n\geqslant 1}$ converge point-wise to $0$, but uniformly, where $f_{n}(x)=\varphi(nx)$, $g_{n}(x)=\varphi(x /n)$.
Proof: Point-wise convergence is trivial. Let $\varepsilon=\lvert \varphi(1) \rvert>0$, then for any $n$ there exists $x=1 /n>0$ such that $\lvert f_{n}(x) \rvert=\varepsilon$, hence $\{ f_{n}(x) \}_{n\geqslant 1}$ is not uniformly convergent. Likewise $\{ g_{n}(x) \}_{n\geqslant 1}$ is not uniformly continuous.
#### A8) $f\in C([a,b])$. For $n\geqslant 1$, let $a_{k}=a+(k-1)(b-a) /n$. Define
$$
S_{n}=\sum_{k=1}^{n}{\frac{b-a}{n}f(a_{k})}.
$$
Prove that $\{ S_{n} \}_{n\geqslant 1}$ converges, and denote this limit by $\int_{a}^{b}\,f$. Further show that the mapping 
$$
\int_{a}^{b}:C([a,b])\to \mathbb{R},\,f\mapsto \int_{a}^{b}\,f
$$
is linear and continuous with metric $d_{\infty}$ on $C([a,b])$.
Proof: For any $n,m\in \mathbb{N}$, note that $\lvert S_{n}-S_{m} \rvert\leqslant \lvert S_{n}-S_{nm} \rvert+\lvert S_{nm}-S_{m} \rvert$, and
$$
\lvert S_{n}-S_{nm} \rvert \leqslant\sum_{k=1}^{n}{\frac{b-a}{n}\left\lvert  f(a_{k}^{(n)})-\frac{1}{m}\sum_{j=1}^{m}{f(a_{n(k-1)+j}^{(nm)})}  \right\rvert }\leqslant (b-a)\sup_{\lvert x-y \rvert <1 /n}{\lvert f(x)-f(y) \rvert }.
$$
Since $f$ is uniformly continuous on $[a,b]$, the sequence $\{ S_{n} \}_{n\geqslant 1}$ is Cauchy. 
Obviously $\int_{a}^{b}\cdot$ is linear, and for $f,g\in C([a,b])$,
$$
\left\lvert  \int_{a}^{b}f-\int_{a}^{b}g  \right\rvert =\lim_{ n \to \infty } \lvert S_{n}(f)-S_{n}(g) \rvert \leqslant (b-a)\|f-g\|_{\infty}.
$$
Hence $\int_{a}^{b}\cdot$ is continuous on $C([a,b])$ with metric $d_{\infty}$.
#### A9) For any $f:[a,\infty)\to \mathbb{R}$, suppose $f$ is bounded on any closed interval $[a,b]$, then when the limits in RHS exist,
$$
\begin{align}
\lim_{ x \to \infty } \frac{f(x)}{x}&=\lim_{ x \to \infty } f(x+1)-f(x). \\
\lim_{ x \to \infty } f(x)^{1/x} & =\lim_{ x \to \infty } \frac{f(x+1)}{f(x)}, \text{if for any }x\in[a,\infty),f(x)\geqslant c>0.
\end{align}
$$
Proof: Suppose $\lim_{ x \to \infty }f(x+1)-f(x)=A$, then for any $\varepsilon>0$ there exists $M$ such that for any $x>M$, $\lvert f(x+1)-f(x)-A \rvert<\varepsilon$, so for any $n\geqslant 1$, $\lvert f(x+n)-f(x)-nA \rvert<n\varepsilon$. Hence
$$
\left\lvert  \frac{f(n+x)}{n+x}-A  \right\rvert \leqslant \left\lvert  \frac{f(n+x)-f(x)-nA}{n+x}  \right\rvert +\left\lvert  \frac{f(x)-xA}{n+x}  \right\rvert \leqslant \varepsilon A+\frac{\lvert f(x)-xA \rvert }{n}\to 0.
$$
For any $x>M$. Therefore (since $f$ is bounded on any closed interval) there exists $N$ such that for any $x>N$, $\lvert f(x) /x-A \rvert<2\varepsilon A$, and hence
$$
\lim_{ x \to \infty } \frac{f(x)}{x}=A=\lim_{ x \to \infty } f(x+1)-f(x).
$$
Substitute $f$ by $\log f$ and we obtain the second identity.
## PSB: Uniform Continuity
Determine whether the following functions $f$ are uniformly continuous on $I$:
#### B1) $f(x)=x^{1/3}$, $I=(0,\infty)$
For any $\varepsilon>0$ and $x-y\in(0,\varepsilon)$,
$$
x^{1/3}-y^{1/3}=\frac{x-y}{x^{2/3}+x^{1/3}y^{1/3}+y^{2/3}}\leqslant \frac{\varepsilon}{\varepsilon ^{2/3}}=\varepsilon ^{1/3}.
$$
Hence $f(x)$ is uniformly continuous on $I$.
#### B2) $f(x)=\log x$, $I=(0,1)$
For any $\varepsilon>0$ and $x-y\in(0,\varepsilon)$,
$$
\log x-\log y=\log \left( 1+\frac{x-y}{y} \right).
$$
When $y\to 0$ and $x-y$ is constant, $\log x-\log y\to \infty$, hence $\log x$ is not uniformly continuous on $I$.
#### B3) $f(x)=\cos x^{-1}$, $I=(0,1)$ 
Note that for $x_{n}=1/(2n\pi)$ and $y_{n}=1/(2n\pi+\pi)$, $f(x_{n})=1$ and $f(y_{n})=-1$. Hence for $\varepsilon=1$ and any $\delta>0$, there exists $n$ such that $\lvert x_{n}-y_{n} \rvert<\delta$ but $\lvert f(x_{n})-f(y_{n}) \rvert=2>\varepsilon$. Therefore $f$ is not uniformly continuous on $I$.
#### B4) $f(x)=x\cos x^{-1}$, $I=(0,\infty)$
For $x>y>1$ and $\lvert x-y \rvert<\varepsilon$,
$$
\begin{align}
\lvert x\cos x^{-1}-y\cos y^{-1} \rvert &\leqslant \lvert x-y \rvert \lvert \cos x^{-1} \rvert +\lvert y \rvert \cdot \lvert \cos x^{-1}-\cos y^{-1} \rvert  \\
&\leqslant \varepsilon+2\lvert y \rvert \cdot \lvert \sin (x^{-1}+y^{-1}) /2\sin(x^{-1}-y^{-1}) /2 \rvert \leqslant \varepsilon+ \frac{y}{2}\left( \frac{1}{y^{2}}-\frac{1}{x^{2}} \right)\leqslant 2\varepsilon.
\end{align}
$$
For $1>x>y$ and $\lvert x-y \rvert<\varepsilon$,
$$
\lvert x\cos x^{-1}-y\cos y^{-1} \rvert \leqslant \lvert x \rvert +\lvert y \rvert <2\varepsilon.
$$
Hence $f$ is uniformly continuous on $I$.
## PSC: Existence of Limits
#### C1) $\alpha>0$,
$$
\lim_{ x \to 1 } \frac{\log x}{(x-1)^{\alpha}}=\lim_{ t \to 0 } \frac{\log(1+t)}{t^{\alpha}}=\lim_{ t \to 0 } t^{1-\alpha}
$$
exists iff $\alpha\leqslant 1$.
#### C2) $\alpha>0$,
$$
\lim_{ x \to 1 } \frac{e^{x}-e}{(x-1)^{\alpha}}=e\lim_{ t \to 0 } \frac{e^{t}-1}{t^{\alpha}}=\lim_{ t \to 0 } et^{1-\alpha}.
$$
exists iff $\alpha\leqslant 1$.
#### C3) $\alpha>0$,
$$
\lim_{ x \to 1 } \frac{x^{x}-1}{(x-1)^{\alpha}}=\lim_{ x \to 1 } \frac{x^{x}(\log x+1)}{\alpha(x-1)^{\alpha-1}}
$$
exists iff $\alpha\leqslant 1$.
#### C4) $\alpha>0$,
$$
\lim_{ x \to 1 } \frac{\sqrt[3]{ 1-\sqrt{ x } }}{(x-1)^{\alpha}}
$$
exists iff $\alpha\leqslant 1 /3$.
#### C5) 
$$
\lim_{ x \to 0 } \frac{\sqrt{ 1+x^{2} }-1}{1-\cos x}=1.
$$
#### C6)
$$
\lim_{ x \to 0 } \frac{\sqrt{ 1+x^{4} }-1}{1-\cos ^{2}x}=0.
$$
#### C7) $\alpha>0$,
$$
\lim_{ x \to 1 } \frac{(x-1)^{\alpha}}{\sin(\pi x)}
$$
exists iff $\alpha\geqslant 1$.
## PSD: Problems on Uniform Continuity
#### D1) If $f$ is continuous, monotonic and bounded on the open interval $I$, then $f$ is uniformly continuous on $I$.
Proof: Otherwise if there exists $\varepsilon>0$ such that for any $\delta>0$ there exists $\lvert x-y \rvert<\delta$ such that $\lvert f(x)-f(y) \rvert>\varepsilon$. We define $x_{n},y_{n}$ inductively as follows: Let $L=\min\{ x_{1},\cdots,x_{n-1} \}$, $R=\max\{ y_{1},\cdots,y_{n-1} \}$. Since $f$ is uniformly continuous on $[L,R]$, there exists $\delta>0$ such that for any $\lvert s-t \rvert<\delta$, $\lvert f(s)-f(t) \rvert<\varepsilon$. Hence there exists $x<y$ such that $x,y\not\in[L,R]$, $\lvert x-y \rvert<\delta$ and $\lvert f(x)-f(y) \rvert>\varepsilon$. Let $x_{n}=x,y_{n}=y$, then $(x_{n},y_{n})$ are disjoint intervals and $\lvert f(x_{n})-f(y_{n}) \rvert>\varepsilon$. Which contradicts the fact that $f$ is monotonic and bounded. Therefore $f$ is uniformly continuous on $I$.
#### D2) $I$ is an interval with finite length. Prove that the function $f$ on $I$ is uniformly continuous iff for any Cauchy sequence $\{ x_{n} \}_{n\geqslant 1}\subset I$, $\{ f(x_{n}) \}_{n\geqslant 1}$ is also a Cauchy sequence.
($f$ should be continuous, otherwise after changing the value of $f$ at one point, $\{ f(x_{n}) \}$ remains a Cauchy sequence.)
Proof: ==> If $\{ x_{n} \}_{n\geqslant 1}$ is a Cauchy sequence, then for any $\varepsilon>0$ there exists $\delta>0$ such that for all $\lvert x-y \rvert<\delta$, $\lvert f(x)-f(y) \rvert<\varepsilon$. There exists $N$ such that for all $n,m>N$, $\lvert a_{n}-a_{m} \rvert<\delta$, hence $\lvert f(a_{n})-f(a_{m}) \rvert<\varepsilon$, so $\{ f(x_{n}) \}_{n\geqslant 1}$ is a Cauchy sequence.
<== If $I=(a,b)$ is open we can take $x_{n}\to a$ and define $f(a)=\lim_{ n \to \infty }f(x_{n})$, hence we can assume that $I$ is closed. Therefore $f$ is uniformly continuous.
#### D3) $f$ is uniformly continuous on $\mathbb{R}$. Prove that there exists $a,b\in \mathbb{R}_{>0}$ such that for any $x\in \mathbb{R}$,
$$
\lvert f(x) \rvert \leqslant a\lvert x \rvert +b.
$$
Proof: For $\varepsilon=1$, there exists $\delta>0$ such that $\lvert x-y \rvert<\delta\implies \lvert f(x)-f(y) \rvert<1$. Hence let $C=\sup_{x\in[0,\delta]}{\lvert f(x) \rvert}$, then $\lvert f(x) \rvert\leqslant C+\lvert x \rvert\cdot (\frac{1}{\delta}+1)$.
#### D4) Suppose $f$ is uniformly continuous on $[0,\infty)$ and for any $x\in[0,1]$, $\lim_{ n \to \infty }f(x+n)=0$. Prove that
$$
\lim_{ x \to \infty } f(x)=0.
$$
If we change the condition to $f$ is continuous, will the statement still hold?
Proof: For any $\varepsilon>0$, there exists $\delta>0$ such that $\lvert x-y \rvert<\delta\implies \lvert f(x)-f(y) \rvert<\varepsilon$. Let $N=\lfloor 1 /\delta \rfloor+1$, then for any $1\leqslant n\leqslant N$, there exists $M_{n}$ such that for all $m>M_{n}$, $\lvert f(m+n /N) \rvert<\varepsilon$. Let $M=\max\{ M_{1},\cdots,M_{N} \}$, then for all $x>M$, there exists $m\in \mathbb{Z}_{>M}$ and $1\leqslant n\leqslant N$ such that $\lvert x-m-n /N \rvert<\delta$. Hence
$$
\lvert f(x) \rvert \leqslant \varepsilon+\lvert f(m+n /N) \rvert <2\varepsilon.
$$
Therefore $\lim_{ x \to \infty }f(x)=0$.
#### D5) Suppose $X$ is an interval, $f:X\to \mathbb{R}$ is continuous. If there is a constant $L>0$ such that for any $x,y\in X$,
$$
\lvert f(x)-f(y) \rvert \leqslant L\lvert x-y \rvert .
$$
We say $f$ satisfy the Lipschitz condition on $X$.
1. Prove that $f$ satisfy the Lipschitz condition implies $f$ is uniformly continuous.
Proof: For any $\varepsilon>0$, let $\delta=\varepsilon /L$, then for any $\lvert x-y \rvert<\delta$, $\lvert f(x)-f(y) \rvert\leqslant L\lvert x-y \rvert<\varepsilon$.
2. Determine whether the reversed statement holds.
Consider the function $f(x)=x^{1/2}$, then $f$ is uniformly continuous but $\frac{f(x)-f(y)}{x-y}=\frac{1}{\sqrt{ x }+\sqrt{ y }}$ is unbounded, hence does not satisfy the Lipschitz condition.
3. If $f$ satisfy the Lipschitz condition on $[a,\infty)$, where $a>0$, prove that $f(x) /x$ is uniformly continuous on $[a,\infty)$.
Proof: Same as D3), there exists $C$ such that $\lvert f(x) \rvert\leqslant C\lvert x \rvert$ for $x\in[a,\infty)$, then for $a<x<y$,
$$
\begin{align}
\left\lvert  \frac{f(x)}{x}-\frac{f(y)}{y}  \right\rvert &= \frac{\lvert xf(y)-yf(x) \rvert }{xy}\leqslant \frac{x\lvert f(y)-f(x) \rvert +\lvert f(x) \rvert (y-x)}{xy}  \\
&\leqslant \frac{L+C}{y}\cdot \lvert x-y \rvert .
\end{align}
$$
Hence $f(x)/x$ satisfy the Lipschitz condition.

## PSE:
Exactly the same as PSC in HW4?
## PSF: Calculate Limits
#### F1)
$$
\lim_{ x \to \pi } \frac{\sin mx}{\sin nx}= \frac{m(-1)^{m}}{n(-1)^{n}}.
$$
#### F2)
$$
\lim_{ x \to 0 } \frac{1-\cos x\sqrt{ \cos 2x }\sqrt[3]{ \cos 3x }}{x^{2}}=3.
$$
#### F3)
$$
\lim_{ x \to \infty } \sin \sqrt{ 1+x }-\sin \sqrt{ x }=0.
$$
Since the function $\sin x$ is uniformly continuous and $\lim_{ x \to \infty }\sqrt{ 1+x }-\sqrt{ x }=0$.
#### F4)
$$
\lim_{ x \to 0 } \frac{\sqrt{ 1+x\sin x }-1}{e^{x^{2}}-1}= \frac{1}{2}.
$$
Since $\lim_{ x \to 0 }x^{2} /(e^{x^{2}}-1)=1$, $\lim_{ x \to 0 }x\sin x /x^{2}=1$ and $\lim_{ x \to 0 }1 /(1+\sqrt{ 1+x\sin x })=1 /2$.
#### F5)
$$
\lim_{ n \to \infty } \sin ^{(n)}(x)=0.
$$
Since the sequence $\{ a_{n}=\sin ^{(n)}(x) \}_{n\geqslant 1}$ is decreasing and bounded by $0$, and its limit $A$ satisfy $A=\sin A$. Therefore $\lim_{ n \to \infty }\sin ^{(n)}(x)=0$.

## Problem G
The continuous function $f:\mathbb{R}\to \mathbb{R}$ satisfy the following property: for any $\delta>0$, 
$$
\lim_{ n \to \infty } f(n\delta)=0.
$$
Prove that $\lim_{ x \to \infty }f(x)=0$.
Proof: Consider any $\varepsilon>0$. For any $N\in \mathbb{N}$, 
$$
A_{N}=\{ \delta>0:\forall n\geqslant N, \lvert f(n\delta) \rvert <\varepsilon \}.
$$
Then by the continuity of $f$, $A_{N}$ is closed, and by $\lim_{ n \to \infty }f(n\delta)=0$ for any $\delta>0$, $\bigcup_{N\geqslant 1}A_{N}=\mathbb{R}_{>0}$. Hence by Baire Category Theorem, there exists an $N>0$ such that $(a,b)\subset A_{N}$ for some interval $(a,b)$. Let $X=\{ x\in \mathbb{R}_{>0}:\lvert f(x) \rvert<\varepsilon \}$, then since $(a,b)\subset A_{N}$, for any $n\geqslant N$, $(na,nb)\subset X$. Note that when $n>b /(b-a)$, $nb>(n+1)a$, hence there exists $M>0$ such that $(M,\infty)\subset X$. Therefore $\lim_{ x \to \infty }f(x)=0$.
## Problem H
The continuous function $\varphi:\mathbb{R}\to \mathbb{R}$ satisfy the following properties:
1) $\lim_{ x \to \infty }(\varphi(x)-x)=\infty$.
2) $\{ x\in \mathbb{R}:\varphi(x)=x \}$ is a non-empty finite set.

Prove that if $f:\mathbb{R}\to \mathbb{R}$ is continuous and $f\circ\varphi=f$, then $f$ is constant.
(Probably need the condition $\lim_{ x \to -\infty }\varphi(x)-x=-\infty$).
Proof: Suppose $\{ x\in \mathbb{R} :\varphi(x)=x\}=\{ a_{1},\cdots,a_{n} \}$ where $a_{1}<\cdots<a_{n}$. For any $x\in \mathbb{R}$, we will show that $f(x)\in \{ f(a_{1}),\cdots,f(a_{n}) \}$ hence $f$ is constant. 
If $a_{i}<x<a_{i+1}$. Suppose $\varphi(x)>x$, then let $x_{0}=x$, and inductively define $x_{k}$ as a point in $(a_{k},x_{k-1})$ such that $\varphi(a_{i})=a_{i}<\varphi(x_{k})=x_{k-1}<\varphi(x_{k-1})$. Since $\varphi$ is continuous and $a_{1},\cdots,a_{n}$ are all the roots of $\varphi(x)=x$, we know that $\varphi(x_{k})>x_{k}$ for all $k\geqslant 0$. The sequence $\{ x_{k} \}_{k\geqslant 0}$ is decreasing and bounded by $a_{i}$, hence has a limit $A$. From $\varphi(x_{k})=x_{k-1}$ we know that $\varphi(A)=A$, so $A=a_{i}$. Note that $f(x_{k})=f(\varphi(x_{k}))=f(x_{k-1})$, hence $f(x)=f(x_{k})=\lim_{ k \to \infty }f(x_{k})=f(a_{i})$. The case $\varphi(x)<x$ is the same, by constructing a sequence which tends to $a_{i+1}$.
If $x>a_{n}$, then $\varphi(x)>x$, likewise we can construct a sequence $x_{k}$ such that $x_{k-1}=\varphi(x_{k})$ and $\lim_{ k \to \infty }x_{k}=a_{n}$. The case $x<a_{1}$ is the same.
Hence for all $x\in \mathbb{R}$, $f(x)\in \{ f(a_{1}),\cdots,f(a_{n}) \}$.

## Problem I

The continuous function $f:\mathbb{R}_{\geqslant 0}\to \mathbb{R}$ satisfy $\lim_{ x \to \infty }f(x) /x=0$. Suppose $\{ a_{n} \}_{n\geqslant 1}$ is a sequence of non-negative real numbers and the sequence $\{ a_{n} /n \}_{n\geqslant 1}$ is bounded. Prove that $\lim_{ n \to \infty }f(a_{n}) /n=0$.
Proof: Suppose $\{ a_{n} /n \}$ is bounded by $M$.
For any $\varepsilon>0$, we need to find $N$ such that $n\geqslant N\implies \lvert f(a_{n}) \rvert<\varepsilon n$. For $C>0$, we can divide $n$ into two parts: If $a_{n}\leqslant C$, then $\lvert f(a_{n}) \rvert\leqslant \sup_{x\in[0,C]}{\lvert f(x) \rvert}$, otherwise $a_{n}\geqslant C$, then $\lvert f(a_{n}) \rvert\leqslant \sup_{x\geqslant C}{\lvert f(x) /x \rvert}\cdot Mn$. Therefore, if we choose $C>0$ such that $\sup_{x\geqslant C}{\lvert f(x) /x \rvert}< \varepsilon /M$, and choose $N$ such that $N>\sup_{x\in[0,C]}{\lvert f(x) \rvert} /\varepsilon$, then for any $n\geqslant N$, $\lvert f(a_{n}) \rvert<\varepsilon n$, hence
$$
\lim_{ n \to \infty } \frac{f(a_{n})}{n}=0.
$$
## Ex: Proof of the infinity of primes using topology
Proof: Assume otherwise that the set $\mathcal{P}$ of primes is finite. Let $L_{a,b}=\{ at+b: t\in \mathbb{Z} \},\forall (a,b)\in I=\mathbb{Z}_{>0}\times \mathbb{Z}$. Then 
$$
\mathbb{Z}\subset\bigcup_{b\in \mathbb{Z}}L_{1,b}\subset \bigcup_{(a,b)\in I}L_{a,b}\subset \mathbb{Z}\implies \bigcup_{(a,b)\in I}L_{a,b}=\mathbb{Z}.
$$
and for any $x\in \bigcap_{i=1}^{n}L_{a_{i},b_{i}}$, let $a=\mathrm{lcm}(a_{1},\cdots,a_{n})$, then 
$$
x \in L_{a,x} \subset \bigcap_{i=1}^{n}L_{a_{i},b{i}}.
$$
Hence $L_{a,b}$ form a base.Consider the topology $\mathcal{T}$ on $\mathbb{Z}$ generated by the base $\{ L_{a,b}:(a,b)\in I\}$. Note that 
$$
L_{a,b}=\mathbb{Z}\backslash \bigcup_{r=1}^{a-1}L_{a,b+r}
$$
so $L_{a,b}$ is also closed. Since $\mathcal{P}$ is finite, the set 
$$
\bigcup_{p\in \mathcal{P}} L_{p,0} =\mathbb{Z}\backslash\{ -1,1 \}
$$
is closed, hence $\{ -1,1 \}$ is open. However, an open set $G$ is the union of $L_{a,b}$ which is infinite, so $G$ is infinite, leading to contradiction.

>Quote:
>As for everything else, so for a mathematical theory: beauty can be perceived but not explained.
>——A. Cayley

# HW6 Takagi Function
## PSA: Calculating Derivatives
#### A1) Consider the function
$$
f:\mathbb{R}\to \mathbb{R}^{n},\,x\mapsto f(x)=(f_{1}(x),\cdots,f_{n}(x)).
$$
Prove that $f$ is differentiable at $x_{0}$ iff every $f_{k}$ is differentiable at $x_{0}$ and
$$
f^{\prime}(x)=(f_{1}^{\prime}(x),\cdots,f_{n}^{\prime}(x)).
$$
Proof: For any $h\in \mathbb{R}$, 
$$
\| \frac{f(x+h)-f(x)}{h}-(f_{1}^{\prime}(x),\cdots,f_{n}^{\prime}(x))\|_{2}\leqslant n\max_{1\leqslant k\leqslant n}\left\{  \left\lvert  \frac{f_{k}(x+h)-f_{k}(x)}{h}-f_{k}^{\prime}(x)  \right\rvert   \right\}\to 0.
$$
Therefore $f^{\prime}(x)=(f_{1}^{\prime}(x),\cdots,f_{n}^{\prime}(x))$.
#### A2) Consider the function
$$
f:\mathbb{R}\to \mathbb{C},\,x\mapsto e^{ix}.
$$
Prove by definition, $f^{\prime}(0)=i$ and $(e^{ix})^{\prime}=ie^{ix}$.
Proof: For any $h\in \mathbb{R}$, 
$$
\left\lvert  \frac{f(h)-f(0)}{h}-i  \right\rvert =\left\lvert  \frac{e^{ih}-ih-1}{h}  \right\rvert \leqslant \sum_{n=2}^{\infty}{ \left\lvert  \frac{1}{h} \frac{(ih)^{n}}{n!}  \right\rvert }\leqslant \lvert h \rvert \to 0.
$$
Therefore $f^{\prime}(0)=i$. For any $x\in \mathbb{R}$, 
$$
\lim_{ h \to 0 } \frac{f(x+h)-f(x)}{h}=\lim_{ h \to 0} e^{ix} \frac{f(h)-f(0)}{h}=ie^{ix}. 
$$
Hence $(e^{ix})^{\prime}=ie^{ix}$.
#### A3) Calculate the derivatives of $\sin x$ and $\cos x$.
Solution: $\sin x=(e^{ix}-e^{-ix}) /2i$, so $(\sin x)^{\prime}=(e^{ix}+e^{-ix}) /2=\cos x$. Likewise $(\cos x)^{\prime}=-\sin x$.
#### A4) Prove Faà di Bruno’s formula for $n=3$.
Proof: 
$$
\begin{align}
\frac{\mathrm{d}}{\mathrm{d}x}(f\circ g)&=f^{\prime}(g)\cdot g^{\prime}. \\
\frac{\mathrm{d^{2}}}{\mathrm{d}x^{2}}(f\circ g)&=f^{\prime}(g)\cdot g^{\prime\prime}+f^{\prime\prime}(g)\cdot (g^{\prime})^{2}. \\
\frac{\mathrm{d}^{3}}{\mathrm{d}x^{3}}(f\circ g)&= f^{\prime}(g)\cdot g^{\prime\prime\prime}+f^{\prime\prime}(g)\cdot g^{\prime\prime}\cdot g^{\prime}+f^{\prime\prime\prime}(g)\cdot (g^{\prime})^{3}+f^{\prime\prime}(g)\cdot 2g^{\prime}g^{\prime\prime}.
\end{align}
$$
#### A5) Define the map
$$
E:\mathbb{R}\to \mathbb{C}=\mathbb{R}^{2},\,\theta\mapsto(\cos\theta,\sin\theta).
$$
Prove that the points in $\mathbf{S}^{1}=\{ (x,y)\in \mathbb{R}^{2}:x^{2}+y^{2}=1 \}$ can be written in the form $(\sin\theta,\cos\theta)$, i.e. $E(\mathbb{R})=\mathbf{S}^{1}$. Calculate $E^{\prime}(\theta)$ and show that Rolle’s mean-value theorem is invalid for $E$.
Proof: Obviously $E(\mathbb{R})\subset \mathbf{S}^{1}$. Consider any $(x,y)\in \mathbf{S}^{1}$, then $x\in[-1,1]$. Note that $\cos 0=1, \cos\pi=-1$, hence there exists $\theta \in[0,\pi]$ such that $\cos\theta=x$, and $\lvert \sin\theta \rvert=\lvert y \rvert$. If $\sin\theta=y$ then $(x,y)=(\cos\theta,\sin\theta)\in E(\mathbb{R})$. Otherwise $(x,y)=(\cos (-\theta),\sin(-\theta))\in E(\mathbb{R})$, therefore $E(\mathbb{R})=\mathbf{S}^{1}$.
By A1) and A3), $E^{\prime}(\theta)=(-\sin\theta,\cos\theta)$. Since $E^{\prime}(\theta)\neq 0$ for all $\theta \in \mathbb{R}$ and $E^{\prime}(\theta)=E^{\prime}(\theta+2\pi)$, Rolle’s mean-value theorem is invalid.

#### A6) Calculate the derivatives of the following functions:
(1) $f(x)=a^{x}$, $a>0$.
$$
f^{\prime}(x)=(e^{x\log a})^{\prime}=a^{x}\log a.
$$
(2) $f(x)=\arcsin x$.
Let $y=\arcsin x$, then $x=\sin y$, so $1=\cos y\cdot y^{\prime}$, hence
$$
f^{\prime}(x)=\frac{1}{\cos(\arcsin x)}= \frac{1}{\sqrt{ 1-x^{2} }}.
$$
(3) $f(x)=\arctan x$.
Let $y=\arctan x$, then $x=\tan y$, so $1=\sec ^{2}y\cdot y^{\prime}$, hence
$$
f^{\prime}(x)= \cos ^{2}y= \frac{1}{1+x^{2}}.
$$
(4) $f(x)=x^{x^{x}}$, $x>0$.
Let $y=x^{x}, z=x^{y}$, then $\log y=x\log x$, so $y^{\prime} /y=\log x+1$, $y^{\prime}=x^{x}(1+\log x)$. $\log z=y\log x$, so $z^{\prime} /z=y^{\prime}\log x+y /x=x^{x}\log x(1+\log x)+x^{x-1}$. Therefore
$$
f^{\prime}(x)=x^{x^{x}}\cdot x^{x} \cdot (\log x+\log ^{2}x+x^{-1}).
$$
(5) $f(x)=\log(\log(\log x))$.
$$
f^{\prime}(x)= \frac{(\log \log x)^{\prime}}{\log \log x}= \frac{1}{x\log x\log \log x}.
$$
(6) $f(x)=\sqrt{ x+\sqrt{ x+\sqrt{ x } } }$.
$$
\begin{align}
f^{\prime}(x)&= \frac{(x+\sqrt{ x+\sqrt{ x } })^{\prime}}{2\sqrt{ x+\sqrt{ x+\sqrt{ x } } }}= \left( 1+\frac{1+\frac{1}{2\sqrt{ x }}}{2\sqrt{ x+\sqrt{ x } }} \right) /2\sqrt{ x+\sqrt{ x+\sqrt{ x } } } \\
&= \frac{2\sqrt{ x+\sqrt{ x } }+1+1 /2\sqrt{ x }}{4\sqrt{ x+\sqrt{ x } }\sqrt{ x+\sqrt{ x+\sqrt{ x } } }}.
\end{align}
$$
(7) $f(x)=\lvert x \rvert$.
If $x>0$, $f^{\prime}(x)=(x)^{\prime}=1$. If $x<0$, $f^{\prime}(x)=(-x)^{\prime}=-1$. If $x=0$, $f$ is not differentiable at $x$.
(8) $f(x)=\log \lvert x \rvert$.
If $x>0$, $f^{\prime}(x)=\frac{1}{x}$. If $x<0$, $f^{\prime}(x)=-\frac{1}{x}$. If $x=0$, $f$ is not differentiable at $x$.
(9) 
$$
f(x)=\begin{cases}
x^{n}\sin \frac{1}{x}, & x\neq 0, \\
0, & x=0.
\end{cases}
\,\,\,\, n=1,2,\cdots
$$
For $x\neq 0$, $f^{\prime}(x)= nx^{n-1}\sin \frac{1}{x}- x^{n-2} \cos \frac{1}{x}$. When $x=0$,
$$
f^{\prime}(0)=\lim_{ h \to 0 } h^{n-1}\sin \frac{1}{h}=\begin{cases}
0, & n\geqslant 2; \\
\text{diverges}, & n=1.
\end{cases}
$$
#### A7) Calculate $f^{(3)}(x)$:
(1) $f(x)=\log(x+1)$.
$$
\frac{\mathrm{d}^{3}}{\mathrm{d}x^{3}} \log(x+1)= \frac{2}{(x+1)^{3}}.
$$
(2) $f(x)=x^{-1}\log x$.
$$
\frac{\mathrm{d}^{3}}{\mathrm{d}x^{3}} \frac{\log x}{x}= \frac{11-6\log x}{x^{4}}.
$$
(3) $f(x)=\frac{x^{m}}{1-x}$, $m\in \mathbb{Z}_{\geqslant 0}$.
$$
\frac{\mathrm{d}^{3}}{\mathrm{d}x^{3}} \frac{x^{m}}{1-x}=\frac{(m-2)(m-1)mx^{m-3}}{1-x}+ \frac{3(m-1)mx^{m-2}}{(1-x)^{2}}+ \frac{6mx^{m-1}}{(1-x)^{3}}+\frac{6x^{m}}{(1-x)^{4}}.
$$
(4) $f(x)=x^{m}e^{x}$, $m\in \mathbb{Z}_{\geqslant 0}$.
$$
\frac{\mathrm{d}^{3}}{\mathrm{d}x^{3}}(x^{m}e^{x})=e^{x}x^{m-3}(m^{3}+3m^{2}(x-1)+m(3x^{2}-3x+2)+x^{3}).
$$
(5) $f(x)=e^{ax}\sin(bx)$, $a,b\in \mathbb{R}$.
$$
\frac{\mathrm{d}^{3}}{\mathrm{d}x^{3}}(e^{ax}\sin(bx))=e^{ax}((3a^{2}b-b^{3})\cos(bx)+a(a^{2}-3b^{2})\sin(bx)).
$$
(6) $f(x)=e^{-x^{2}}$.
$$
\frac{\mathrm{d}^{3}}{\mathrm{d}x^{3}}e^{-x^2}=-4e^{-x^{2}}x(2x^{2}-3).
$$
#### A8) $f^{\prime}(x_{0})>0$ does not imply $f$ is increasing in a neighborhood of $x_{0}$: consider
$$
f(x)=\begin{cases}
x+2x^{2} \sin \frac{1}{x}, & x\neq 0; \\
0, & x=0.
\end{cases}
$$
Prove that $f^{\prime}(0)>0$ but for any $\varepsilon>0$, $f$ is not monotonic on $(-\varepsilon,\varepsilon)$.
Proof:
$$
f^{\prime}(0)=\lim_{ h \to 0 } 1+2h\sin \frac{1}{h}=1>0.
$$
However, for any $n\in \mathbb{N}$, let $x_{n}=\frac{1}{(2n+1 /2)\pi}$, $y_{n}=\frac{1}{(2n-1 /2)\pi}$, then
$$
f(x_{n})=x_{n}+2x_{n}^{2},\,f(y_{n})=y_{n}-2y_{n}^{2}.
$$
Note that $0<x_{n}<y_{n}$, but
$$
f(x_{n})-f(y_{n})=2x_{n}^{2}+2y_{n}^{2}-\pi x_{n}y_{n}>0,
$$
i.e. $f(x_{n})>f(0),f(y_{n})$, therefore $f$ is not monotonic on any $(-\varepsilon,\varepsilon)$.
#### A9) $A\in \mathbf{M}_{n}(\mathbb{R})$, calculate
$$
\frac{\mathrm{d}}{\mathrm{d}x}\Big\vert_{x=0} \det(\mathbf{I}_{n}+xA).
$$
Solution: Let $\Phi(x)=I_{n}+xA$, then $\Phi(0)=I_{n}$. Denote $\Phi(t)=(\varphi_{1}(t),\cdots,\varphi_{n}(t))$. Note that $\det$ is a multi-linear function for $n$ rows, hence by Euler’s formula: 
$$
\frac{\mathrm{d}}{\mathrm{d}t}\det\Phi(t)= \det (\varphi^{\prime}_{1}(t),\varphi_{2}(t),\cdots,\varphi_{n}(t))+\cdots+\det(\varphi_{1}(t),\varphi_{2}(t),\cdots,\varphi_{n}^{\prime}(t)).
$$
When $t=0$, the formula becomes
$$
\frac{\mathrm{d}}{\mathrm{d}t}\Big\vert_{t=0}\det\Phi(t)=\varphi^{\prime}_{1,1}+\cdots+\varphi^{\prime}_{n,n}=\mathrm{tr}{\,\Phi^{\prime}}(0)=\mathrm{tr} A.
$$
#### A10) Prove that the derivation of odd functions are even, and that of even functions are odd.
Proof: If $f$ is an odd function then
$$
f^{\prime}(-x)=\lim_{ h \to 0 } \frac{f(-x+h)-f(-x)}{h}=\lim_{ h \to 0 } \frac{f(x)-f(x-h)}{h}=f^{\prime}(x),
$$
so $f^{\prime}$ is even. If $f$ is an even function then
$$
f^{\prime}(-x)=\lim_{ h \to 0 } \frac{f(-x+h)-f(-x)}{h}=-\lim_{ h \to 0 } \frac{f(x)-f(x-h)}{h}=-f^{\prime}(x),
$$
so $f^{\prime}$ is odd.
#### A11) Prove that 
$$
f(x)=\begin{cases}
1 /q, & x=\frac{p}{q}\in \mathbb{Q},q\geqslant 1,\gcd(p,q)=1; \\
0, & x\in \mathbb{Q}^{C}.
\end{cases}
$$
is nowhere differentiable on $\mathbb{R}$.
Proof: For any $x\in \mathbb{Q}$, $f(x)\neq 0$, but for any $\varepsilon>0$, there exists $y\in(x-\varepsilon,x+\varepsilon)\cap \mathbb{Q}^{C}$, such that $f(y)=0$. Therefore $f$ is not continuous at $x$, and clearly not differentiable.
Consider any $x\in \mathbb{Q}^{C}$, there is a sequence of irrational numbers $\{ y_{n} \}_{n\geqslant 1}$ that converges to $x$, then
$$
\lim_{ n \to \infty } \frac{f(x)-f(y_{n})}{x-y_{n}}=0.
$$
Choose any sequence of rational numbers $\{ r_{n}=p_{n} /q_{n} \}_{n\geqslant 1}$ that converges to $x$, then
$$
\lim_{ n \to \infty } \frac{f(x)-f(r_{n})}{x-r_{n}}=\lim_{ n \to \infty } \frac{1}{xq_{n}-p_{n}}=\infty.
$$
Therefore $f$ is nowhere differentiable on $\mathbb{R}$.
## PSB
#### B1) Define the hyperbolic functions:
$$
\sinh x= \frac{e^{x}-e^{-x}}{2},\, \cosh x= \frac{e^{x}+e^{-x}}{2},\,\tanh x= \frac{\sinh x}{\cosh x}.
$$
1. Prove that
	(1) $\cosh ^{2}x-\sinh ^{2}x=1$
	Proof:$\displaystyle\cosh ^{2}x-\sinh ^{2}x= \frac{e^{2x}+e^{-2x}+2}{4}- \frac{e^{2x}+e^{-2x}-2}{4}=1$.
	(2) $\sinh(x+y)=\sinh x\cosh y+\cosh x\sinh y$.
	Proof: $\displaystyle \sinh x\cosh y+\cosh x\sinh y=\frac{e^{x+y}-e^{y-x}+e^{x-y}-e^{-x-y}}{4}+\frac{e^{x+y}-e^{x-y}+e^{y-x}-e^{-x-y}}{4}=\sinh(x+y)$
	(3) $\cosh(x+y)=\cosh x\cosh y+\sinh x\sinh y$.
	Proof: Same as (2).
	(4) $\displaystyle\tanh(x+y)=\frac{\tanh x+\tanh y}{1+\tanh x\tanh y}$.
	Proof: $\displaystyle \tanh(x+y)=\frac{\sinh x\cosh y+\cosh x\sinh y}{\cosh x\cosh y+\sinh x\sinh y}=\frac{\tanh x+\tanh y}{1+\tanh x\tanh y}$.
2. Calculate $\sinh^{\prime}(x)$, $\cosh^{\prime}(x)$ and $\tanh^{\prime}(x)$.
	Solution: $\sinh^{\prime}(x)=\cosh x$, $\cosh^{\prime}(x)=\sinh x$, $\displaystyle\tanh^{\prime}(x)=\frac{1}{\cosh ^{2}x}$.
3. Prove that $\sinh:\mathbb{R}\to \mathbb{R}$ has an inverse $\mathrm{arcsinh}:\mathbb{R}\to \mathbb{R}$ and calculate $\mathrm{arcsinh}^{\prime}(x)$.
	Proof: $\sinh^{\prime}(x)=\cosh x>0$, so $\sinh$ is monotonically increasing over $\mathbb{R}$. Also $\lim_{ x \to \infty }\sinh x=\infty$, $\lim_{ x \to -\infty }\sinh x=-\infty$, therefore $\sinh:\mathbb{R}\to \mathbb{R}$ is a bijection and hence has an inverse. 
	$\mathrm{arcsinh}^{\prime}(x)=\frac{1}{\sqrt{ 1+x^{2} }}$.

#### B2) $a,b\in \mathbb{R}$, $a>0$. Consider $f:[-1,1]\to \mathbb{R}$, where
$$
f(x)=\begin{cases}
x^{a}\sin(x^{-b}), & x\neq 0, \\
0, & x=0.
\end{cases}
$$
Prove that
1. $f\in C([-1,1])$ iff $a>0$;
 Proof: $f\in C([-1,1])$ iff $\lim_{ x \to 0 }x^{a}\sin(x^{-b})=0$. If $a>0$ then $\lvert x^{a}\sin(x^{-b}) \rvert\leqslant \lvert x \rvert^{a}\to 0$. If $a< 0$ then let $x=((2n+1 /2)\pi)^{-1/b}$, when $n\to \infty$, $x\to 0$ but $\lvert x^{a}\sin(x^{-b}) \rvert\to \infty$. If $a=0$, then let $x=((2n+1/2)\pi)^{-1/b}$, $\lvert x^{a}\sin(x^{-b}) \rvert=1$. Therefore $f\in C([-1,1])$ iff $a>0$.
2. $f$ is differentiable at $0$ iff $a>1$;
 Proof: $f$ is differentiable at $0$ iff $\lim_{ x \to 0 }x^{-a}\sin(x^{-b})$ exists. By 1 we know that $a>1$. ($a=1$ is invalid since $x=(2n\pi)^{-1/b}$ and $x=((2n+1 /2)\pi)^{-1/b}$ converge to different values.)
3. $f^{\prime}$ is bounded on $[-1,1]$ iff $a\geqslant 1+b$;
 Proof: $f^{\prime}(x)=ax^{a-1}\sin(x^{-b})+x^{a}\cos(x^{-b}) (-b)x^{-b-1}$ is bounded iff $x^{a-1}$ and $x^{a-b-1}$ are bounded, i.e. $a\geqslant 1+b$.
4. $f\in C^{1}([-1,1])$ iff $a>1+b$;
 Proof: $f\in C^{1}([-1,1])$ iff $f^{\prime}(0)=0=\lim_{ x \to 0 }f^{\prime}(x)$. By 1 we know it is equivalent to $a>1+b$.
5. $f^{\prime}$ is differentiable at $0$ iff $a>2+b$;
6. $f^{\prime\prime}$ is bounded on $[-1,1]$ iff $a\geqslant 2+2b$;
7. $f\in C^{2}([-1,1])$ iff $a>2+2b$.
 Proof: 5,6,7 are exactly the same as 2,3,4.

## PSC
If $f$ satisfy $\lim_{ x \to x_{0} }f(x)=0$ near $x_{0}$, we call $f$ an infinitesimal when $x\to x_{0}$. Likewise when $\lim_{ x \to x_{0} }f(x)=+\infty$ or $\lim_{ x \to x_{0} }f(x)=-\infty$, we call $f$ an infinite quantity when $x\to x_{0}$.
Suppose $f,g$ are both infinitesimal when $x\to x_{0}$, and $g(x)$ does not vanish near $x_{0}$. We introduce the notations
- if $\displaystyle \lim_{ x \to x_{0} } \frac{f(x)}{g(x)}=0$, we say $f$ is an infinitesimal of higher order than $g$, and denote $f(x)=o(g(x))$, $x\to x_{0}$;
- If $\displaystyle \lim_{ x \to x_{0} } \frac{f(x)}{g(x)}=\mathscr{l}\neq 0$, we say $f$ and $g$ are of the same order;
- If $\mathscr{l}=1$, denote $f\sim g$, $x\to x_{0}$;
- If $\limsup_{ x \to x_{0} } \left\lvert  \frac{f(x)}{g(x)}  \right\rvert<+\infty$, denote $f(x)=O(g(x))$, $x\to x_{0}$.

#### C1) Suppose $a(x)=o(1)$ when $x\to x_{0}$, prove that:
(1) $o(a)+o(a)=o(a)$
Proof: If $f,g=o(a)$, then 
$$
\lim_{ x \to x_{0} } \frac{f(x)+g(x)}{a(x)}=\lim_{ x \to x_{0} } \frac{f(x)}{a(x)}+\lim_{ x \to x_{0} } \frac{g(x)}{a(x)}=0,
$$
hence $f+g=o(a)$.
(2) $co(a)=o(ca)$, $c\in \mathbb{R}$
Proof: If $f=o(a)$, then
$$
\lim_{ x \to x_{0} } \frac{cf(x)}{a(x)}=c\lim_{ x \to x_{0} } \frac{f(x)}{a(x)}=0,
$$
hence $cf=o(a)=o(ca)$.
(3) $o(a)^{k}=o(a^{k})$
Proof: If $f=o(a)$ then
$$
\lim_{ x \to x_{0} } \frac{f(x)^{k}}{a(x)^{k}}=\left( \lim_{ x \to x_{0} } \frac{f(x)}{a(x)} \right)^{k}=0,
$$
hence $f^{k}=o(a^{k})$.
(4) $1/(1+a)=1-a+o(a)$
Proof:
$$
\lim_{ x \to x_{0} } \frac{1 /(1+a)-1+a}{a(x)}= \lim_{ x \to x_{0} } \frac{a(x)}{1+a(x)}=0,
$$
hence $1 /(1+a)=1-a+o(a)$.
#### C2) Suppose $f,g$ are infinitesimals when $x\to x_{0}$, then
1. Prove that $f \sim g\iff f(x)-g(x)=o(g(x))$, $x\to x_{0}$.
 Proof: $\displaystyle f\sim g\iff \lim_{ x \to x_{0} } \frac{f(x)}{g(x)}=1\iff \lim_{ x \to x_{0} } \frac{f(x)-g(x)}{g(x)}=0$, i.e. $f(x)-g(x)=o(g(x))$.
2. If $f\sim cg^{k}$, we call $cg^{k}$ the leading term of $f$. Find the leading terms of the following functions, compared to $x-x_{0}$ or $x$:
	(1) $1/\sin\pi x$, $x\to 1$.
	$\frac{1}{\sin\pi x}=- \frac{1}{\pi(x-1)}+o(1)$.
	(2) $\sqrt{ 1+x }-\sqrt{ 1-x }$, $x\to 0$.
	$\sqrt{ 1+x }-\sqrt{ 1-x }=x+o(x)$.
	(3) $\sin(\sqrt{ 1+\sqrt{ 1+\sqrt{ x } } }-\sqrt{ 2 })$, $x\to 0^{+}$.
	$\displaystyle= \frac{\sqrt{ 2 }x^{1/2}}{8}+o(x^{1/2})$.
	(4) $\sqrt{ 1+\tan x }-\sqrt{ 1-\sin x }$, $x\to 0$.
	$=x+o(x)$.
	(5) $\sqrt{ x+\sqrt{ x+\sqrt{ x } } }$, $x\to 0^{+}$.
	$=x^{1/8}+o(x^{1/8})$.
	(6) $\sqrt{ x+\sqrt{ x+\sqrt{ x } } }$, $x\to \infty$.
	=$\sqrt{ x }+o(\sqrt{ x })$.
3. Suppose $f\sim cx^{k}$, $x\to 0$, i.e. $f(x)=cx^{k}+o(x^{k})$. If $f(x)-c^{k}$ has a leading term $c^{\prime}x^{k^{\prime}}$, we denote $f(x)=cx^{k}+c^{\prime}x^{k^{\prime}}+o(x^{k^{\prime}})$. Expand the following terms to $o(x^{2})$:
	(1) $\sqrt{ 1+x }-1$.
	$\sqrt{ 1+x }-1=\frac{1}{2}x-\frac{1}{8}x^{2}+o(x^{2})$.
	(2) $(1+x)^{1/m}-1$, $m\in \mathbb{Z}_{\geqslant 1}$.
	$(1+x)^{1/m}-1=\frac{1}{m}x- \frac{m-1}{2m^{2}}x^{2}+o(x^{2})$.
## PST: Takagi Function
Define $\psi:[0,1]\to \mathbb{R}$ as
$$
\psi(x)=\begin{cases}
x, & 0\leqslant x<\frac{1}{2}; \\
1-x, & \frac{1}{2}\leqslant x\leqslant 1 .
\end{cases}
$$
For $x\in R$, let $\psi(x)=\psi(\{ x \})$, then $\psi \in C(\mathbb{R})$.
Define the Takagi function $T:\mathbb{R}\to \mathbb{R}$ as follows:
$$
T(x)=\sum_{k=0}^{\infty}{\frac{1}{2^{k}}\psi(2^{k}x)},
$$
and the partial sum $\displaystyle T_{n}(x)=\sum_{k=0}^{n}{\frac{1}{2^{k}}\psi(2^{k}x)}$.

#### T1) Prove that $T(x)$ is a well-defined bounded continuous function on $\mathbb{R}$.
Proof: Note that $\psi(x)\in[0,1 /2]$ so the series $\sum_{k=0}^{\infty}{2^{-k}\psi(2^{k}x)}$ converges absolutely, and hence $T(x)$ is well-defined and bounded by $T(x)\in[0,1]$.
#### T2) For $x\in[0,1]$, suppose $x=\sum_{n=1}^{\infty}{a_{n}2^{-n}}$ is the binary form of $x$. Let $v_{n}=\sum_{k=1}^{n}{a_{k}}$, and $\sigma_{n}(y)=a_{n}+(1-2a_{n})y$, where $y\in \{ 0,1 \}$. Prove that
$$
\psi(2^{m}x)=\sum_{n=1}^{\infty}{\frac{\sigma_{m+1}(a_{m+n})}{2^{n}}}.
$$
Proof: 
$$
\psi(2^{m}x)=\psi\left( \sum_{n=1}^{\infty}{a_{n}2^{m-n}} \right)=\psi\left( \sum_{n=m+1}^{\infty}{a_{n}2^{m-n}} \right)=\begin{cases}
\sum_{n=1}^{\infty}{ a_{m+n}2^{-n}}, & a_{m+1}=0; \\
1-\sum_{n=1}^{\infty}{a_{m+n}2^{-n}}, & a_{m+1}=1.
\end{cases}
$$
Therefore 
$$
\psi(2^{m}x)=\sigma_{n}\left( \sum_{n=1}^{\infty}{a_{m+n}2^{-n}} \right)=\sum_{n=1}^{\infty}{\sigma_{m+1}(a_{m+n})2^{-n}}.
$$
### T3) $x=\sum_{n=1}^{\infty}{a_{n}2^{-n}}\in[0,1]$, prove that
$$
T(x)=\sum_{n=1}^{\infty}{ \frac{(1-a_{n})v_{n}+a_{n}(n-v_{n})}{2^{n}}}.
$$
Proof: By T2),
$$
T(x)=\sum_{m=0}^{\infty}{\sum_{n=1}^{\infty}{\sigma_{m+1}(a_{m+n})2^{-m-n}}}=\sum_{n=1}^{\infty}{\sum_{m=0}^{n-1}{\sigma_{m+1}(a_{n})2^{-n}}}=\sum_{n=1}^{\infty}{\frac{(1-a_{n})v_{n}+a_{n}(n-v_{n})}{2^{n}}}.
$$
#### T4) Suppose $x_{0}=k_{0}2^{-m_{0}}\in[0,1]$, where $k_{0}\in \mathbb{Z}_{\geqslant 1}$ is odd, $m_{0}\in \mathbb{Z}_{\geqslant 0}$. Let $h_{n}=2^{-n}$, where $n\in \mathbb{Z}_{\geqslant m_{0}}$. Prove that the sequence $\left\{  \frac{T(x+h_{n})-T(x)}{h_{n}}  \right\}_{n\geqslant m_{0}}$ does not converge.
Proof: By T3), 
$$
\frac{T(x+h_{n})-T(x)}{h_{n}}=\frac{1}{h_{n}} \left( \frac{n-v_{n}}{2^{n}}-\frac{v_{n}}{2^{n}} \right)=n-2\sum_{k=1}^{n}{a_{k}}=n-2-2S_{2}(k_{0})\to \infty.
$$
#### T5) $f:I\to \mathbb{R}$, where $I$ is an open interval. If $f$ is differentiable at $a$, prove that
$$
\lim_{ (h,h^{\prime}) \to (0,0),h,h^{\prime}>0 } \frac{f(a+h)-f(a-h^{\prime})}{h+h^{\prime}}=f^{\prime}(a).
$$
i.e. it converges for any sequence $(h_{n},h^{\prime}_{n})\to(0,0),h_{n},h_{n}^{\prime}>0$.
Proof: Consider any sequence $(h_{n},h^{\prime}_{n})\to(0,0)$, then
$$
\frac{f(a+h)-f(a-h^{\prime})}{h+h^{\prime}}= \frac{f(a+h)-f(a)}{h}\cdot \frac{h}{h+h^{\prime}}+ \frac{f(a)-f(a-h^{\prime})}{h^{\prime}}\cdot \frac{h^{\prime}}{h+h^{\prime}}\to f^{\prime}(a).
$$
#### T6) Same as T5), if $f\in C^{1}(I)$, $a\in I$, prove that
$$
\lim_{ (h,h^{\prime}) \to (0,0),h+h^{\prime}\neq 0 } \frac{f(a+h)-f(a-h^{\prime})}{h+h^{\prime}}=f^{\prime}(a).
$$
Proof: For any $h+h^{\prime}\neq 0$, there exists $\xi \in[a,a+h]$ and $\eta \in[a-h^{\prime},a]$ such that $f(a+h)=f(a)+hf^{\prime}(\xi)$ and $f(a-h^{\prime})=f(a)-h^{\prime}f^{\prime}(\eta)$, then
$$
\left\lvert  \frac{f(a+h)-f(a-h^{\prime})}{h+h^{\prime}}-f^{\prime}(a)  \right\rvert \leqslant \frac{h}{h+h^{\prime}}\lvert f^{\prime}(\xi)-f^{\prime}(a) \rvert +\frac{h^{\prime}}{h+h^{\prime}}\lvert f^{\prime}(\eta)-f^{\prime}(a) \rvert \to 0.
$$
Hence
$$
\lim_{ (h,h^{\prime}) \to (0,0),h+h^{\prime}\neq 0 } \frac{f(a+h)-f(a-h^{\prime})}{h+h^{\prime}}=f^{\prime}(a).
$$
#### T7) Suppose $x\in[0,1]$, such that for any $n\in \mathbb{N}$, $2^{n}x\not\in \mathbb{Z}$. For every $n\in N$, define $\{ h_{n} \}_{n\geqslant 1}$ and $\{ h^{\prime}_{n} \}_{n\geqslant 1}$ as follows:
$$
\lfloor 2^{n}x \rfloor=2^{n}(x-h_{n}^{\prime}),\, \lfloor 2^{n}x \rfloor +1=2^{n}(x+h_{n}).
$$
Prove that for an arbitrary $n$, $h_{n}+h^{\prime}_{n}=2^{-n}$ and for every integer $1\leqslant \mathscr{l}\leqslant n-1$, the interval $(2^{\mathscr{l}}(x-h^{\prime}_{n}),2^{\mathscr{l}}(x+h_{n}))$ does not include integers or half-integers.
Proof: $1=2^{n}(x+h_{n})-2^{n}(x-h_{n}^{\prime})=2^{n}(h_{n}+h_{n}^{\prime})$, hence $h_{n}+h_{n}^{\prime}=2^{-n}$. For any integer $1\leqslant\mathscr{l}\leqslant n-1$, $2^{\mathscr{l}}(x-h^{\prime}_{n})=\lfloor 2^{n}x \rfloor\cdot 2^{\mathscr{l}-n}$ and $2^{\mathscr{l}}(x+h_{n})=(\lfloor 2^{n}x \rfloor+1)2^{\mathscr{l}-n}$. Since $n-\mathscr{l}\geqslant 1$, the interval does not include integers or half-integers.
#### T8) Follow the notations of T7), prove that the sequence $\left\{  \frac{T(x+h_{n})-T(x-h_{n}^{\prime})}{h_{n}+h_{n}^{\prime}}  \right\}_{n\geqslant 1}$ diverges.
Proof: Let $t=\lfloor 2^{n}x \rfloor$, then
$$
a_{n}=\frac{T(x+h_{n})-T(x-h_{n}^{\prime})}{h_{n}+h_{n}^{\prime}}=\sum_{k=0}^{n-1}{2^{n-k}\left( \psi\left( \frac{t+1}{2^{n-k}} \right)-\psi\left( \frac{t}{2^{n-k}} \right) \right)}.
$$
Since the interval $(2^{k-n}(t+1),2^{k-n}t)$ does not contain any integers or half-integers, $2^{n-k}(\psi(2^{k-n}(t+1))-\psi(2^{k-n}t))\in \{ -1,1 \}$, so $a_{n}\in \mathbb{Z}$ and $n,a_{n}$ have the same parity. Therefore the sequence $\{ a_{n} \}_{n\geqslant 1}$ diverges.
#### T9) Prove that $T(x)$ is continuous but nowhere differentiable on $\mathbb{R}$.
Proof: For any $x\in[0,1]$, if $x=k_{0}\cdot 2^{-m_{0}}$ as in T4), by T4) the sequence $\displaystyle \left\{  \frac{T(x+h_{n})-T(x)}{h_{n}}  \right\}$ diverges, hence $T$ is not differentiable at $x$. Otherwise for any $n\in \mathbb{N}$, $2^{n}x\not\in \mathbb{Z}$. Define $\{ h_{n} \}_{n\geqslant 1}$ and $\{ h_{n}^{\prime} \}_{n\geqslant 1}$ as in T7), then by T8), the sequence $\displaystyle \left\{  \frac{T(x+h_{n})-T(x-h_{n}^{\prime})}{h_{n}+h_{n}^{\prime}}  \right\}_{n\geqslant 1}$ diverges. Combined with T5) we know that $T$ is not differentiable at $x$. Therefore $T$ is nowhere differentiable on $\mathbb{R}$, since $T$ is periodic.
For any $x,y$ in $\mathbb{R}$, 
$$
\lvert T(x)-T(y) \rvert \leqslant \sum_{k=0}^{N}{2^{-k}\lvert T(2^{k}x)-T(2^{k}y) \rvert }+\sum_{k=N+1}^{\infty}{2^{-k}}\leqslant 2\max_{0\leqslant k\leqslant N}{\lvert T(2^{k}x)-T(2^{k}y) \rvert }+2^{-N}.
$$
Hence for any $N>0$, when $\varepsilon\to 0$, $\lvert T(x)-T(x+\varepsilon) \rvert\leqslant 2^{1-N}\to 0$, so $T$ is (uniformly) continuous on $\mathbb{R}$.
#### T10) Prove that
$$
T(x)=\begin{cases}
2x+\frac{T(4x)}{4}, & 0\leqslant x< \frac{1}{4}; \\
\frac{1}{2}+ \frac{T(4x-1)}{4}, & \frac{1}{4}\leqslant x< \frac{1}{2}; \\
\frac{1}{2}+ \frac{T(4x-2)}{4}, & \frac{1}{2}\leqslant x<\frac{3}{4}; \\
2-2x+ \frac{T(4x-3)}{4}, & \frac{3}{4}\leqslant x\leqslant 1.
\end{cases}
$$
Proof: If $0\leqslant x<1 /4$, then 
$$
T(x)=\psi(x)+\psi(2x) /2 +\sum_{k=2}^{\infty}{\psi(2^{k}x)2^{-k}}=2x+\frac{T(4x)}{4}.
$$
The other cases are exactly the same.
#### T11) Let $\Gamma=\{ (x,T(x)):0\leqslant x\leqslant 1 \}\subset \mathbb{R}^{2}$. Define $\Phi_{i}:\mathbb{R}^{2}\to \mathbb{R}^{2}$
$$
\begin{align} 
 & \Phi_{0} \begin{pmatrix}
x \\
y \\
\end{pmatrix}= \begin{pmatrix}
1 /4  & 0  \\
1 /2 & 1 /4 \\
\end{pmatrix} \begin{pmatrix}
x \\
y \\
\end{pmatrix},  & \Phi_{1}\begin{pmatrix}
x \\
y\\
\end{pmatrix}=\begin{pmatrix}
1 /4  & 0 \\
0 & 1 /4 \\
\end{pmatrix} \begin{pmatrix}
x \\
y \\
\end{pmatrix}+\begin{pmatrix}
1 /4 \\
1 /2 
\end{pmatrix}, \\
 & \Phi_{2}\begin{pmatrix}
x \\
y\\
\end{pmatrix}=\begin{pmatrix}
1 /4  & 0  \\
0 & 1 /4 \\
\end{pmatrix}\begin{pmatrix}
x \\
y \\
\end{pmatrix}+\begin{pmatrix}
1 /2 \\
1 /2 \\
\end{pmatrix},  & \Phi_{3}\begin{pmatrix}
x \\
y \\
\end{pmatrix}=\begin{pmatrix}
1 /4 & 0  \\
0 & 1 /4 \\
\end{pmatrix}\begin{pmatrix}
x \\
y \\
\end{pmatrix}+\begin{pmatrix}
3 /4 \\
1 /2 \\
\end{pmatrix}.
\end{align}
$$
Prove that $\Phi_{i}$ maps $\Gamma$ to $\left\{  (x,T(x)):x\in\left[ \frac{i}{4},\frac{i+1}{4} \right]  \right\}$.
Proof: Consider $(x,T(x))\in\Gamma$, then by T10),
$$
\Phi_{0}\begin{pmatrix}
x \\
T(x)\\
\end{pmatrix}=\begin{pmatrix}
x /4 \\
x /2+T(x) /4\\
\end{pmatrix}=\begin{pmatrix}
x /4 \\
T(x /4)\\
\end{pmatrix}.
$$
Hence $\Phi_{0}(\Gamma)=\{ (x,T(x)):x\in[0,1 /4] \}$. The cases $i=1,2,3$ are similar.
#### T12) Let $S_{0}=\{ (x,y)\in \mathbb{R}^{2}:0\leqslant x\leqslant 1,0\leqslant y\leqslant 1 \}$. For every $n\geqslant 0$, define $S_{n+1}=\bigcup_{k=0}^{3}\Phi_{k}(S_{n})$. Prove that $S_{n}$ is a sequence of monotonically decreasing compact sets and $\Gamma=\bigcap_{n\geqslant 0}S_{n}$.
Proof: Let $S_{n}(x)=\{ y\in[0,1]:(x,y)\in S_{n} \}$. We prove by induction that $S_{n}\subset S_{n-1}$ and $S_{n}(x)$ is a closed interval containing $T(x)$ for any $x\in[0,1]$. The base $n=0$ is trivial. Suppose $S_{n}\subset S_{n-1}$ and $S_{n}(x)$ is a closed interval containing $T(x)$, then consider $S_{n+1}$. Note that $\Phi_{k}(S_{n})$ are disjoint, since for any $(x,y)\in \Phi_{k}(S_{n})$, $x\in[k /4,(k+1) /4]$. Hence for any $x\in[0,1 /4]$, $S_{n+1}(x)=\{ y:(x,y)=\Phi_{0}(4x,z),z\in S_{n}(4x) \}=\{ 2x+z /4:z\in S_{n}(4x) \}$ is a closed interval containing $T(x)=2x+T(4x) /4$. By the induction hypothesis $S_{n}(x)=\{ 2x+z /4:z\in S_{n-1}(4x) \}$ and $S_{n}(4x)\subset S_{n-1}(4x)$ so $S_{n+1}(x)\subset S_{n}(x)$. The case $x\in[1 /4,1]$ is similar. Therefore $S_{n+1}\subset S_{n}$ and $S_{n+1}$ is compact, so by induction $S_{n}\subset S_{n-1}$ for all $n>0$ and $S_{n}$ is compact.
Clearly $\Gamma \subset \bigcap_{n\geqslant 0}S_{n}$, so it suffices to show that $\lvert S_{n}(x) \rvert\to 0$ for all $x\in[0,1]$. From the proof above we get $\sup_{x\in[0,1]}\lvert S_{n}(x) \rvert\leqslant \sup_{x\in[0,1]}{\lvert S_{n-1}(x) \rvert} /4$, hence $\lvert S_{n}(x) \rvert\to 0$, therefore
$$
\Gamma=\bigcap_{n\geqslant 0}S_{n}.
$$
#### T13) Prove that $\sup_{x\in \mathbb{R}}{T(x)}\geqslant \frac{2}{3}$.
Proof: For any $(x,y)\in\Gamma$, by T11) we know that $(x /4+1 /4,y /4+1 /2)\in\Gamma$, hence if $a=\sup_{x\in \mathbb{R}}{T(x)}$ then $a\geqslant a /4+1 /2$, i.e. $a\geqslant 2 /3$.
#### T14) Find a $c\in [0,1]$ such that $T(c)=\frac{2}{3}$.
Solution: Consider $c=1 /3$, then by T10), $T(c)=T(c) /4+1 /2$, hence $T(c)=\frac{2}{3}$.
#### T15) For $x\in[0,1]$, suppose $x=\sum_{n=1}^{\infty}{b_{n}4^{-n}}$, where $b_{n}\in \{ 0,1,2,3 \}$. Prove that
$$
\left\{  x\in[0,1]:T(x)=\frac{2}{3}  \right\}=\left\{  x\in [0,1]:x=\sum_{n=1}^{\infty}{b_{n}4^{-n}},b_{n}\in \{ 1,2 \}  \right\}.
$$
Proof: If $x=\sum_{n=1}^{\infty}{b_{n}4^{-n}}$, where $b_{n}\in \{ 1,2 \}$, then by T10),
$$
T(x)=\frac{1}{2}+\frac{1}{4}T\left( \sum_{n=1}^{\infty}{b_{n+1}4^{-n}} \right)=\cdots=\frac{1}{2}\left( 1+\frac{1}{4}+\frac{1}{4^{2}}+\cdots \right)=\frac{2}{3}.
$$
Otherwise take the least $n$ such that $b_{n}\in \{ 0,3 \}$, denote $y=\sum_{k=1}^{\infty}{b_{n+k-1}4^{-n}}$, then
$$
T(x)=\frac{1}{2}\left( 1+\frac{1}{4}+\cdots+\frac{1}{4^{n-2}} \right)+\frac{\min\{ 2y,2-2y \}}{4^{n-1}}+\frac{1}{4^{n}}T(4y-b_{n})< \frac{2}{3},
$$
since $T(4y-b_{n})\leqslant 2/3$ and $\min\{ 2y,2-2y \}<1 /2$. Therefore
$$
\left\{  x\in[0,1]:T(x)=\frac{2}{3}  \right\}=\left\{  x\in [0,1]:x=\sum_{n=1}^{\infty}{b_{n}4^{-n}},b_{n}\in \{ 1,2 \}  \right\}.
$$
#### T16) As in T11), study the self-similarity of $\Phi_{1},\Phi_{2}$ on $\left\{  (x,T(x)):x\in[0,1],T(x)=\frac{2}{3}  \right\}$, which is a cantor set of Hausdorff dimension $\frac{1}{2}$. 
Solution: Same as T11), denote $\Gamma^{\prime}=\left\{  (x,T(x)):x\in [0,1],T(x)=\frac{2}{3}  \right\}$, then 
$$
\Phi_{1}(\Gamma^{\prime})=\left\{  (x,T(x)):x\in\left[ 0,\frac{1}{2} \right],T(x)=\frac{2}{3}  \right\},\,\Phi_{2}(\Gamma^{\prime})=\left\{  (x,T(x)):x\in\left[ \frac{1}{2},1 \right],T(x)=\frac{2}{3}  \right\}.
$$
# HW7 Émile Borel Lemma
## PSA
$f$ is a function on the interval $I$.
#### A1) Suppose $f$ is twice-differentiable at $x$, prove that
$$
f^{\prime\prime}(x)=\lim_{ h \to 0 } \frac{f(x+h)+f(x-h)-2f(x)}{h^{2}}.
$$
Proof: For any $h>0$, consider the function $g(t)=f(t)-f(t-h)$, then there exists $\xi \in[0,h]$ such that $g(x+h)=g(x)+hg^{\prime}(\xi)$, and there exists $\eta \in[\xi-h,\xi]\subset[-h,h]$ such that $f^{\prime}(\xi)-f^{\prime}(\xi-h)=hf^{\prime\prime}(\eta)$
$$
\frac{f(x+h)+f(x-h)-2f(x)}{h^{2}}=\frac{f^{\prime}(\xi)-f^{\prime}(\xi-h)}{h}=f^{\prime\prime}(\eta),
$$
therefore 
$$
f^{\prime\prime}(x)=\lim_{ h \to 0 } \frac{f(x+h)+f(x-h)-2f(x)}{h^{2}}.
$$
#### A2) Suppose $x_{0}\in I$, and
$$
\begin{align}
f(x)&=a_{0}+a_{1}(x-x_{0})+\cdots+a_{n}(x-x_{0})^{n}+o(\lvert x-x_{0} \rvert ^{n}) \\
&=b_{0}+b_{1}(x-x_{0})+\cdots+b_{n}(x-x_{0})^{n}+o(\lvert x-x_{0} \rvert ^{n}).
\end{align}
$$
when $x\to x_{0}$, then for any $i=0,1,\cdots,n$, $a_{i}=b_{i}$.
Proof: Otherwise let $c_{i}=a_{i}-b_{i}$ and take the least $k$ such that $c_{k}\neq 0$, then
$$
c_{k}(x-x_{0})^{k}+\cdots+c_{n}(x-x_{0})^{n}+o(\lvert x-x_{0} \rvert ^{n})=0\implies c_{k}=-c_{k+1}(x-x_{0})-\cdots-c_{n}(x-x_{0})^{n-k}+o(\lvert x-x_{0} \rvert ^{n-k}),
$$
which leads to contradiction when $x\to x_{0}$.
#### A3) Suppose $f$ is $n$-times differentiable at $0$. Prove that if $f$ is an even (odd) function, then the Taylor expansion of $f$ at $0$ has only even (odd) terms.
Proof: Use the fact that if $f$ is even (odd) then $f^{\prime}$ is odd (even).
#### A4) If $f$ is differentiable on $(a,b)$ and $\lim_{ x \to a^{+} }f(x)=\lim_{ x \to b^{-} }f(x)$ prove that exists $x_{0}\in(a,b)$ such that $f^{\prime}(x_{0})=0$.
Proof: Otherwise if $f^{\prime}(x)\neq 0$ for all $x\in(a,b)$, by Darboux’s theorem $f^{\prime}(x)$ have the same sign over $(a,b)$, hence $f$ is monotonic and non-constant on $(a,b)$, contradicting $\lim_{ x \to a^{+} }f(x)=\lim_{ x \to b^{-} }f(x)$.
#### A5) Suppose $f\in C([a,b])$ and is differentiable on $(a,b)$. Prove that $f$ is strictly increasing on $[a,b]$ iff for any $x\in(a,b)$, $f^{\prime}(x)\geqslant 0$ and on any sub-interval $(c,d)\subset(a,b)$, $f^{\prime}(x)$ does not vanish.
Proof: ==> For any $x\in(a,b)$, $(f(x+h)-f(x)) /h\geqslant 0$ so
$$
f^{\prime}(x)=\lim_{ h \to \infty } \frac{f(x+h)-f(x)}{h}\geqslant 0.
$$
If $f^{\prime}(x)$ vanish on some sub-interval $(c,d)$ then $f(c)=f(d)$, a contradiction.
<== For any $a\leqslant x<y\leqslant b$, there exists $\xi \in(a,b)$ such that $f(y)-f(x)=(y-x)f^{\prime}(\xi)$, hence $f(y)\geqslant f(x)$ and $f$ is increasing. If $f(x)=f(y)$ for some $x<y$ then $f(t)$ is constant on $[x,y]$ and hence $f^{\prime}$ vanish on $(x,y)$, a contradiction.
## PSB
Use L’Hôpital theorem to calculate limits:
#### B1) $a>0$, then
$$
\lim_{ x \to \infty } \frac{\log x}{x^{a}}=\lim_{ x \to \infty } \frac{x^{-1}}{ax^{a-1}}=0.
$$
#### B2) $a>0,b>1$ then
$$
\lim_{ x \to \infty } \frac{x^{a}}{b^{x}}=\lim_{ x \to \infty } \frac{ax^{a-1}}{b^{x}\ln b}=\cdots=\lim_{ x \to \infty } \frac{a(a-1)\cdots\{a\}}{b^{x}(\ln b)^{\lfloor a \rfloor }x^{1-\{a\}}}=0.
$$
#### B3)
$$
\lim_{ x \to 0 } \frac{e^{ax}-e^{bx}}{\sin ax-\sin bx}=\lim_{ x \to 0 } \frac{ae^{ax}-be^{bx}}{a\cos ax-b\cos bx}=1.
$$
#### B4)
$$
\lim_{ x \to 0 } \frac{\tan x-x}{x-\sin x}=\lim_{ x \to 0 } \frac{\sec ^{2}x-1}{1-\cos x}=\lim_{ x \to 0 } \frac{1+\cos x}{\cos ^{2}x}=2.
$$
#### B5)
$$
\lim_{ x \to 0 } \frac{1-\cos x^{2}}{x^{2}\sin x^{2}}=\lim_{ x \to 0 } \frac{1-\cos x}{x\sin x}=\lim_{ x \to 0 } \frac{\sin x}{\sin x+x\cos x}=\lim_{ x \to 0 } \frac{\cos x}{2\cos x-x\sin x}=\frac{1}{2}.
$$
#### B6)
$$
\lim_{ x \to 1 } \frac{\sqrt{ 2x-x^{4} }-\sqrt[3]{ x }}{1-x^{4/3}}=\lim_{ x \to 1 } \frac{(2x-x^{4})^{-1/2}(1-2x^{3})-x^{-2/3} /3}{-\frac{4}{3}x^{1/3} }=1.
$$
#### B7)
$$
\lim_{ x \to 1^{-} } (\log x)(\log(1-x))=\lim_{ x \to 1^{-} } \frac{\log(1-x)}{1/\log x}=\lim_{ x \to 1^{-} } \frac{x\log ^{2}x}{1-x}=0.
$$
#### B8)
$$
\lim_{ x \to 0^{+} } \frac{\log \sin ax}{\log \sin bx}=\lim_{ x \to 0^{+} } \frac{\sin bx}{\sin ax}\cdot \frac{a\cos ax}{b\cos bx}=1.
$$
#### B9)
$$
\lim_{ x \to 0^{+} } x^{x}=\exp \lim_{ x \to 0^{+} } \frac{\log x}{x^{-1}}=\exp \lim_{ x \to 0^{+} } -x=1.
$$
#### B10)
$$
\lim_{ x \to 1 } x^{1/(1-x)}=\exp \lim_{ x \to 1 } \frac{\log x}{1-x}=e^{-1}.
$$
#### B11)
$$
\begin{align}
\lim_{ x \to 1 } \left( \frac{1}{\log x}-\frac{1}{x-1} \right)&=\lim_{ x \to 1 } \frac{x-1-\log x}{(x-1)\log x}=\lim_{ x \to 1 } \frac{1-x^{-1}}{1-x^{-1}+\log x} \\
&= \lim_{ x \to 1 } \frac{x-1}{x-1+x\log x}= \frac{1}{2}.
\end{align}
$$
#### B12)
$$
\lim_{ x \to 0^{+} } (\sin x)^{x}=\exp \lim_{ x \to 0^{+} } \frac{\log \sin x}{x^{-1}}=\exp \lim_{ x \to 0^{+} } - \frac{x^{2}}{\tan x}=1.
$$
#### B13)
$$
\begin{align}
\lim_{ x \to 0 } \left( \frac{\sin x}{x} \right)^{1/(1-\cos x)}&=\exp \lim_{ x \to 0 } \frac{\log \sin x-\log x}{1-\cos x}=\exp \lim_{ x \to 0 } \frac{\cot x-x^{-1}}{\sin x} \\
&= \exp \lim_{ x \to 0 } \frac{x\cos x-\sin x}{x\sin ^{2}x}=\exp \lim_{ x \to 0 } \frac{-x\sin x}{\sin ^{2}x+x\sin 2x} \\
&= e^{-1/3}.
\end{align}
$$
#### B14)
$$
\lim_{ x \to a } \frac{a^{x}-x^{a}}{x-a}=\lim_{ x \to a } \frac{a^{x}\log a-ax^{a-1}}{1}=a^{a}(\log a-1).
$$
#### B15)
$$
\begin{align}
\lim_{ x \to \infty } \frac{(1+1 /x)^{x}-e}{1 /x}&=\lim_{ x \to 0 } \frac{(1+x)^{1/x}-e}{x}=\lim_{ x \to 0 }  (1+x)^{1/x}\cdot \frac{x /(x+1)-\log(1+x)}{x^{2}} \\
&= e \lim_{ x \to 0 } \frac{(x+1)^{-2}-(x+1)^{-1}}{2x}=\frac{e}{2}.
\end{align}
$$
#### B16)
$$
\lim_{ x \to \infty } \frac{x^{\log x}}{(\log x)^{x}}=\exp \lim_{ x \to \infty } (\log x)^{2}-x\log \log x=0.
$$
#### B17)
$$
\begin{align}
&\lim_{ x \to \infty } (x+a)^{1+1/x}-x^{1+1/(x+a)}=\lim_{ x \to \infty } \frac{(x+a)^{1+1/x}x^{-1}-x^{1/(x+a)}}{x^{-1}} \\
=&a.
\end{align}
$$
#### B18)
$$
\begin{align}
&\lim_{ x \to \infty } \sqrt[3]{ x^{3}+x^{2}+x+1 }-\sqrt{ x^{2}+x+1 }\cdot \frac{\log(e^{x}+x)}{x}=-\frac{1}{6}.
\end{align}
$$
(Using WolframAlpha)
## PSC
Calculate the maximum and minimum values of the following functions:
1.$f(x)=x^{4}-2x^{2}+5$, $x\in[-2,2]$.
$f(x)=(x^{2}-1)^{2}+4\in[4,13]$.
2.$f(x)=\frac{2x}{1+x^{2}}$, $x\in \mathbb{R}$
$1-f(x)=(1+x^{2})^{-1}(x-1)^{2}\geqslant 0$, $f(x)+1=(1+x^{2})^{-1}(x+1)^{2}\geqslant 0$, therefore $f(x)\in[-1,1]$.
3.$f(x)=\arctan x-\frac{1}{2}\log(1+x^{2})$, $x\in \mathbb{R}$.
$f^{\prime}(x)=\frac{1-x}{x^{2}+1}$, hence $\sup_{x\in \mathbb{R}}{f(x)}=f(1)=\frac{\pi}{4}-\frac{\log 2}{2}$, and $f$ has no minimum.
4.$f(x)=x\log x$, $x\in(0,\infty)$.
$f^{\prime}(x)=\log x+1$, hence $\inf_{x\in(0,\infty)}{f(x)=f(e^{-1})}=-e^{-1}$, and $f$ has no maximum.
5.$f(x)=\sqrt{ x }\log x$,$x\in(0,\infty)$.
$f^{\prime}(x)=x^{-1/2}\left( 1+\frac{\log x}{2} \right)$, hence $\inf_{x\in(0,\infty)}{f(x)=f(e^{—2})}=-2e^{-1}$.
6.$f(x)=2\tan x-\tan ^{2}x$, $x\in[0,\pi /2)$.
$f(x)=1-(1-\tan x)^{2}\in(-\infty,1]$.


## PSD
$f$ is differentiable on $(a,b)$. Suppose $x_{0}\in(a,b)$ and $f^{\prime}(x_{0})=0$.
#### D1) Prove that $f(x_{0})$ is a local maximum if there exists $(x_{0}-\delta,x_{0}+\delta)\subset(a,b)$ such that 
$$
f^{\prime}(x)=\begin{cases}
>0, & \forall x\in(x_{0}-\delta,x_{0}), \\
<0, & \forall x\in(x_{0},x_{0}+\delta).
\end{cases}
$$
Proof: Trivial by Lagrange mean-value theorem.
#### D2) Prove that if $f^{\prime\prime}(x_{0})$ exists and $f^{\prime\prime}(x_{0})<0$ then $f(x_{0})$ is a local maximum.
Proof: $f^{\prime\prime}(x_{0})<0$ and $f^{\prime}(x_{0})=0$ implies for some $\delta>0$, $f^{\prime}(x)<0$ for $x\in(x_{0},x_{0}+\delta)$ and $f^{\prime}(x)>0$ for $x\in(x_{0}-\delta,x_{0})$. Hence by D1), $f(x_{0})$ is a local maximum.
#### D3) Suppose $f$ is $n$-times differentiable at $x_{0}$, $f^{\prime}(x_{0})=\cdots=f^{(n-1)}(x_{0})=0$ and $f^{(n)}(x_{0})\neq 0$. Determine the conditions that $f(x_{0})$ is a local maximum.
Solution: $n$ is even and $f^{(n)}(x_{0})<0$.
## PSE: Roots of Polynomials
#### E1) Prove that if all the roots of the  polynomial $P_{n}(x)\in \mathbb{R}[x]$ are real numbers, then so are the polynomials $P_{n}^{\prime}(x),P_{n}^{\prime\prime}(x),\cdots,P_{n}^{n-1}(x)$, where $n=\deg P_{n}$.
Proof: We only need to prove that $P_{n}^{\prime}$ has $n-1$ real roots. By Rolle’s mean-value theorem, between any two roots of $P_{n}$ there is a root of $P_{n}^{\prime}$ hence $P_{n}^{\prime}$ has $n-1$ real roots.
#### E2) Prove that the Legendre polynomial $P_{n}(x)=\frac{1}{2^nn!} \frac{\mathrm{d}^n}{\mathrm{d}x^n}(x^{2}-1)^n$ has $n$ different roots in the interval $(-1,1)$.
Proof: We know that the polynomials $\sqrt{ (2n+1) /2 }P_{n}(x)$ form a set of orthogonal base on the space $L^{2}([-1,1])$, hence it must have $n$ different roots in the interval $(-1,1)$.
#### E3) Prove that the Laguerre polynomial $L_{n}(x)=\frac{e^x}{n!} \frac{\mathrm{d}^n}{\mathrm{d}x^n}(e^{-x}x^n)$ has $n$ different real roots.
Proof: We know that the Laguerre polynomials are orthogonal on the space $L^{2}([0,\infty))$ with weight $e^{-x}$, hence it must have $n$ distinct roots.
Or note that $f(x)=x^{n}e^{-x}$ has a root with multiplicity $n$ at $0$ and it vanishes at $\infty$, hence use Rolle’s theorem and induction we can show that $f^{(k)}(x)$ has a root with multiplicity $n-k$ at $0$ and $k$ roots between $0$ and $\infty$.
#### E4) Prove that the Hermite polynomial $H_{n}(x)=(-1)^ne^{x^{2}} \frac{\mathrm{d}^n}{\mathrm{d}x^n}(e^{-x^{2}})$ has $n$ different real roots.
Proof: We know that the polynomials $H_{n}(x) /\sqrt{ 2^nn!\sqrt{ n } }$ form a set of orthogonal base on the Hilbert space $L^{2}(\mu)$ where $\mu(\mathrm{d}x)=e^{-x^{2}}\mathrm{d}x$, hence it must have $n$ distinct real roots.

## PSF: Émile Borel’s Lemma
### Part 1:
#### F1) Define $\phi:\mathbb{R}\to \mathbb{R}$:
$$
\phi(x)=\begin{cases}
e^{-1 /x^{2}}, & x>0, \\
0, & x\leqslant 0.
\end{cases}
$$
Prove that $\phi \in C^{\infty}(\mathbb{R})$.
Proof: We prove by induction that for any $n\in \mathbb{Z}_{\geqslant 0}$, there is a polynomial $P_{n}\in \mathbb{R}[x]$ such that 
$$
\phi^{(n)}(x)=\begin{cases}
P_{n}(1/x)\cdot e^{-1/x^{2}}, & x>0, \\
0, & x\leqslant 0 .
\end{cases}
$$
(Which implies $\phi^{(n)}$ is continuous.)
The case $n=0$ is trivial. Suppose it holds for $n$, then for any $x>0$, 
$$
\phi^{(n+1)}(x)=e^{-1/x^{2}}\left( P_{n}(1 /x) \frac{2}{x^3}-P_{n}^{\prime}(1 /x) \frac{1}{x^{2}} \right),
$$
for any $x<0$, $\phi^{(n+1)}(x)=0$, and for $x=0$,
$$
\phi^{(n+1)}_{+}(0)=\lim_{ x \to 0^+ } e^{-1/x^{2}} P_{n}(1 /x) \frac{1}{x}=0.
$$
Hence the claim holds for $n+1$ too.
Therefore $\phi \in C^{\infty}(\mathbb{R})$.
#### F2) Define $\chi:\mathbb{R}\to \mathbb{R}$:
$$
\chi(x)= \frac{\phi(2-\lvert x \rvert )}{\phi(2- \lvert x \rvert )+\phi(\lvert x \rvert -1)}.
$$
Prove that $\chi(x)\in C^{\infty}(\mathbb{R})$ and $\chi\vert_{[-1,1]}\equiv 1$, $\chi\vert_{(-\infty,-2]\cup[2,\infty)}\equiv 0$, $0\leqslant \chi(x)\leqslant 1$ and $\chi$ is an even function.
Proof: $2-\lvert x \rvert$ and $\lvert x \rvert-1$ cannot be both negative, hence the denominator is always positive, so $\chi \in C^{\infty}(\mathbb{R})$. The fact that $\chi\vert_{[-1,1]}\equiv 1$, $\chi\vert_{(-\infty,-2]\cup[2,\infty)}\equiv 0$, $\chi(x)\in[0,1]$ and $\chi$ is even is trivial.
#### F3) Prove that for any $0<a<b$, there exists a smooth function $\rho(x)\in C^{\infty}(\mathbb{R})$ such that $\rho\vert_{[-a,a]}\equiv 1$, $\rho\vert_{(-\infty,-b]\cup[b,\infty)}\equiv 0$, and $0\leqslant \rho(x)\leqslant 1$.
Proof: Same as F2), define
$$
\rho(x)= \frac{\phi(b-\lvert x \rvert )}{\phi(b-\lvert x \rvert )+\phi(\lvert x \rvert -a)}.
$$
#### F4) Prove that there exists an even function $\psi \in C^{\infty}(\mathbb{R}^n)$ such that $\psi\vert_{\{ x:\lvert x \rvert\leqslant 1 \}}\equiv 1$, $\psi\vert_{\{ x:\lvert x \rvert\geqslant 2 \}}\equiv 0$, and $0\leqslant \psi(x)\leqslant 1$.
Proof: (A special case of Urysohn’s lemma)
Define $f:\mathbb{R}^n\to \mathbb{R}$ as $f(\mathbf{x})=\phi(1-\lvert \mathbf{x} \rvert^{2})$ and $g:\mathbb{R}^n\to \mathbb{R}$ as $g(\mathbf{x})=\phi(\lvert x^{2} \rvert /4-1)$, then $f$ vanishes on $B(0,1)^C$ and $g$ vanishes on $\bar{B}(0,2)$. Therefore 
$$
\psi(\mathbf{x})= \frac{f(\mathbf{x})}{f(\mathbf{x})+g(\mathbf{x})}
$$
satisfy the requirements.
### Part 2: Interchanging $\sum_{}^{}{}$ and $\frac{\mathrm{d}}{\mathrm{d}x}$
$I=[a,b]$ is a closed interval, $\{ f_{k} \}_{k\geqslant 0}$ is a sequence of functions in $C^{1}(I)$. Assume $\sum_{k=0}^{\infty}{f_{k}}$ converges point-wise on $I$, and let $f(x)=\sum_{k=0}^{\infty}{f_{k}(x)}$.
#### F5) Assume the series $\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}$ converges absolutely on $I$, i.e. $\sum_{k=0}^{\infty}{\|f_{k}^{\prime}\|_{\infty}}$ converges. Prove that $f$ is differentiable and $f^{\prime}(x)=\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}$.
Proof: Note that
$$
\frac{f(x+h)-f(x)}{h}=\sum_{k=0}^{\infty}{\frac{f_{k}(x+h)-f_{k}(x)}{h}}=\sum_{k=0}^{\infty}{f_{k}^{\prime}(x+\xi_{k})}.
$$
Hence
$$
\left\lvert  \frac{f(x+h)-f(x)}{h}-\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}  \right\rvert \leqslant \sum_{n=0}^{N}{\lvert f_{k}^{\prime}(x+\xi_{n})-f^{\prime}_{k}(x) \rvert }+2\sum_{n=N+1}^{\infty}{\|f_{k}^{\prime}\|}
$$
Note that $f^{\prime}_{k}$ is uniformly continuous, so 
$$
\lim_{ h \to 0 } \sum_{n=0}^{N}{\lvert f_{k}^{\prime}(x+\xi_{k})-f^{\prime}_{k}(x) \rvert }=0,\, \lim_{ N \to \infty } 2\sum_{n=N+1}^{\infty}{\|f_{k}^{\prime}\|}=0.
$$
Hence 
$$
f^{\prime}(x)=\lim_{ h \to 0 } \frac{f(x+h)-f(x)}{h}=\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}.
$$
#### F6) Assume $\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}$ converges uniformly on $I$, then $f$ is differentiable and $f^{\prime}(x)=\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}$.
Proof: Let $g(x)=\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}$, since the series converges uniformly, $g(x)$ is continuous on $I$. By Lebesgue’s Dominated Convergence Theorem, 
$$
\int_{x_{0}}^{x} g(t) \, \mathrm{d}t = \sum_{k=0}^{\infty}{f_{k}(t)\Big\vert_{x_{0}}^{x}}= f(x)-f(x_{0}).
$$
Hence $f^{\prime}(x)=g(x)=\sum_{k=0}^{\infty}{f_{k}^{\prime}(x)}$.
#### F7) Calculate the derivative of $e^x$ using F6).
Solution: On any closed interval $[-M,M]$, 
$$
\sum_{n=0}^{\infty}{\frac{x^{n}}{n!}}=e^{x}
$$
converges uniformly. Hence 
$$
(e^{x})^{\prime}=\sum_{n=0}^{\infty}{\left( \frac{x^{n}}{n!} \right)^{\prime}}=\sum_{n=0}^{\infty}{\frac{x^{n}}{n!}}=e^{x}.
$$
### Part 3: Borel’s Lemma
Given an arbitrary sequence $\{ a_{k} \}_{k\geqslant 0}$.
#### F8) For any $t_{k}>0$, let $f_{k}(x)=\frac{a_{k}}{k!} x^k\chi(t_{k}x)$, determine the derivatives of any order of $f_{k}$ at $x=0$.
Solution: Note that when $x=0$, $\chi ^{(m)}(t_{k}x)=0$ for any $m\geqslant 1$ and $\chi(t_{k}x)=1$. Hence
$$
f_{k}^{(n)}(0)=\frac{a_{k}}{k!}\sum_{j=0}^{n}{\binom{n}{j}(x^{k})^{(j)}\chi ^{(n-j)}(t_{k}x)\Big\vert_{x=0}}=\frac{a_{k}}{k!} (x^{k})^{(n)}\Big\vert_{x=0}=a_{k}\delta_{n,k}.
$$
#### F9) Prove that when $k\geqslant 2n$, 
$$
f_{k}^{(n)}(x)=a_{k}\sum_{\mathscr{l}=0}^{n}{\binom{n}{\mathscr{l}} \frac{t_{k}^{n-\mathscr{l}}}{(k-\mathscr{l})!}x^{k-\mathscr{l}}\chi^{(n-\mathscr{l})}(t_{k}x)}.
$$
Proof: Leibniz’s Formula.
#### F10) (Borel’s lemma) Prove that for any sequence $\{ a_{k} \}_{k\geqslant 0}$, there exists a smooth function $f$ on $\mathbb{R}$, such that for any $k\geqslant 0$, $f^{(k)}(0)=a_{k}$.
Proof: Let $f_{k}(x)=\frac{a_{k}}{k!}x^{k}\chi(t_{k}x)$ where $t_{k}$ is yet to be determined, and 
$$
f(x)=\sum_{k=0}^{\infty}{f_{k}(x)}=\sum_{k=0}^{\infty}{\frac{a_{k}x^{k}}{k!}\chi(t_{k}x)}.
$$
For any $n\geqslant 0$, we want to show that $\sum_{k=0}^{\infty}{f_{k}^{(n)}(x)}$ converges uniformly on $\mathbb{R}$.
Suppose $M_{n}=\sup_{x\in \mathbb{R},m\leqslant n}{\lvert \chi ^{(m)}(x) \rvert}$, and
$$
C_{k}=\sup_{n<k /2}{\sum_{\mathscr{l}=0}^{n}{\frac{\binom{n}{\mathscr{l}}}{(k-\mathscr{l})!}}},
$$
then for any $x\in \mathbb{R}$,
$$
\lvert f_{k}^{(n)}(x) \rvert \leqslant \lvert a_{k} \rvert C_{k}M_{k}t_{k}^{-k/2}.
$$
Hence if we choose $t_{k}$ such that
$$
\lvert a_{k} \rvert C_{k}M_{k}t_{k}^{-k /2}<2^{-k},
$$
then the series
$$
\sum_{k=0}^{\infty}{f_{k}^{(n)}(x)}
$$
converges uniformly on $\mathbb{R}$. By F6) we know that $f(x)=\sum_{k=0}^{\infty}{f_{k}(x)}$ is smooth, and by F8) we obtain $f^{(n)}(0)=a_{n}$ for any $n\geqslant 0$,
### Part 4: Peano’s Proof
#### F11) $\{ c_{k} \}$ and $\{ b_{k} \}$ are two sequences, and $b_{k}>0$. Prove that
$$
\left(  \frac{c_{k}x^k}{1+b_{k}x^{2}} \right)^{(n)}(0)=\begin{cases}
n! (-1)^jc_{n-2j}b_{n-2j}^j, & \text{if } k=n-2j,j\in \mathbb{Z}_{\geqslant 0}; \\
0, & \text{otherwise}.
\end{cases}
$$
Proof: For $x\to 0$, 
$$
\frac{c_{k}x^{k}}{1+b_{k}x^{2}}=c_{k}\sum_{n=0}^{\infty}{(-1)^{n}x^{2n+k}b_{k}^{n}}.
$$
Which converges absolutely on the interval $[-b_{k}^{-1/2} /2,b_{k}^{-1 /2} /2]$, and so are its $n$-times derivations, hence by F5)
$$
\left( \frac{c_{k}x^{k}}{1+b_{k}x^{2}} \right)^{(n)}(0)=c_{k}\sum_{j=0}^{\infty}{(-1)^{j} \frac{(2j+k)!}{(2j+k-n)!}x^{2j+k-n}b_{k}^{j}}\Big\vert_{x=0}=\begin{cases}
n!(-1)^{j}c_{k}b_{k}^{j}, & k=n-2j, \\
0, & \text{otherwise}.
\end{cases}
$$
#### F12) Prove that there is a constant $C$ such that for any $k\geqslant n+2$, and any $x$, 
$$
\left\lvert  \left(  \frac{c_{k}x^k}{1+b_{k}x^{2}} \right)^{(n)}(x)  \right\rvert \leqslant C(n+1)! \frac{\lvert c_{k} \rvert k!}{b_{k}} \lvert x \rvert ^{k-n-2}.
$$
Proof: Use du Bois-Reymond, we can let $C=1$.
#### F13) Prove that for a given $\{ c_{k} \}$, we can choose $\{ b_{k} \}$ such that $b_{k}$ depends only on the value of $c_{k}$, and the function 
$$
f(x)=\sum_{k=0}^{\infty}{ \frac{c_{k}x^k}{1+b_{k}x^{2}}}
$$
is infinitely differentiable.
Proof: Let $b_{k}=(k!)^{2}c_{k}$, then by F12),
$$
\left\lvert  \sum_{k\geqslant n+2}^{}{\left( \frac{c_{k}x^{k}}{1+b_{k}x^{2}} \right)^{(n)}}  \right\rvert \leqslant (n+1)! \sum_{k\geqslant n+2}^{}{\frac{\lvert x \rvert ^{k-n-2}}{k!}}
$$
hence the series
$$
\sum_{k=0}^{\infty}{\left( \frac{c_{k}x^{k}}{1+b_{k}x^{2}} \right)^{(n)}}
$$
converges uniformly for any $n\geqslant 1$. By F6) the function $f(x)$ is infinitely differentiable, and
$$
f^{(n)}(x)=\sum_{k=0}^{\infty}{\left( \frac{c_{k}x^{k}}{1+b_{k}x^{2}} \right)^{(n)}}.
$$
#### F14) Prove that $f(0)=c_{0},f^{\prime}(0)=c_{1}$ and when $n\geqslant 2$,
$$
\frac{f^{(n)}(0)}{n!}=c_{n}+\sum_{j=1}^{\lfloor n/2 \rfloor }{(-1)^jc_{n-2j}b_{n-2j}^j}.
$$
Proof: Combine F11) and F13).
#### F15) Prove that by carefully choosing $\{ c_{k} \}$ and $\{ b_{k} \}$, we can prove Borel’s lemma.
Proof: Let $b_{k}=(k!)^{2}c_{k}$ and define $c_{k}$ inductively such that
$$
c_{n}=\frac{a_{n}}{n!}+\sum_{j=1}^{\lfloor n /2 \rfloor }{(-1)^{j}c_{n-2j}b_{n-2j}^{j}}
$$
Then let $f(x)=\sum_{k=0}^{\infty}{\frac{c_{k}x^{k}}{1+b_{k}x^{2}}}$
## PSG: Midterm Test Part B
Consider $f:\mathbb{R}\to \mathbb{R}$.
- Let $\mathcal{B}$ be all bounded function on $\mathbb{R}$.
- Let $\mathcal{L}$ be all Lipschitz functions on $\mathbb{R}$.
Suppose $a,\lambda \in \mathbb{R}$, $f\in \mathcal{B}\cap \mathcal{L}$, the goal is to find a function $F\in \mathcal{L}$ to solve:
$$
F(x)-\lambda F(x+a)=f(x),\,x\in \mathbb{R}. \tag{$\star$}
$$
### Part 1: Basic Properties of Lipschitz Functions
#### B1) Prove that if $f,g\in \mathcal{B}\cap \mathcal{L}$, then $fg\in \mathcal{L}$.
Proof: Suppose $\lvert f(x)-f(y) \rvert,\lvert g(x)-g(y) \rvert\leqslant A\lvert x-y \rvert$, and $\lvert f(x) \rvert,\lvert g(x) \rvert\leqslant C$, then for any $x,y\in \mathbb{R}$,
$$
\lvert f(x)g(x)-f(y)g(y) \rvert \leqslant 2MA\lvert x-y \rvert .
$$
Hence $fg\in \mathcal{L}$.
#### B2) Prove that if $f$ is differentiable and $f\in \mathcal{L}$ then $f^{\prime}\in \mathcal{B}$. 
Proof: If $\lvert f(x)-f(y) \rvert\leqslant C\lvert x-y \rvert$ then for any $x\in \mathbb{R}$,
$$
\lvert f^{\prime}(x) \rvert =\lim_{ h \to 0 }\left\lvert  \frac{f(x+h)-f(x)}{h}  \right\rvert \leqslant C. 
$$
Hence $f^{\prime}\in \mathcal{B}$.
#### B3) Prove that if $f$ is differentiable and $f^{\prime}\in \mathcal{B}$ then $f\in \mathcal{L}$. 
Proof: For any $x,y\in \mathbb{R}$, there exists $\xi \in(x,y)$ such that
$$
\lvert f(x)-f(y) \rvert =\lvert x-y \rvert \cdot \lvert f^{\prime}(\xi) \rvert \leqslant \sup_{t\in \mathbb{R}}{\lvert f^{\prime}(t) \rvert }\cdot\lvert x-y \rvert . 
$$
Hence $f\in \mathcal{L}$.
#### B4) If $f\in \mathcal{B}$ and there exists $B>0$ such that for any $x,y\in \mathbb{R}$, $\lvert x-y \rvert\leqslant 1$ implies $\lvert f(x)-f(y) \rvert\leqslant B\lvert x-y \rvert$. Prove that $f\in \mathcal{L}$.
Proof: Suppose $M=\sup_{x\in \mathbb{R}}{\lvert f(x) \rvert}$, then for any $x,y\in \mathbb{R}$, 
$$
\lvert f(x)-f(y) \rvert \leqslant \max\{ B,2M \}\lvert x-y \rvert .
$$
Hence $f\in \mathcal{L}$.
### Part 2: Solution of $(\star)$ when $\lvert \lambda \rvert<1$.
Suppose $f\in \mathcal{B}\cap \mathcal{L}$ and $\lvert \lambda \rvert<1$.
#### B5) Suppose $F$ satisfy $(\star)$. Prove that for any $x\in \mathbb{R}$ and $n\in \mathbb{Z}_{\geqslant 1}$, 
$$
\begin{align}
F(x)&=\lambda ^{n}F(x+na)+\sum_{k=0}^{n-1}{\lambda ^{k}f(x+ka)}, \\
F(x)&= \lambda ^{-n}F(x-na)-\sum_{k=1}^{n}{\lambda ^{-k}f(x-ka)}.
\end{align}
$$
Proof: Use induction and apply $(\star)$.
(Let $n\to \infty$ and we can obtain $F$ formally.)
#### B6) Prove that for any $x\in \mathbb{R}$, $\sum_{k\geqslant 0}{}\lambda ^{k}f(x+ka)$ converges.
Proof: Since $f$ is bounded, 
$$
\left\lvert  \sum_{k=n}^{n+p}{\lambda ^{k}f(x+ka)}  \right\rvert\leqslant \frac{M\lambda ^{n}}{1-\lambda}.
$$
Hence the series converges.
#### B7-8) Let $F(x)=\sum_{k\geqslant 0}^{}{\lambda ^{k}f(x+ka)}$. Prove that $F\in \mathcal{L}$ and solve $(\star)$.
Proof: For any $x,y\in \mathbb{R}$,
$$
\lvert F(x)-F(y) \rvert \leqslant \sum_{k=0}^{\infty}{\lambda ^{k}\lvert f(x+ka)-f(y+ka) \rvert }\leqslant \sum_{k=0}^{\infty}{\lambda ^{k}C\lvert x-y \rvert }=\frac{C}{1-\lambda}\lvert x-y \rvert .
$$
Hence $F\in \mathcal{L}$. For any $x\in \mathbb{R}$,
$$
F(x)-\lambda F(x+a)=\sum_{k\geqslant 0}^{}{\lambda ^{k}f(x+ka)}-\sum_{k\geqslant 1}{\lambda ^{k}f(x+ka)}=f(x).
$$
Therefore $F$ solves $(\star)$.
If $F^{\prime}$ also solves $(\star)$, let $G=F-F^{\prime}$, then $G$ is bounded and 
$$
G(x)=\lambda G(x+a),\,x\in \mathbb{R}.
$$
Therefore for any $x\in \mathbb{R}$,
$$
\lvert G(x) \rvert =\lambda ^{n}\lvert G(x+na) \rvert \leqslant M\lambda ^{n}\to 0.
$$
Hence $G\equiv 0$ and $F\equiv F^{\prime}$, so the solution to $(\star)$ is $F$.
#### B9) Solve $(\star)$ when $f(x)\equiv 1$ and $f(x)=\cos x$. 
Solution: When $f(x)\equiv 1$, 
$$
F(x)=\sum_{k=0}^{\infty}{\lambda ^{k}f(x+ka)}=\frac{1}{1-\lambda}.
$$
When $f(x)=\cos x$,
$$
\begin{align}
F(x)&=\sum_{k=0}^{\infty}{\lambda ^{k}\cos(x+ka)}=\sum_{k=0}^{\infty}{\lambda ^{k} \frac{e^{i(x+ka)}+e^{-i(x+ka)}}{2}}=\frac{1}{2} \left( \frac{e^{ix}}{1-\lambda e^{ia}}+\frac{e^{-ix}}{1-\lambda e^{-ia}} \right) \\
&= \frac{\cos x-\lambda \cos (x-a)}{1-2\lambda \cos a+\lambda^{2}}.
\end{align}
$$
### Part 3: Solution of $(\star)$ when $\lvert \lambda \rvert>1$.
#### B10) Solve $(\star)$ as in Part 2.
Solution: By B5), the solution should be 
$$
F(x)=-\sum_{k=1}^{\infty}{\lambda ^{-k}f(x-ka)}.
$$
$f\in \mathcal{B}$ implies the series converges. Same as B8) we can show that the solution to $(\star)$ is unique, and like B7) we can show that $F\in \mathcal{L}$ and $F$ satisfy $(\star)$.
#### B11) Solve $(\star)$ for $f(x)\equiv 1$ and $f(x)=\cos x$.
Solution: When $f(x)\equiv1$,
$$
F(x)=-\sum_{k=1}^{\infty}{\lambda ^{-k}f(x-ka)}=\frac{1}{1-\lambda}.
$$
When $f(x)=\cos x$, same as B9) we have
$$
F(x)=-\sum_{k=1}^{\infty}{\lambda ^{-k}f(x-ka)}=\frac{\cos x-\lambda \cos (x-a)}{1-2\lambda \cos a+\lambda^{2}}.
$$
### Part 4: The Case when $\lvert \lambda \rvert=1$.
#### B12) Suppose $\lambda=1$. Prove that there exists $F\in \mathcal{L}$ not identically zero, such that for any $x$, $F(x)-F(x+a)=0$.
Proof: Let $F(x)=\lvert \{ x /a \}-1 /2 \rvert$, then $F(x)=F(x+a)$, and $F\in \mathcal{L}\cap \mathcal{B}$.
#### B13) Let $f(x)=\cos x$ in $(\star)$. Prove that if $\cos a\neq 1$, then there exists $F\in \mathcal{L}$ that solves $(\star)$. Determine whether the solution is unique.
Proof: The equation $(\star)$ becomes $F(x)=F(x+a)+\cos x$. Let 
$$
F(x)=\{ x /a \}-\sum_{k=0}^{\lfloor x /a \rfloor-1}{\cos(k+\{ x /a \})a},
$$
(if $x<0$ the sum is viewed as from $\lfloor x /a \rfloor-1$ to $0$) then clearly $F(x)=F(x+a)+\cos x$, and $F$ is bounded since $\cos a \neq 1$.
For any $x,y\in \mathbb{R}$, if $\lvert x-y \rvert<a /2$, then suppose $na\leqslant x<y<(n+1)a$,
$$
\begin{align}
\lvert F(x)-F(y) \rvert &\leqslant \left\lvert  \left\{  \frac{x}{a}  \right\}-\left\{  \frac{y}{a}  \right\}  \right\rvert +2\left\lvert  \sin \frac{\{ x /a \}-\{ y /a \}}{2}a  \right\rvert \cdot\left\lvert  \sum_{k=0}^{n-1}{\sin (k+(\{ x /a \}+\{ y /a \}) /2) a}  \right\rvert \\
&\leqslant \frac{\lvert x-y \rvert }{a}+\frac{\lvert x-y \rvert }{\lvert \sin a \rvert }.
\end{align}
$$
Hence $F\in \mathcal{L}$ by B4), so $F$ solves $(\star)$.
The solution is clearly not unique since we can add any factor of the $F$ in B12) to the solution.
#### B14) Following B13), if $a=2\pi$, then $(\star)$ has no solution in $\mathcal{L}$.
Proof: If $a=2\pi$ and $F$ is a solution to $(\star)$, then for any $x,y\in \mathbb{R}$,
$$
\lvert F(x+2\pi n)-F(y+2\pi n) \rvert =n \lvert \cos x-\cos y \rvert \to \infty.
$$
Hence $F\not\in \mathcal{L}$.
#### B15) Suppose $\lambda=-1$, Prove that there exists $F\in \mathcal{L}$ not identically zero, such that for any $x$, $F(x)+F(x+a)=0$.
Proof: Let $F(x)=\lvert 2\{ x /2a \}-1 \rvert -1 /2$, then $F\in \mathcal{L}$ and $F(x)+F(x+a)=0$.
#### B16) Suppose $\lambda=-1$, $a=1$, $f\in \mathcal{L}$ is monotonically decreasing and $\lim_{ x \to \infty }f(x)=0$, $f$ is differentiable and $f^{\prime}$ is increasing. Prove that there exists $F\in \mathcal{L}$ such that
$$
F(x)+F(x+1)=f(x),\,x\in \mathbb{R}.
$$
Further show that if we require $F\in \mathcal{L}$ and $\lim_{ x \to \infty }F(x)=0$, then the solution is unique.
Proof: Since $f$ is monotonically decreasing, for any $x\in \mathbb{R}$, the series
$$
F(x)=\sum_{n=0}^{\infty}{(-1)^{n}f(x+n)}
$$
converges.
For any $x,y\in \mathbb{R}$, $\lvert x-y \rvert<1$, there exists $\xi_{n}\in(x+n,y+n)$ such that $f(y+n)-f(x+n)=(y-x)f^{\prime}(\xi_{n})$, hence (by B3) $f^{\prime}$ is bounded)
$$
\lvert F(x)-F(y) \rvert =\lvert y-x \rvert\cdot \left\lvert  \sum_{n=0}^{\infty}{(-1)^{n}f^{\prime}(\xi_{n})}  \right\rvert \leqslant \sup_{t\in \mathbb{R}}{\lvert f^{\prime}(t) \rvert }\cdot \lvert y-x \rvert .
$$
so $F\in \mathcal{L}$. Clearly $F(x)+F(x+1)=f(x)$, so $F$ solves $(\star)$, and $0<F(x)<f(x)$ so $\lim_{ x \to \infty }F(x)=0$.
If $F^{\prime}\in \mathcal{L}$ also satisfy $(\star)$ and $\lim_{ x \to \infty }F(x)=0$, let $G=F-F^{\prime}$, then $G(x)+G(x+1)=0$ and $\lim_{ x \to \infty }G(x)=0$. Hence $G(x)=\lim_{ n \to \infty }(-1)^{n}G(x+n)=0$ for any $x\in \mathbb{R}$, so $G\equiv 0$. Therefore $F$ is the unique solution.
# HW8 Strum-Liouville Theory
## PSA: Convex functions
#### A1)
(1) $f(x)=\lvert x \rvert,\, I=\mathbb{R}$ is convex, since
$$
\lvert \lambda x+(1-\lambda)y \rvert\leqslant \lambda \lvert x \rvert +(1-\lambda)\lvert y \rvert .
$$
(2) $f(x)=x^p, \, p\in \mathbb{R},\, I=\mathbb{R}_{>0}$
$f^{\prime\prime}(x)=p(p-1)x^{p-2}$ so $f$ is concave if $p\in [0,1]$ and convex if $p\in(-\infty,0]\cup[1,\infty)$.
(3) $f(x)=\sin x,\,I=[0,\pi]$ is concave since $f^{\prime\prime}(x)=-\sin x\leqslant 0$ when $x\in[0,\pi]$.
(4) $f(x)=x\log x, \, I=\mathbb{R}_{\geqslant 0}$ is (strictly) convex since $f^{\prime\prime}(x)= 1 /x>0$.
(5) $f(x)=\mathbf{1}_{\{ 0,1 \}},\, I=[0,1]$ is convex since 
$$
f(\lambda x+(1-\lambda)y)=0\leqslant \lambda f(x)+(1-\lambda)f(y).
$$
#### A2) Prove the following properties:
1. If $f,g$ are convex on $I$, then $f+g$ is convex on $I$.
	Proof: By definition,$$
	(f+g)(\lambda x+(1-\lambda)y)\leqslant \lambda(f+g)(x)+(1-\lambda)(f+g)(y),
	$$so $f+g$ is convex.
2. If $f,g$ are monotonically increasing, non-negative, convex functions on $I$, then $fg$ is convex.
	Proof: Note that 
$$
f(\lambda x+(1-\lambda)y)g(\lambda x+(1-\lambda)y)\leqslant (\lambda f(x)+(1-\lambda)f(y))\cdot(\lambda g(x)+(1-\lambda)g(y))
$$
and 
$$
\begin{align}
&\lambda f(x)g(x)+(1-\lambda)f(y)g(y)-(\lambda f(x)+(1-\lambda)f(y))(\lambda g(x)+(1-\lambda)g(y)) \\
=& \lambda(1-\lambda)(f(x)-f(y))(g(x)-g(y))\geqslant 0.
\end{align}
$$
hence 
$$
(fg)(\lambda x+(1-\lambda)y)\leqslant \lambda(fg)(x)+(1-\lambda)(fg)(y).
$$
3. If $f$ is convex on $I$, $g$ is a monotonically increasing convex function on $J\supset f(I)$, then $g\circ f$ is convex.
	Proof: Note that 
$$
g(f(\lambda x+(1-\lambda)y))\leqslant g(\lambda f(x)+(1-\lambda)f(y))\leqslant \lambda g(f(x))+(1-\lambda)g(f(y)).
$$
hence $g\circ f$ is convex.
4. If $f,g$ are convex on $I$, then $h(x)=\max\{ f(x),g(x) \}$ is convex.
	Proof: For any $x,y,\lambda$ and $t=\lambda x+(1-\lambda)y$, suppose $h(t)=f(t)$, then 
$$
h(t)\leqslant \lambda f(x)+(1-\lambda)f(y)\leqslant \lambda h(x)+(1-\lambda)h(y)
$$
hence $h$ is convex.
#### A3) Suppose $f\in C((a,b))$. If for any $x,y\in(a,b)$, $f\left( \frac{x+y}{2} \right)\leqslant \frac{f(x)+f(y)}{2}$, prove that $f$ is convex.
Proof: For any $x,y\in(a,b)$ and $\lambda \in [0,1]$, we need to prove that 
$$
f(\lambda x+(1-\lambda)y)\leqslant \lambda f(x)+(1-\lambda)f(y).
$$
Note that it holds for any dyadic number $\lambda$, since the cases $\lambda=0,1,1 /2$ is trivial, and for $\lambda=(2m+1) /2^t$, let $u= m /2^{t-1}, v=(m+1) /2^{t-1}$, then
$$
\begin{align}
f(\lambda x+(1-\lambda)y)&\leqslant \frac{f(ux+(1-u)y)+f(vx+(1-v)y)}{2} \\
& \leqslant \lambda f(x)+(1-\lambda)f(y).
\end{align}
$$
Now since $f\in C((a,b))$, for any $\lambda \in(0,1)$ there is a sequence of dyadic numbers $\lambda_{n}$ such that $\lim_{ n \to \infty }\lambda_{n}=\lambda$, hence
$$
\begin{align}
f(\lambda x+(1-\lambda)y)&=\lim_{ n \to \infty } f(\lambda_{n}x+(1-\lambda_{n})y)\leqslant \lim_{ n \to \infty } \lambda_{n}f(x)+(1-\lambda_{n})f(y) \\
&= \lambda f(x)+(1-\lambda)f(y).
\end{align}
$$
#### A4) $f$ is a convex function on $[a,b]$. Prove that if there exists $c\in(a,b)$ such that $f(c)\geqslant \max \{ f(a),f(b) \}$ then $f$ is constant.
Proof: For any $t\in(a,b)$, let $\lambda=(t-a) /(b-a)$ then
$$
f(t)=f(\lambda a+(1-\lambda)b)\leqslant \lambda f(a)+(1-\lambda)f(b)\leqslant \max\{ f(a),f(b) \}.
$$
By $f(c)\geqslant \max \{ f(a),f(b) \}$ we know that $f(a)=f(b)$. If for some $t\in(a,b)$, $f(t)\neq f(a)$, suppose $c\in(a,t)$, then
$$
f(c)=\lambda f(a)+(1-\lambda)f(t)<f(a)
$$
a contradiction. Hence $f(t)=f(a)$ for all $t\in[a,b]$.
#### A5) $f$ is convex on $\mathbb{R}$. Prove that if $f$ has an upper-bound, then $f$ is constant.
Proof: Otherwise suppose that $f(a)<f(b)$, where $a<b$. (If $f(a)>f(b)$ let $g(x)=f(-x)$). Let $x_{0}=a,x_{1}=b,x_{n}=a+n(b-a)$, then
$$
f(x_{n+1})-f(x_{n})\geqslant f(x_{n})-f(x_{n-1})\geqslant f(b)-f(a),
$$
hence $f(x_{n})\geqslant f(a)+n(f(b)-f(a))\to \infty$, leading to contradiction.
#### A6) $f$ is strictly convex on $I$. Suppose $f(x_{0})$ is a local minimum of $f$, prove that $x_{0}$ is the unique global minimum point of $f$.
Proof: Suppose there is another $x_{1}\neq x_{0}$ such that $f(x_{1})\leqslant f(x_{0})$, then let $x_{n}=x_{0}+n(x_{1}-x_{0})$. Since $f$ is strictly convex, $f(x_{n})< \max\{ f(x_{1}),f(x_{0}) \}=f(x_{0})$, contradicting the fact that $f(x_{0})$ is a local minimum.
#### A7) $I$ is an open interval. Prove that $f$ is convex on $I$, iff for any $x_{0}\in I$, there exists $a\in \mathbb{R}$, such that for any $x\in I$, $f(x)\geqslant a(x-x_{0})+f(x_{0})$.
Proof: Suppose $f$ is convex on $I$, then the any $x_{0}\in I$, the function $g(x)=\frac{f(x)-f(x_{0})}{x-x_{0}}$ is monotonically increasing. Hence we can let $a=\sup_{x<x_{0}}{g(x)}<\infty$.
If for any $x_{0}\in I$, and and $x\in I$, $f(x)\geqslant g(x_{0})(x-x_{0})+f(x_{0})$, then for any $x,y\in I$ and $\lambda \in(0,1)$, let $t=\lambda x+(1-\lambda)y$,
$$
\begin{align}
\lambda f(x)+(1-\lambda)f(y)&\geqslant \lambda (f(t)+(x-t)g(t))+(1-\lambda)(f(t)+(1-\lambda)(y-t)g(t)) \\
&= f(t)=f(\lambda x+(1-\lambda)y).
\end{align}
$$
Hence $f$ is convex.

## PSB
#### B1) Prove the following inequalities:
(1)
$$
x-\frac{x^{2}}{2}<\log(1+x)<x,\,x>0.
$$
Proof: If $f(x)=\log(x+1)-x$, then $f^{\prime}(x)=\frac{1}{x+1}-1<0$ hence $f(x)<f(0)=0$. Let $g(x)=\log(1+x)-x+x^{2} /2$, then $g^{\prime}(x)=\frac{1}{x+1}+(x+1)-2\geqslant 0$, hence $g(x)>g(0)=0$.
(2)
$$
(x^\alpha+y^\alpha)^{1 /\alpha}>(x^\beta+y^\beta)^{1/ \beta},\,x,y>0,\beta>\alpha>0.
$$
Proof: Assume that $x^\alpha+y^\alpha=1$, then $0<x,y<1$, so
$$
x^\beta+y^\beta<x^\alpha+y^\alpha<1\implies (x^\beta+y^\beta)^{1/\beta}<(x^\alpha+y^\alpha)^{1/\alpha}.
$$
(3)
$$
x-\frac{x^3}{6}<\sin x<x,\,x>0.
$$
Proof: Let $f(x)=\sin x-x$, then $f^{\prime}(x)=\cos x-1\leqslant 0$, so $f(x)<f(0)=0$. Let $g(x)=\sin x-x+x^3 /6$, then $g^{\prime}(x)=\cos x-1+x^2/2$, $g^{\prime\prime}(x)=x-\sin x>0$, so $g^{\prime}(x)> g(0)=0$ and $g(x)>g(0)=0$.
(4)
$$
\left( \frac{1+x}{2} \right)^p+\left( \frac{1-x}{2} \right)^p \leqslant \frac{1}{2}(1+x^p),\,p\in[2,\infty),x\in[0,1].
$$
Proof: ???
#### B2) Find all $a>0$ such that $a^{x}\geqslant x^{a}$ for any $x>0$.
Solution: $f(x)=x^{1/x}$ then $f^{\prime}(x)=x^{1/x} \frac{1-\log x}{x^{2}}$ hence $f$ has a unique minimum at $e$.
#### B3) Prove that for any $x_{i},t_{i},i=1,2,\cdots,n$, $\sum_{i=1}^{n}{t_{i}}=1$,
$$
\left( \sum_{i=1}^{n}{t_{i}x_{i}} \right)^{\sum_{i=1}^{n}{t_{i}x_{i}}}\leqslant \prod_{i=1}^{n}{x_{i}^{t_{i}x_{i}}}.
$$
Proof: Let $f(x)=x\log x$, then $f^{\prime\prime}(x)=1 /x>0$, so $f$ is convex. By Jensen’s inequality, 
$$
\sum_{i=1}^{n}{t_{i}f(x_{i})}\geqslant f\left( \sum_{i=1}^{n}{t_{i}x_{i}} \right)
$$
hence 
$$
\left( \sum_{i=1}^{n}{t_{i}x_{i}} \right)^{\sum_{i=1}^{n}{t_{i}x_{i}}}\leqslant \prod_{i=1}^{n}{x_{i}^{t_{i}x_{i}}}.
$$
and equality holds iff $x_{i}=x_{1}$.
#### B4) Prove that for any $a,b>0$, $1 /p+1 /q=1$, 
$$
ab\leqslant \frac{a^{p}}{p}+\frac{b^{q}}{q}, \, \text{if} \,p>1;\,ab\geqslant \frac{a^{p}}{p}+\frac{b^{q}}{q},\,\text{if}\, p<1.
$$
Proof: The function $-\log x$ is convex, so when $p>1$, $q>1$, then
$$
\log\left( \frac{a^{p}}{p}+\frac{b^{q}}{q} \right)\geqslant \frac{1}{p}\log a^{p}+\frac{1}{q}\log b^{q}
$$
so $ab\leqslant \frac{a^{p}}{p}+\frac{b^{q}}{q}$.
When $p<1$, then $pq<0$, so likewise $ab\geqslant \frac{a^{p}}{p}+\frac{b^{q}}{q}$.

#### B5) Prove that if $x_{i},y_{i}\geqslant 0,i=1,2,\cdots,n$, $1 /p+1 /q=1$, then
$$
\sum_{i=1}^{n}{x_{i}y_{i}}\leqslant \left( \sum_{i=1}^{n}{x_{i}^{p}} \right)^{1/p}\left( \sum_{i=1}^{n}{y_{i}^{q}} \right)^{1/q},\,\text{if}\,p>1;
$$
and the inequality reverses when $p<1$.
Proof: Assume that $\sum_{i=1}^{n}{x_{i}^p}=\sum_{i=1}^{n}{y_{i}^{q}}=1$, then by B4), if $p>1$,
$$
\sum_{i=1}^{n}{x_{i}y_{i}}\leqslant \sum_{i=1}^{n}{\frac{x_{i}^{p}}{p}+\frac{y_{i}^{q}}{q}}=\frac{1}{p}+\frac{1}{q}=1.
$$
The case $p<1$ is similar.

## PSC
#### C1) Suppose $f\in C([0,1])$, $g$ is differentiable on $[0,1]$ and $g(0)=0$. If there is a constant $\lambda\neq 0$, such that for any $x\in[0,1]$, $\lvert g(x)f(x)+\lambda g^{\prime}(x) \rvert\leqslant \lvert g(x) \rvert$, prove that $g(x)\equiv 0$.
Proof: Otherwise assume that $\forall \varepsilon>0\exists t\in(0,\varepsilon)$, such that $g(t)\neq 0$. Let $C=(1+\sup_{x\in[0,1]}{\lvert f(x) \rvert}) /\lambda$, then $\lvert g^{\prime}(x) \rvert\leqslant C\lvert g(x) \rvert,\forall x\in[0,1]$. For any $t\in(0,1)$, there exists $\xi \in[0,t]$ such that $g(t)=g(0)+tg^{\prime}(\xi)$, hence
$$
\frac{\lvert g(t) \rvert }{t}=\lvert g^{\prime}(\xi) \rvert \leqslant C \sup_{\xi \in[0,t]}{\lvert g(\xi) \rvert }.
$$
For any $t>0$ suppose $\lvert g(s) \rvert=\sup_{\xi \in[0,t]}{\lvert g(\xi) \rvert}>0$, then $\lvert g(s) \rvert /s\leqslant C\lvert g(s) \rvert$ hence $t\geqslant s\geqslant \frac{1}{C}$, a contradiction.
#### C2) $f$ is twice differentiable on $(-1,1)$, $f(0)=f^{\prime}(0)=0$. If for any $x\in(-1,1)$, $\lvert f^{\prime\prime}(x) \rvert\leqslant \lvert f(x) \rvert+\lvert f^{\prime}(x) \rvert$, prove that $f(x)\equiv 0$.
Proof: We prove that $f^{\prime\prime}(x)\equiv 0$. Otherwise suppose $\forall \varepsilon>0$, $\exists x\in[0,\varepsilon]$, $f^{\prime\prime}(x)\neq 0$. Note that
$$
\lvert f^{\prime\prime}(x) \rvert \leqslant \lvert f(x) \rvert +\lvert f^{\prime}(x) \rvert \leqslant \left( \frac{x^{2}}{2}+\lvert x \rvert  \right) \sup_{y\in[0,x]}{\lvert f^{\prime\prime}(y) \rvert }.
$$
Since $f^{\prime\prime}(0)=0$, take $x\in[0,1 /2]$ such that $f^{\prime\prime}(x)\neq 0$, and suppose $\lvert f^{\prime\prime}(t) \rvert=\sup_{y\in[0,x]}{\lvert f^{\prime\prime}(y) \rvert}$, then $\lvert f^{\prime\prime}(t) \rvert\leqslant (t^{2} /2+t) \lvert f^{\prime\prime}(t) \rvert$, a contradiction.

#### C3) $f$ is $n$-times differentiable on $\mathbb{R}$, $f(0)=f^{\prime}(0)=\cdots=f^{(n-1)}(0)=0$. If there exists $C\in \mathbb{R}_{>0}$ and $\mathscr{l}\in \mathbb{Z}_{\geqslant 0}$ such that for any $x\in \mathbb{R}$, $\lvert f^{(n)}(x) \rvert\leqslant C\lvert f^{(\mathscr{l})}(x) \rvert$. Prove that $f(x)\equiv 0$.
Proof: We can assume that $\mathscr{l}=0$. Since $f^{(k)}(x)=0, \forall 0\leqslant k<n$, we have
$$
\lvert f^{(n)}(x) \rvert \leqslant C\lvert f(x) \rvert \leqslant C \frac{x^{n}}{n!} \sup_{y\in[0,x]}{\lvert f^{(n)}(y) \rvert }.
$$
Hence for any $x\in[0,\varepsilon]$, $\varepsilon= (n! /C)^{1/n}$, $f^{(n)}(x)=0$, so $f^{(k)}(x)=0$ for all $x\in[0,\varepsilon], 0\leqslant k<n$. Likewise we get $f(x)\equiv 0$.

#### C4) $n\in \mathbb{Z}_{>0}$, prove that the polynomial $P(x)=\sum_{k=0}^{n+1}{\binom{n+1}{k}(-1)^{k}(x-k)^{n}}\equiv 0$.
Proof: We know the identity
$$
\sum_{k=0}^{n}{\binom{n}{k}(-1)^{k}k^{l}}=0,\,\forall 0\leqslant l\leqslant n-1.
$$
Since $\Delta ^{n}x^{l}\equiv 0$
Likewise by considering $f(t)=(x-t)^{n}$ we have $P(x)\equiv 0$.
(Or we can use C3)

#### C5) $f\in C^{\infty}(\mathbb{R})$. Assume there exists $C>0$ such that for any $n\in \mathbb{Z}_{\geqslant 0}$ and $x\in \mathbb{R}$, $\lvert f^{(n)}(x) \rvert\leqslant C$.
i. Prove that given an arbitrary $x_{0}\in \mathbb{R}$, 
$$
f(x)=\sum_{k=0}^{\infty}{\frac{f^{(k)}(x_{0})}{k!}}(x-x_{0})^{k},\, \forall x\in \mathbb{R}.
$$
Proof: The Lagrange remainder 
$$
R_{n}(x)= \frac{f^{(n+1)}(\xi)}{(n+1)!}(x-x_{0})^{n+1}
$$
tends to zero as $n\to \infty$, hence the Taylor series
$$
f(x)=\lim_{ n \to \infty } \sum_{k=0}^{n}{ \frac{f^{(k)}(x_{0})}{k!}(x-x_{0})^{k}}+R_{n}(x)=\sum_{k=0}^{\infty}{ \frac{f^{(k)}(x_{0})}{k!}(x-x_{0})^{k}}.
$$
ii. $E\subset \mathbb{R}$ is an infinite bounded set. Prove that if $f(E)=\{ 0 \}$, then $f\equiv 0.$
Proof: Suppose $E\subset[-M,M]$, then by Bolzano-Weierstrass theorem, there exists a sequence $\{ z_{n} \}_{n\geqslant 1}\subset E$ such that $z=\lim_{ n \to \infty }z_{n}$ exists. Since $f\in C(\mathbb{R})$, $f(z)=\lim_{ n \to \infty }f(z_{n})=0$, so
$$
f(x)=\sum_{k=0}^{\infty}{\frac{f^{(k)}(z)}{k!}(x-z)^{k}}.
$$
If $f$ does not vanish on $\mathbb{R}$, then take the least $m>0$ such that $f^{(m)}(z)\neq 0$. When $z_{n}\to z$, 
$$
0= \frac{f^{(m)}(z)}{m!}+\sum_{k=m+1}^{\infty}{\frac{f^{(k)}(z)}{k!}}(x-z)^{k-m}
$$
which leads to contradiction. Hence $f$ vanishes on $\mathbb{R}$.
#### C6) Assume $f\in C^{2}((0,1))$, $\lim_{ x \to 1^{-} }f(x)=0$. If there exists $C>0$, such that for any $x\in(0,1)$, $(1-x)^{2}\lvert f^{\prime\prime}(x) \rvert\leqslant C$. Prove that $\lim_{ x \to 1^{-}}(1-x)f^{\prime}(x)=0$.
Proof: For any $0<x<y<1$, there exists $\xi \in(x,y)$ such that
$$
f(y)=f(x)+(y-x)f^{\prime}(x)+ \frac{(y-x)^{2}}{2}f^{\prime\prime}(\xi).
$$
For any $\lambda>0$, let $y= (\lambda+x) / (\lambda+1)\in(x,1)$, then
$$
\lvert (y-x)f^{\prime}(x) \rvert \leqslant \lvert f(y) \rvert +\lvert f(x) \rvert +\frac{\lambda^{2}}{2}(1-y)^{2}\lvert f^{\prime\prime}(\xi) \rvert \leqslant \lvert f(y) \rvert +\lvert f(x) \rvert +\frac{C\lambda^{2}}{2}.
$$
Therefore
$$
\lvert (1-x)f^{\prime}(x) \rvert \leqslant (\lvert f(t) \rvert +\lvert f(x) \rvert ) \frac{\lambda+1}{\lambda}+\frac{1}{2}\lambda(\lambda+1)C
$$
Hence for any $\lambda>0$,
$$
\lim_{ x \to 1^{-} } \lvert (1-x)f^{\prime}(x) \rvert \leqslant \frac{1}{2}\lambda(\lambda+1)C\to 0,
$$
so $\lim_{ x \to 1^{-} }(1-x)f^{\prime}(x)=0$.
## PSD
Calculate $\sup_{x\in I}{f(x)}$ and $\inf_{x\in I}{f(x)}$:
#### D1) $f(x)=\frac{(\log x)^{2}}{x}$, $I=\mathbb{R}_{>0}$
Solution: Let $y=\log x\in \mathbb{R}$, then $f(x)=y^{2}e^{-y}$.
$$
\frac{\mathrm{d}}{\mathrm{d}y}y^{2}e^{-y}=ye^{-y}(2-y).
$$
Hence $\sup_{x\in I}{f(x)}=f(e^{2})=4 e^{-2}$, $\inf_{x\in I}f(x)=\min\{ f(0),f(\infty) \}=0$.
#### D2) $f(x)=\lvert x(x^{2}-1) \rvert$, $I=\mathbb{R}$
Solution: $\sup_{}=\infty,\inf=0$.
#### D3) 
$$
f(x)=\frac{x(x^{2}+1)}{x^{4}-x^{2}+1},\,I=\mathbb{R}.
$$
Solution: Note that
$$
2(x^4-x^{2}+1)-x(x^{2}+1)=(x^{2}-1)^{2}+(x-1)^{2}(x^{2}+x+1)\geqslant 0.
$$
Therefore $f(x)\leqslant 2$ where equality holds at $x=1$. Since $f(x)=f(-x)$, $\sup_{}=2,\inf=-2$.
#### D4) 
$$
f(x)=x^{1 /3}(1-x)^{2/3},\, I=(0,1).
$$
Solution: By AM-GM, $f(x)\leqslant \frac{2^{2/3}}{3}$ where equality holds at $x=1 /3$. Hence $\sup_{}= \frac{2^{2/3}}{3},\inf=0$.
#### D5)
$$
f(x)=\left( 1+x+\frac{x^{2}}{2!}+\cdots+\frac{x^{n}}{n!} \right)e^{-x},\,I=\mathbb{R}.
$$
Solution: $f^{\prime}(x)=-e^{-x} \frac{x^{n}}{n!}$, so if $n$ is even, $\sup_{}=\infty,\inf=0$, and if $n$ is odd, $\sup_{}=1,\inf=-\infty$.
#### D6) $f(x)=\sin ^{2m}x\cos ^{2n}x$, $I=\mathbb{R}$.
Solution: Let $t=\sin ^{2}x\in[0,1]$, then $f(x)=t^{m}(1-t)^{n}\in[0, n^{n}m^{n}/(n+m)^{n+m}]$.
## PSE
Compare the two functions (or real numbers).
#### E1) $f(x)=e^{x}$, $g(x)=1+xe^{x}$, $x>0$.
Solution: The case $x\geqslant 1$ is trivial. If $x\in(0,1)$, then
$$
e^{x}=\sum_{n=0}^{\infty}{\frac{x^{n}}{n!}}\leqslant \sum_{n=0}^{\infty}{x^{n}}=\frac{1}{1-x},
$$
hence $f(x)\leqslant g(x)$. Therefore $f(x)\leqslant g(x)$ for all $x>0$.
#### E2) $f(x)=xe^{x/2}$, $g(x)=e^{x}-1$, $x>0$.
Solution: ($x /2\leqslant \sinh(x /2)$) Consider $h(x)=e^{x /2}-e^{-x/2}-x$, then $h(0)=0$ and 
$$
h^{\prime}(x)=\frac{1}{2}(e^{x/2}+e^{{-x/2}}-2)\geqslant 0.
$$
Hence $h(x)\geqslant 0$, i.e. $g(x)\geqslant f(x)$ for all $x>0$.
#### E3) $f(x)=\left( \frac{x+1}{2} \right)^{(x+1)}$, $g(x)=x^{x}$, $x>0$.
Solution: Consider $h(x)=x\log x-(x+1)\log \frac{x+1}{2}$, then $h(1)=0$ and
$$
h^{\prime}(x)=\log \frac{2x}{x+1}\geqslant 0\iff x\geqslant 1.
$$
Hence $f(x)\leqslant g(x)$ for all $x>0$.
#### E4) $2^{\sqrt{ 2 }}$ and $e$.
Solution: Note that
$$
\log 2= \sum_{n=1}^{\infty}{\frac{1}{2^{n}n}}\leqslant \frac{2}{3}+\sum_{n=4}^{\infty}{\frac{1}{2^{n}\cdot 4}}=\frac{2}{3}+\frac{1}{32}<\frac{2}{3}+\frac{1}{30}=0.7<\frac{1}{\sqrt{ 2 }},
$$
hence $2^{\sqrt{ 2 }}<e$.
#### E5) $f(x)=\log(1+\sqrt{ 1+x^{2} })$, $g(x) =1 /x+\log x$, $x>0$.
Solution: Consider $h(x)=\log x+1 /x-\log(1+\sqrt{ 1+x^{2} })$, then
$$
h^{\prime}(x)=\frac{1}{x}-\frac{1}{x^{2}}-\frac{x}{(1+\sqrt{ 1+x^{2} })\sqrt{ 1+x^{2} }}\leqslant 0.
$$
$(\iff (x-1)(\sqrt{ 1+x^{2} }+1+x^{2})-x^{3}\leqslant0\iff (x—1)\sqrt{ 1+x^{2} }\leqslant x^{2})$
Therefore $h(x)\geqslant\lim_{ x \to \infty }h(x)=0$.
#### E6) $\log 8$ and $2$.
Solution: Note that
$$
\log 2= \log \frac{1}{1-\frac{1}{2}}=\sum_{n=1}^{\infty}{\frac{1}{2^{n}n}}\geqslant \sum_{n=1}^{3}{\frac{1}{2^{n}n}}=\frac{2}{3},
$$
hence $\log 8>2$.
## PSF
If $f$ satisfy $f(x)=(x-x_{0})^{r}g(x)$ in a neighborhood of $x_{0}$, where $r\in \mathbb{Z}_{\geqslant 0}$, $g$ is continuous at $x_{0}$ and $g(x_{0})\neq 0$, then we call $x_{0}$ an $r$-fold root of $f$.
#### F1) Suppose $x_{0}$ is an $r$-fold root of $f$ where $r>0$. Prove that if $g(x)=f(x) /(x-x_{0})^{r}$ is continuous, then $x_{0}$ is an $(r-1)$-fold root of $f^{\prime}$.
Proof: Suppose $f(x)=(x-x_{0})^{r}g(x)$ in the neighborhood $O(x_{0})$, then $f^{\prime}(x)=(x-x_{0})^{r}g^{\prime}(x)+r(x-x_{0})^{r-1}g(x)$ in $O(x_{0})$. Therefore let $h(x)=(x-x_{0})g^{\prime}(x)+g(x)$, then $f^{\prime}(x)=(x-x_{0})^{r-1}h(x)$ and $h(x_{0})=g(x_{0})\neq 0$, so $x_{0}$ is an $(r-1)$-fold root of $f^{\prime}$.
#### F2) Suppose $f$ is $n$-times differentiable on $\mathbb{R}$. Prove that if $f(x)=0$ has $n+1$ distinct real roots, then $f^{(n)}(x)=0$ has at least one root.
Proof: Use induction and Rolle’s mean-value theorem to prove that $f^{(n-k)}(x)$ has at least $k+1$ different real roots.
#### F3) $f$ is differentiable on $\mathbb{R}$. Suppose $f(x)=0$ has $r$ roots (counting multiplicity), then $f^{\prime}(x)=0$ has at least $r-1$ roots (counting multiplicity).
Proof: Combine F1) and F2).
#### F4) Suppose $f$ is $n$-times differentiable on $\mathbb{R}$. Prove that if $f(x)=0$ has exactly $n+1$ roots counting multiplicity, then $f^{(n)}(x)=0$ has at least one root.
Proof: Use F3) and induction.

## PSG
Let $a\in \mathbb{R}$, $f:(a,\infty)\to \mathbb{R}$ twice differentiable on $(a,\infty)$, and
$$
M_{0}:=\sup_{x\in(a,\infty)}{\lvert f(x) \rvert }, \, M_{1}:=\sup_{x\in (a,\infty)}{\lvert f^{\prime}(x) \rvert},\, M_{2}:=\sup_{x\in(a,\infty)}{\lvert f^{\prime\prime}(x) \rvert },
$$
are real numbers.
#### G1) Prove that $M_{1}^{2}\leqslant4M_{0}M_{2}$.
Proof: Let $h=\sqrt{ M_{0} /M_{2} }$, then for any $x\in (a,\infty)$, there exists $\xi \in(x,x+2h)$ such that
$$
f(x+2h)=f(x)+2hf^{\prime}(x)+2h^{2}f^{\prime\prime}(\xi)\implies f^{\prime}(x)=hf^{\prime\prime}(\xi)+\frac{f(x+2h)-f(x)}{2h}.
$$
Therefore $f^{\prime}(x)\leqslant M_{0}/h+M_{2}h=2\sqrt{ M_{0}M_{2} }$, hence $M_{1}^{2}\leqslant 4M_{0}M_{2}$.
#### G2) Let $a=-1$, consider the function
$$
f(x)=\begin{cases}
2x^{2}-1 , & x\in(-1,0), \\
\frac{x^{2}-1}{x^{2}+1}, & x\in[0,\infty),
\end{cases}
$$
verify that $f$ is twice differentiable, and $M_{0}=1,M_{1}=4,M_{2}=4$.
Proof: Note that $\displaystyle\lim_{ x \to 0^{-} }f(x)=-1=f(0)$ so $f$ is continuous, and
$$
f^{\prime}(x)=\begin{cases}
4x, & x\in(-1,0), \\
\frac{4x}{(x^{2}+1)^{2}}, & x\in[0,\infty).
\end{cases}
$$
$f^{\prime}$ is also continuous, so
$$
f^{\prime\prime}(x)=\begin{cases}
4, & x\in(-1,0), \\
4 \frac{1-3x^{2}}{(x^{2}+1)^{2}}, & x\in [0,\infty).
\end{cases}
$$
Therefore $f\in C^{2}((-1,\infty))$ and $M_{0}=1,M_{1}=4,M_{2}=4$.
#### G3) Suppose $\mathbf{f}:(a,\infty)\to \mathbb{R}^{n}$ is twice differentiable, Let $M_{0},M_{1},M_{2}$ be the least upper bounds of $\lvert \mathbf{f} \rvert,\lvert \mathbf{f^{\prime}} \rvert,\lvert \mathbf{f^{\prime\prime}} \rvert$. Prove that $M_{1}^{2}\leqslant 4M_{0}M_{2}$.
Proof: Use G1) and Cauchy-Schwarz inequality.

## Problem S: Strum-Liouville Theory
Assume the following uniqueness theorem holds:
>Theorem:
>Suppose $a(t)\in C^{1}(\mathbb{R})$, $t_{0}\in \mathbb{R}$. If $x(t),y(t) \in C^{2}(\mathbb{R})$ both satisfy the equation
> $$
x^{\prime\prime}(t)+a(t)x(t)=0,y^{\prime\prime}(t)+a(t)y(t)=0,
>$$
>and $(x(t_{0}),x^{\prime}(t_{0}))=(y(t_{0}),y^{\prime}(t_{0}))$, then $x(t)\equiv y(t)$.

(Can be proved using Exercise C3?)
For any $f:\mathbb{R}\to \mathbb{R}$, $t\geqslant 0$, denote 
$$Z_{t}(f)=\lvert \{ x\in[0,t]:f(x)=0 \} \rvert.$$
### Part 1
Let $a(t),b(t)\in C^{1}(\mathbb{R})$ and for any $t\in \mathbb{R}$, $a(t)\leqslant b(t)$. Suppose $x(t),y(t)\in C^{2}(\mathbb{R})$ satisfy the following equation
$$
x^{\prime\prime}(t)+a(t)x(t)=0,\,y^{\prime\prime}(t)+b(t)y(t)=0.
$$
Further assume that $x(t),y(t)$ are not identically zero.
#### S1) Assume $x(t_{1})=0$, if there exists $t>t_{1}$, such that $x(t)=0$. Prove that there exists $t_{2}>t_{1}$ such that $x(t_{2})=0$ and $x$ has no roots in $(t_{1},t_{2})$. We call $t_{1},t_{2}$ neighboring roots.
Proof: Consider the set $S=\{ t>t_{1}:x(t)=0 \}$, and let $t_{2}=\inf_{}{S}$. Note that $\lvert x^{\prime\prime}(t) \rvert\leqslant \lvert a(t) \rvert\cdot \lvert x(t) \rvert$, so by C3) $x^{\prime}(t_{1})\neq 0$. Assume $x^{\prime}(t_{1})>0$, since $x\in C^{2}(\mathbb{R})$, there exists $\varepsilon>0$ such that $x^{\prime}(t)>0$ for all $t\in(t_{1},t_{1}+\varepsilon)$, hence $x(t)>0$ for all $t\in(t_{1},t_{1}+\varepsilon)$. Therefore $t_{2}>t_{1}$, so by $x\in C(\mathbb{R})$, $x(t_{2})=0$ and $x$ has no roots in $(t_{1},t_{2})$.
#### S2) If $t_{2}>t_{1}$ are two neighboring roots of $x$, prove that $y$ has a root in $(t_{1},t_{2}]$.
Proof: Otherwise assume that $x,y$ are positive on $(t_{1},t_{2})$, and $y(t_{2})\neq 0$. Consider the function $h(t)=x^{\prime}y-xy^{\prime}$, then $h^{\prime}(t)=(b-a)xy\geqslant 0$, so $h(t_{2})\geqslant h(t_{1})=x^{\prime}(t_{1})y(t_{1})\geqslant 0$, but $h(t_{2})=x^{\prime}(t_{2})y(t_{2})<0$, a contradiction.
#### S3) Prove that for any $t\geqslant 0$, $Z_{t}(y)\geqslant Z_{t}(x)-1$.
Proof: Use S2).
#### S4) Suppose $t_{2}>t_{1}$ and $x(t_{1})=x^{\prime}(t_{2})=0$, prove that
- If $y(t_{1})=0$, then there exists $t_{3}\in[t_{1},t_{2}]$, such that $y^{\prime}(t_{3})=0$.
	Proof: We can assume that $t_{2}=\inf_{}{\{ t>t_{1}:x^{\prime}(t)=0 \}}$($t_{2}>t_{1}$ since $x^{\prime}(t_{1})\neq 0$). If there is no such $t_{3}$, we can further assume that $x^{\prime}(t),y^{\prime}(t),x(t),y(t)>0$ for all $t\in(t_{1},t_{2})$. Again consider $h(t)=x^{\prime}y-xy^{\prime}$, then $h(t_{1})=0$, $h(t_{2})=-x(t_{2})y^{\prime}(t_{2})<0$, but $h^{\prime}(t)=(b-a)xy\geqslant 0$, leading to contradiction.
- If $y^{\prime}(t_{2})=0$, then there exists $t_{4}\in[t_{1},t_{2}]$ such that $y(t_{4})=0$.
	(The two theorems are similar.)
### Part 2
In this section, $p(t)\in C^{1}(\mathbb{R})$ is a positive function. $x(t),y(t)\in C^{2}(\mathbb{R})$ are not identically zero and satisfy
$$
x^{\prime\prime}(t)+p(t)x(t)=0,\,y^{\prime\prime}(t)+p(t)y(t)=0.
$$
#### S5) Prove that for any $t\geqslant 0$, $\lvert Z_{t}(x)-Z_{t}(y) \rvert\leqslant 1$.
Proof: Use S3).
#### S6) Prove that 
- If $t_{1},t_{2}$ are neighboring roots of $x$, then there exists a unique $t_{3}\in[t_{1},t_{2}]$ such that $x^{\prime}(t_{3})=0$.
	Proof: The existence of $t_{3}$ is given by Rolle’s mean-value theorem. If there exists $t_{3}<t_{4}\in[t_{1},t_{2}]$ such that $x^{\prime}(t_{3})=x^{\prime}(t_{4})=0$, then $t_{3},t_{4}\neq t_{1},t_{2}$ and there exists $t_{5}\in[t_{3},t_{4}]$ such that $x^{\prime\prime}(t_{5})=0$. Hence $x(t_{5})=0$, which contradicts the fact that $t_{1},t_{2}$ are neighboring roots. Therefore $t_{3}$ is unique.
- If $t_{1}^{\prime},t_{2}^{\prime}$ are neighboring roots of $x^{\prime}$, then there exists a unique $t_{3}^{\prime}\in[t_{1}^{\prime},t_{2}^{\prime}]$ such that $x(t_{3}^{\prime})=0$.
	Proof: Exactly the same.
#### S7) Prove that
- $t_{0}$ is a local maximum of $\lvert x(t) \rvert$ iff $x^{\prime}(t_{0})=0$.
	Proof: Trivial? 
- $t_{0}^{\prime}$ is a local maximum of $\lvert x^{\prime}(t) \rvert$ iff $x(t_{0}^{\prime})=0$.

### Part 3
In this section, $p(t)\in C^{1}(\mathbb{R})$ is monotonically decreasing and $\lim_{ t \to \infty }p(t)>0$. Denote
$$
p(\infty):=\lim_{ t \to \infty } p(t).
$$
$x(t)\in C^{2}(\mathbb{R})$ is not identically zero and
$$
x^{\prime\prime}(t)+p(t)x(t)=0.
$$
#### \*S8) Calculate
$$
\lim_{ t \to \infty } \frac{Z_{t}(x)}{t}.
$$
Solution: By S5) we can ignore initial conditions. First consider the ODE $y^{\prime\prime}(t)+p(\infty)y(t)=0$, where one solution is $y=\sin(t\sqrt{ p(\infty) })$, so $\displaystyle \lim_{ t \to \infty } Z_{t}(y) /t=\sqrt{ p(\infty) } /\pi$.
Since $p(t)\geqslant p(\infty)$, by S3) we know $\displaystyle\lim_{ t \to \infty }Z_{t}(x) /t\geqslant \lim_{ t \to \infty }Z_{t}(y) /t=\sqrt{ p(\infty) } /\pi$. For any $\varepsilon>0$, there exists $M>0$ such that for any $t>M$, $p(t)<p(\infty)+\varepsilon$. By S3), $\lim_{ t \to \infty }Z_{t}(x) /t \leqslant \sqrt{ p(\infty)+\varepsilon } /\pi$. Therefore
$$
\lim_{ t \to \infty } \frac{Z_{t}(x)}{t}= \frac{\sqrt{ p(\infty) }}{\pi}.
$$
#### S9) Suppose $0\leqslant t_{1}<t_{2}<t_{3}<\cdots$ are all the roots of $x(t)$ on $[0,\infty)$, $0\leqslant t_{1}^{\prime}<t_{2}^{\prime}<\cdots$ are all the roots of $x^{\prime}(t)$ on $[0,\infty)$. Prove that the sequence $\{ \lvert x^{\prime}(t_{k}) \rvert \}_{k\geqslant 1}$ is monotonically decreasing and the sequence $\{ \lvert x(t^{\prime}_{k}) \rvert \}_{k\geqslant 1}$ is monotonically increasing, and
$$
\lim_{ k \to \infty } \lvert x^{\prime}(t_{k}) \rvert =\sqrt{ p(\infty) }\lim_{ k \to \infty } \lvert x(t_{k}^{\prime}) \rvert.
$$
Proof: Consider the (energy) function $E(t)=p(t)x^{2}(t)+{x^{\prime}}(t)^{2}$, then $E^{\prime}(t)=p^{\prime}x^{2}\leqslant 0$ so $E$ is monotonically decreasing. For $k\geqslant 1$, $E(t_{k})=x^{\prime}(t_{k})^{2}$ is decreasing, so $\{ \lvert x^{\prime}(t_{k})\rvert \}_{k\geqslant 1}$ is decreasing. Likewise, consider $F(t)=x(t)^{2}+x^{\prime}(t)^{2} /p(t)$, then $F^{\prime}(t)=-p^{\prime} (x^{\prime} /p)^{2}\geqslant 0$, so $F(t^{\prime}_{k})=x(t_{k}^{\prime})^{2}$ is increasing, and 
$$
\lim_{ k \to \infty } \lvert x^{\prime}(t_{k}) \rvert =\sqrt{ \lim_{ k \to \infty } E(t_{k}) }=\sqrt{ p(\infty)\lim_{ k \to \infty } F(t_{k}) }=\sqrt{ p(\infty) } \lim_{ k \to \infty } \lvert x(t_{k}^{\prime}) \rvert.
$$
#### \*S10) Suppose $0\leqslant \tilde{t}_{1}< \tilde{t}_{2}<\cdots$ are all the roots of $x(t)x^{\prime}(t)$ on $[0,\infty)$. Prove that the sequence $\{ \tilde{t}_{k+1}-\tilde{t}_{k} \}_{k\geqslant 1}$ is monotonically increasing and calculate its limit.
Proof: By S6), the roots of $x$ and $x^{\prime}$ appear alternating in $\{ \tilde{t}_{k} \}$. Since $t$ is a root of $x$ iff $t$ is a root of $x^{\prime\prime}$, we only need to prove that if $t_{1},t_{2}$ are neighboring roots of $x$, and $t_{3}\in[t_{1},t_{2}]$ satisfy $x^{\prime}(t_{3})=0$, then $t_{3}-t_{1}\leqslant t_{2}-t_{3}$. 
Same as before we can prove that, for $p(t),q(t),x(t),y(t)$ such that $p(0)=q(0)$, $p(t)\leqslant q(t)$, $x^{\prime}(0)=y^{\prime}(0)=0$, $x(0)=y(0)$ and
$$
x^{\prime\prime}(t)+p(t)x(t)=0,\,y^{\prime\prime}(t)+q(t)y(t)=0,
$$
then the first roots $a,b$ of $x,y$ satisfy $a\leqslant b$. 
Since the sequence is increasing, by S8) we know that 
$$\lim_{ k \to \infty }{\tilde{t}_{k+1}-\tilde{t}_{k}}=\frac{1}{2}\lim_{ t \to \infty }Z_{t}(x) /t=\sqrt{ p(\infty) }/2\pi.$$
# HW9 Stone-Weierstrass Theorem
## PSA
Assume $I=[a,b]\subset \mathbb{R}$, $V$ is a normed linear space.
#### A1) $\sigma_{1},\sigma_{2}\in \mathcal{S}$ are two partitions. Prove that for any $\varepsilon>0$, there exists a partition $\sigma$ such that $\sigma \prec \sigma_{1},\sigma\prec\sigma_{2}$ and $\lvert \sigma \rvert<\varepsilon$.
Proof: Take $n>1 /\varepsilon$, and let
$$
\sigma=\sigma_{1}\cup\sigma_{2}\cup \left\{  \frac{k}{n}a+\frac{n-k}{n}b:0\leqslant k\leqslant n  \right\}.
$$
#### A2) Consider the space of simple functions $\mathcal{E}(I)$ with range $V$. Prove that it is a linear space on $\mathbb{R}$, and the integration operator $\int_{a}^{b} : \mathcal{E}(I)\to V$ is well-defined and is linear. Use this to define Riemann integrable functions with range $V$.
Proof: For any simple function $f=\sum_{i=1}^{n}{c_{i}\mathbf{1}_{A_{i}}}$ (where $A_{i}$ are disjoint), let 
$$
\int_{a}^{b} f=\sum_{i=1}^{n}{c_{i}\mu(A_{i})}
$$
For any function $f:I\to V$, partition $\mathcal{C}=\{ x_{0},x_{1},\cdots,x_{n} \}$ and $\xi_{i}\in[x_{i-1},x_{i}]$, define 
$$
\mathcal{R}(f;\mathcal{C},\xi)=\sum_{k=0}^{n}{f(\xi_{i})(x_{i}-x_{i-1})}.
$$
Then $f$ is Riemann integrable iff $\lim_{ \lvert \mathcal{C} \rvert \to 0 }\mathcal{R}(f;\mathcal{C},\xi)$ exists.
#### A3) Suppose $f:I\to \mathbb{R}^n$ and $f_{i}$ be the components of $f$, then $f\in \mathcal{R}(I)$ iff for every $i$, $f_{i} \in \mathcal{R}(I)$. 
Proof: Note that
$$
\max \{ \lvert x_{k} \rvert  \} \leqslant\lvert (x_{1},\cdots,x_{n}) \rvert_{\mathbb{R}^n}\leqslant \lvert x_{1} \rvert +\cdots+\lvert x_{n} \rvert .
$$
Hence the limit $\lvert \underline{S}(f;\sigma)-\overline{S}(f;\sigma) \rvert=0$ iff the components of $f$ are all Riemenn integrable.
#### A4) Assume $a<c<b$, then for any $f\in \mathcal{R}(I)$, $f\vert_{[a,c]}$ and $f\vert_{[c,b]}$ are both Riemann integrable, and
$$
\int_{a}^b f= \int_{a}^{c} f+ \int_{c}^{b} f.
$$
Proof: They are both obviously Riemann integrable, and for any partition $\sigma$, let $\sigma^{\prime}=\sigma\cup \{ c \}=\sigma_{1}\cup\sigma_{2}$, where $\sigma_{1}$ and $\sigma_{2}$ are partitions of $[a,c]$ and $[c,b]$, then 
$$
\underline{S}(f;\sigma)\leqslant \underline{S}(f;\sigma^{\prime})=\underline{S}(f\vert_{[a,c]};\sigma_{1})+\underline{S}(f\vert_{[c,b]};\sigma_{2}),
$$
and the other side is the same. Hence
$$
\int_{a}^{b} f=\int_{a}^{c}f+\int_{c}^{b}f.
$$
#### A5) Prove that for any two partition $\sigma$ and $\sigma^{\prime}$, $\underline{S}(f;\sigma)\leqslant \overline{S}(f;\sigma^{\prime})$. Use this to prove that if $f\in \mathcal{R}(I)$, then $\lim_{ \lvert \sigma \rvert \to 0 }\lvert \underline{S}(f;\sigma)-\overline{S}(f;\sigma) \rvert=0$.
Proof: Let $\sigma^{\prime\prime}=\sigma\cup\sigma^{\prime}$, then
$$
\underline{S}(f;\sigma)\leqslant \underline{S}(f;\sigma^{\prime\prime})\leqslant \overline{S}(f;\sigma^{\prime\prime})\leqslant \overline{S}(f;\sigma^{\prime}).
$$
If $f\in \mathcal{R}(I)$, then $\sup_{\sigma}{\underline{S}(f;\sigma)}=\inf_{\sigma}\overline{S}(f;\sigma)$ hence 
$$
\lim_{ \lvert \sigma \rvert  \to 0 } \lvert \underline{S}(f;\sigma)-\overline{S}(f;\sigma) \rvert =0.
$$
#### A6) $f\in \mathcal{R}(I)$. Prove that if we change the value of $f$ at a finite number of points to $g$, then $g$ is Riemann integrable and $\int_{I}g=\int_{I}f$.
Proof: We can assume that $f$ and $g$ differ only at the point $c\in (a,b)$. Let $M=\sup_{x\in I}{\lvert f(x) \rvert}$. For any $\varepsilon>0$, and any partition $\sigma$, let $\sigma^{\prime}=\sigma\cup \{ c-\varepsilon,c+\varepsilon \}$, then $\lvert \underline{S}(f;\sigma^{\prime})-\underline{S}(f;\sigma) \rvert\leqslant 4\varepsilon M\to 0$.
#### A7) $f\in C([a,b])$. Assume for any $x\in I$, $f(x)\geqslant 0$ and there exists $x_{0}\in I$ such that $f(x_{0})>0$. Prove that $\int_{a}^{b}f>0$.
Proof: Since $f$ is continuous and $f(x_{0})>0$, there is an $\varepsilon>0$ such that for all $y\in(x_{0}-\varepsilon,x_{0}+\varepsilon)$, $f(y)>0$. Hence for any partition $\sigma=\{ x_{0},x_{1},\cdots,x_{n} \}$ such that $\lvert \sigma \rvert<\varepsilon /2$, there is a $k\in \{ 1,\cdots,n \}$ such that $(x_{k-1},x_{k})\subset (x_{0}-\varepsilon,x_{0}+\varepsilon)$. Hence $\mathcal{R}(f;\sigma,\xi)>0$ whenever $\lvert \sigma \rvert< \varepsilon /2$, so $\int_{a}^{b} f(x) \, \mathrm{d}x>0$.
#### A8) Suppose $f,g \in C^1(I)$, then
$$
\int f^{\prime}\cdot g=f\cdot g - \int f\cdot g^{\prime}.
$$
Proof: 
$$
d(f\cdot g)=df\cdot g+f\cdot dg.
$$
#### A9) Suppose $\Phi:\mathbb{R}\to \mathbb{R}$ is differentiable, $f$ is a continuous function, then
$$
\int (f\circ \Phi)\Phi^{\prime}=\int f.
$$
Proof:
$$
(f(\Phi(x)))^{\prime}=f^{\prime}(\Phi(x))\Phi^{\prime}(x).
$$
## PSB: Calculating Integrals
#### (1)
$$
\begin{align}
\int \frac{x^5}{1+x} \, \mathrm{d}x &= \int_{}^{} x^4-x^3+x^{2}-x+1-\frac{1}{1+x} \, \mathrm{d}x \\
&= \frac{x^5}{5}-\frac{x^4}{4}+\frac{x^3}{3}-\frac{x^{2}}{2}+x-\log(x+1)+C.
\end{align}
$$
#### (2)
$$
\int_{}^{} \sqrt{ x\sqrt{ x\sqrt{ x } } } \, \mathrm{d}x =\int_{}^{} x^{7/8} \, \mathrm{d}x =\frac{8}{15}x^{15/8}.
$$
#### (3)
$$
\begin{align}
\int_{}^{} \left( \frac{1+x}{1-x}+\frac{1-x}{1+x} \right) \, \mathrm{d}x & = \int_{}^{} \left( \frac{2}{1-x}+\frac{2}{1+x}-2 \right) \, \mathrm{d}x  \\
&= -2x+2\log \frac{1+x}{1-x}+C.
\end{align}
$$
#### (4)
$$
\int_{}^{} \frac{e^{3x}+1}{1+e^x} \, \mathrm{d}x =\int_{}^{} 1-e^x+e^{2x} \, \mathrm{d}x =x-e^x+\frac{e^{2x}}{2}+C.
$$
#### (5)
$$
\int_{}^{} \sqrt{ 1-\sin(2x) } \, \mathrm{d}x =\int_{}^{} \sqrt{ 2 }\sin\left( x-\frac{\pi}{4} \right) \, \mathrm{d}x =-\sqrt{ 2 }\cos\left( x-\frac{\pi}{4} \right)+C.
$$
#### (6)
$$
\int_{}^{} \frac{\cos(2x)}{\cos x-\sin x} \, \mathrm{d}x =\int_{}^{} \cos x+\sin x \, \mathrm{d}x =\sin x-\cos x+C.
$$
#### (7)
$$
\int_{}^{} \tan ^{2}x \, \mathrm{d}x =-x+\tan x+C.
$$
#### (8)
$$
\int_{}^{} \lvert x \rvert  \, \mathrm{d}x=\frac{x\lvert x \rvert }{2}+C.
$$
#### (9)
$$
\int_{} e^{-\lvert x \rvert } \, \mathrm{d}x =-\mathrm{sgn}(x)e^{-\lvert x \rvert }+C.
$$
#### (10)
$$
\int_{} \frac{x^{2}}{(1-x)^{2018}} \, \mathrm{d}x =\frac{1}{2017(1-x)^{2017}}-\frac{1}{1013(1-x)^{2016}}+\frac{1}{2015(1-x)^{2015}}.
$$
#### (11)
$$
\int_{}^{} \lvert x-1 \rvert  \, \mathrm{d}x = \frac{(x-1)\lvert x-1 \rvert }{2}+C.
$$
#### (12)
$$
\int_{}^{} \frac{1}{\sqrt{ b^{2}+x^{2} }} \, \mathrm{d}x =\frac{1}{b} \log \frac{1+\tan \frac{\arctan \frac{x}{b}}{2}}{1-\tan \frac{\arctan \frac{x}{b}}{2}}+C.
$$
#### (13)
Let $x=t^{2}$, then
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{\sqrt{ x }(1+x)}=2\arctan \sqrt{ x }+C.
$$
#### (14)
$$
\int_{}^{} \frac{x^4}{(1-x^5)^4} \, \mathrm{d}x =\frac{1}{5}\int_{}^{}  \, \frac{\mathrm{d}x^5}{(1-x^5)^4}=\frac{1}{15(1-x^5)^3}+C. 
$$
#### (15)
$$
\int_{}^{} \left( \frac{1}{\sqrt{ 3-x^{2} }}+\frac{1}{1-3x^{2}} \right) \, \mathrm{d}x = \arcsin \frac{x}{\sqrt{ 3 }}+\frac{1}{2\sqrt{ 3 }}\log \frac{1+\sqrt{ 3 }x}{1-\sqrt{ 3 }x}+C.
$$
#### (16) 
$$
\int_{}^{} \frac{2x-3}{x^{2}-3x+8} \, \mathrm{d}x= \log(x^{2}-3x+8)+C. 
$$
#### (17)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{\sin ^{2}\left( 2x+\frac{\pi}{4} \right)} = \frac{\tan(2x- \pi /4)}{2}+C.
$$
#### (18)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{1+\cos x}=\tan \frac{x}{2}+C. 
$$
#### (19) 
$$
\int_{}^{} \frac{1}{x^{2}} \sin \frac{1}{x} \, \mathrm{d}x =\cos \frac{1}{x}+C.
$$
#### (20)
$$
\int_{}^{} \cos ^5x \, \mathrm{d}x = \frac{\sin^5x}{5}-\frac{2\sin^3x}{3}+\sin x+C.
$$
#### (21) 
$$
\int_{}^{} \cos(ax)\sin(bx) \, \mathrm{d}x =\frac{\cos(a-b)x}{2(a-b)}-\frac{\cos(a+b)x}{2(a+b)}+C.
$$
#### (22)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{a\cos x+b\sin x} =\frac{2}{\sqrt{ a^{2}+b^{2} }} \tanh^{-1} \frac{a\tan (x /2)-b}{\sqrt{ a^{2}+b^{2} }}+C.
$$
#### (23)
$$
\int \frac{\sin(2x)}{a^{2}\cos ^{2}x+b^{2}\sin ^{2}x} \, \mathrm{d}x = \frac{\log((b^{2}-a^{2})\sin ^{2}x+a^{2})}{b^{2}-a^{2}}+C.
$$
#### (24)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{2-\sin ^{2}x}= \frac{1}{\sqrt{ 2 }} \arctan\left( \frac{\tan x}{\sqrt{ 2 }} \right)+C.
$$
#### (25)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{x\ln x\ln \ln x}=\ln \ln \ln x+C. 
$$
#### (26)
$$
\int_{}^{} \frac{\log x}{x\sqrt{ 1+\log x }} \, \mathrm{d}x = \frac{2}{3} (1+\log x)^{3/2}-2\sqrt{ 1+\log x }+C.
$$
#### (27)
$$
\int_{}^{} \frac{\cos x+\sin x}{(\sin x-\cos x)^{1/3}} \, \mathrm{d}x =\frac{3}{2}(\sin x-\cos x)^{2/3}+C.
$$
#### (28)
$$
\int_{}^{} e^{\sqrt{ x }} \, \mathrm{d}x =2\sqrt{ x }e^{\sqrt{ x }}-2e^{\sqrt{ x }}+C.
$$
#### (29)
$$
\int_{}^{} \frac{x^{n/2}}{1+x^{n+2}} \, \mathrm{d}x =\frac{2}{n+2}\arctan x^{n/2+1}+C.
$$
#### (30)
$$
\int_{}^{} \frac{\sqrt{ x }}{1-x^{1/3}} \, \mathrm{d}x = 6\arctan x^{1/6}-\frac{6}{5}x^{5/6}-\frac{6}{7}x^{7/6}-2x^{1/2}-6x^{1/6}+C.
$$
#### (31)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{(x^{2}+a^{2})^{3/2}}= \frac{x}{a^{2}\sqrt{ a^{2}+x^{2} }}+C.
$$
#### (32)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{\cos^4x}= \frac{\sin x }{2\cos^3x}+\frac{\sin(3x)}{6\cos^3x}+C. 
$$
#### (33)
$$
\int \arcsin ^{2}x \, \mathrm{d}x =x\arcsin ^{2}x+2\sqrt{ 1-x^{2} }\arcsin x-2x+C.
$$
#### (34)
$$
\int_{}^{} x\arcsin x \, \mathrm{d}x = \frac{x\sqrt{ 1-x^{2} }}{4}-\frac{1}{4}\arcsin x (1-2x^{2})+C.
$$
#### (35)
$$
\int x\arctan x= \frac{1}{2} (x^{2}+1)\arctan x-\frac{1}{2}x+C.
$$
#### (36)
$$
\int \frac{\arctan x}{x^{2}}= \log x- \frac{\arctan x}{x}-\frac{1}{2}\log(1+x^{2})+C.
$$
#### (37)
$$
\int x^{2}\sin x =-x^{2}\cos x+2x\sin x+2\cos x+C.
$$
#### (38)
$$
\int \frac{x}{\cos ^{2}x} = x\tan x+\log \cos x +C.
$$
#### (39)
$$
\int \log(x+\sqrt{ 1+x^{2} }) =x\log(x+\sqrt{ 1+x^{2} })-\sqrt{ 1+x^{2} }+C.
$$
#### (40)
$$
\int \sin \log x= \frac{x}{2}(\sin \log x-\cos \log x)+C.
$$
#### (41)
$$
\int \sqrt{ x^{2}+a^{2} } =\frac{1}{2}x\sqrt{ a^{2}+x^{2} } +\frac{a^{2}}{4} \log \frac{x+\sqrt{ a^{2}+x^{2} }}{\sqrt{ a^{2}+x^{2} }-x^{2}}+C.
$$
#### (42)
$$
\int \frac{x^{2}}{\sqrt{ x^{2}-a^{2} }}= \frac{1}{2}x\sqrt{ x^{2}-a^{2} }+\frac{a^{2}}{4} \log \frac{x+\sqrt{ x^{2}-a^{2} }}{x-\sqrt{ x^{2}-a^{2} }}+C.
$$
#### (43)
$$
\int \frac{x\log(x+\sqrt{ 1+x^{2} })}{\sqrt{ 1+x^{2} }} = \sqrt{ x^{2}+1} \log(x+\sqrt{ 1+x^{2} })-x+C.
$$
Let $u=\sqrt{ x^{2}+1 }+x$ then $\mathrm{d}u /\mathrm{d}x=1+x /\sqrt{ 1+x^{2} }$, so it becomes
$$
\int_{}^{} \frac{(u^{2}-1)\log{u}}{2u^{2}} \, \mathrm{d}x =-\frac{u}{2}+\frac{1}{2u}+\frac{1}{2}u\log u+\frac{\log u}{2u}+C.
$$
#### (44)
$$
\int \frac{1}{\sqrt{ x^{2}+a^{2} }}= \log \frac{\sin t+\cos t}{\sin t-\cos t}+C= \tanh^{-1} \frac{x}{\sqrt{ x^{2}+a^{2} }}+C.
$$
where $t=\frac{1}{2}\arctan (x /a)$.
#### (45)
$$
\int \frac{xe^x}{(1+x)^{2}} =\frac{e^x}{1+x}+C.
$$
#### (46)
$$
\int \arctan(1+\sqrt{ x }) = x\arctan(1+\sqrt{ x })-\sqrt{ x }+\log(2+2\sqrt{ x }+x)+C.
$$
#### (47)
$$
\int \left( 1-\frac{2}{x} \right)^{2}e^x = e^x -\frac{4e^x}{x}+C.
$$
since $\int_{}^{} e^x /x^{2} \, \mathrm{d}x=-e^x /x+\int_{}^{} e^x /x \, \mathrm{d}x$.
#### (48)
$$
\int \sqrt{ 2+\tan ^{2}x } =\theta+ \log \frac{\sin\theta+\cos \theta}{\sin\theta-\cos\theta}+C.
$$
where $\theta=\arcsin (\sin x /\sqrt{ 2 })$.
#### (49)
$$
\int \frac{1}{1+x^3} = -\frac{1}{6}\log(x^{2}-x+1)+\frac{1}{3}\log(x+1)+\frac{1}{\sqrt{ 3 }}\arctan \frac{2x-1}{\sqrt{ 3 }}+C.
$$
#### (50)
$$
\int \frac{x^7}{x^4+2} = \frac{x^4}{4}-\frac{1}{2}\log(2+x^4).
$$
#### (51)
$$
\int \frac{2x^{2}+1}{(x+3)(x-1)(x-4)} = -\frac{1}{4}\log(1-x)+\frac{11}{7}\log(4-x)+\frac{19}{28}\log(x+3)+C.
$$
#### (52)
$$
\int \frac{1+x^{2}}{1+x^4} = \frac{1}{\sqrt{ 2 }}(\arctan(\sqrt{ 2 }x+1)-\arctan(1-\sqrt{ 2 }x))+C.
$$
Note that 
$$
\frac{1+x^{2}}{1+x^{4}}=\frac{1}{2(x^{2}+\sqrt{ 2 }x+1)}-\frac{1}{2(-x^{2}+\sqrt{ 2 }x+1)}.
$$
#### (53)
Let $x=y^6-1$ then
$$
\begin{align}
& \int \frac{x}{\sqrt{ x+1 }+(x+1)^{1/3}} =\int (y^3-1)(1-y+y^{2})6y^3\mathrm{d}y \\
= & \frac{2x\sqrt{ x+1 }}{3}- \frac{3x(x+1)^{1/3}}{4}+\frac{6x(x+1)^{1/6}}{7}-x+\frac{6}{5}(x+1)^{5/6} \\
& -\frac{3}{2}(x+1)^{2/3}+\frac{2\sqrt{ x+1 }}{3}-\frac{3(x+1)^{1/3}}{4}+ \frac{6(x+1)^{1/6}}{7}+C.
\end{align}
$$
#### (54)
Let $x=y^{2}$, then 
$$
\int \frac{1}{\sqrt{ x+x^{2} }} = \int \frac{\mathrm{d}y}{\sqrt{ y^{2}+1 }}=\tanh^{-1}\left( \sqrt{ \frac{x}{x+1} } \right)+C.
$$
#### (55)
The Poisson kernel
$$
\int \frac{1-r^{2}}{1-2r\cos x+r^{2}}= 2\arctan (\frac{1+r}{1-r}\tan \frac{x}{2})+C.
$$
#### (56)
Let $x=\tan\theta$ then
$$
\int \frac{1}{x\sqrt{ 1+x^{2} }}= \int \frac{d\theta}{\sin\theta}=\log \tan \frac{\arctan x}{2}+C.
$$
#### (57)
Let $t=\tan x /2$ then
$$
\int \frac{1}{5-3\cos x} =\frac{1}{2} \arctan \left( 2\tan \frac{x}{2} \right)+C.
$$
#### (58)
Let $t=\tan x$, then
$$
\int \frac{1}{2+\sin ^{2}x} = \frac{1}{\sqrt{ 6 }} \arctan (\sqrt{ \frac{3}{2} }\tan x)+C.
$$
#### (59)
$$
\int \frac{\sin^3x}{\cos^4x}= \frac{1}{3\cos^3x}-\frac{1}{\cos x}+C.
$$
#### (60)
Let $t=\cos x$ then
$$
\int \frac{1}{\sin x\cos^4x} = -\int t^{-4}+t^{-2}+\frac{1}{1-t^{2}}=\frac{1}{3\cos^3x}+\frac{1}{\cos x}+\frac{1}{2}\log \frac{1+\cos x}{1-\cos x}+C.
$$

## Problem W: Stone-Weierstraß Theorem
### Part 1: Approximating $\lvert x \rvert$
#### W1) (Dini) Suppose $K\subset \mathbb{R}^{n}$ is compact, $f_{n}:K\to \mathbb{R}$ is a sequence of continuous functions, which converges point-wise to $f:K\to \mathbb{R}$. If $f$ is continuous and $f_{n}\leqslant f_{n+1}$, then $f_{n}$ converges uniformly to $f$.
Proof: For any $\varepsilon>0$, and any $x\in K$, there is an integer $n_{x}>0$ such that $\lvert f_{n_{x}}(x)-f(x) \rvert<\varepsilon /4$. There exists $\delta>0$, such that $\forall y\in \mathrm{B}(x,\delta)\cap K$, $\lvert f(x)-f(y) \rvert<\varepsilon /4$ and $\lvert f_{n_{x}}(x)-f_{n_{x}}(y) \rvert<\varepsilon /4$, then $\lvert f_{n_{x}}(y)-f(y) \rvert< \varepsilon /4$. Note that $K\subset\bigcup_{x\in K}\mathrm{B}(x,\delta_{x})$ hence we can choose a finite set of $x_{1},x_{2},\cdots,x_{N}$ such that $K\subset \bigcup_{i=1}^{N}\mathrm{B}(x_{i},\delta_{x_{i}})$. Let $M=\max\{ n_{x_{i}} :i=1,2,\cdots,N\}$ then for any $m\geqslant M$ and $x\in K$, $\lvert f_{m}(x)-f(x) \rvert<\varepsilon$. Hence $f_{n}$ converges uniformly to $f$.

#### W2) Consider the interval $[-1,1]$. Define inductively a sequence of polynomials:
$$
P_{0}(x)=0,\, P_{n+1}(x)=P_{n}(x)+ \frac{1}{2}(x^{2}-P_{n}^{2}(x)).
$$
Prove that for any $n,x$, $0\leqslant P_{n}(x)\leqslant P_{n+1}(x)\leqslant \lvert x \rvert$.
Proof: Assume $x>0$, we prove by induction. If $t=P_{n}(x)\in[0,x]$, then
$$
P_{n+1}(x)=\frac{1}{2}x^{2}-\frac{1}{2}(t-1)^{2}+\frac{1}{2}\leqslant \frac{1}{2}(x^{2}-(1-x)^{2}+1)=x,
$$
and $P_{n+1}(x)\geqslant P_{n}(x)=t$, hence $P_{n+1}(x)\in[0,x]$.
#### W3) Prove that $\lvert x \rvert$ can be uniformly approximated by polynomials on the interval $[-1,1]$, i.e. for any $\varepsilon>0$, there exists a polynomial $P_{\varepsilon}(x)$ such that $\sup_{x\in[-1,1]}{\lvert \lvert x \rvert-P_{\varepsilon}(x) \rvert}<\varepsilon$.
Proof: By W2), the sequence of polynomials $\{ P_{n} \}$ converge point-wise to $\lvert x \rvert$, hence by W1) $P_{n}$ converge uniformly to $\lvert x \rvert$.
### Part 3: Bernstein Polynomial
Assume $I=[0,1]$, and $n$ is an integer.
#### W4) For any $0\leqslant k\leqslant n$, define $p_{n,k}(x)=\binom{n}{k}x^k(1-x)^{n-k}$. Prove that 
$$
\sum_{0\leqslant k\leqslant n}^{}{p_{n,k}(x)\left( x-\frac{k}{n} \right)^{2}}= \frac{x(1-x)}{n}.
$$
Proof:
Note that 
$$
\sum_{k=0}^{n}{\binom{n}{k}x^k(1-x)^{n-k}x^{2}}=x^{2},
$$
$$
\begin{align}
& \sum_{k=0}^{n}{\binom{n}{k}x^k(1-x)^{n-k} \frac{k}{n} }= \sum_{k=1}^{n}{\binom{n-1}{k-1}x^{k}(1-x)^{n-k}} =x,
\end{align}
$$
$$
\sum_{k=0}^{n}{p_{n,k}(x)k(k-1)}=n(n-1) \sum_{k=2}^{n}{\binom{n-2}{k-2}x^k(1-x)^{n-k}}=n(n-1)x^{2}.
$$
Therefore
$$
\sum_{k=0}^{n}{p_{n,k}(x)\left( x- \frac{k}{n} \right)^{2}}= \frac{x(1-x)}{n}.
$$
#### W5) For any $f\in C([0,1])$, define 
$$
B_{f,n}=\sum_{k=0}^{n}{f\left( \frac{k}{n} \right)\binom{n}{k}x^k(1-x)^{n-k}}.
$$
For $x\in[0,1]$, prove that
$$
\lvert f(x)-B_{f,n}(x) \rvert \leqslant \sum_{k=0}^{n}{\left\lvert  f(x)-f\left( \frac{k}{n} \right)  \right\rvert p_{n,k}(x) }.
$$
Proof: Note that
$$
\sum_{k=0}^{n}{f(x)\binom{n}{k}x^k(1-x)^{n-k}}=f(x).
$$
#### W6) For any $f\in C([0,1])$, prove that for any $\varepsilon>0$, there exists $n$ such that $\|f-B_{f,n}\|_{\infty}<\varepsilon$.
Proof:
Let 
$$
\begin{align}
\mathrm{I} &= \sum_{\lvert m-nx \rvert <n^{3/4}}^{}{\left( f(x)-f\left( \frac{m}{n} \right) \right)p_{n,m}(x)}, \\
\mathrm{II} &= \sum_{\lvert m-nx \rvert >n^{3/4}}^{}{\left( f(x)-f\left( \frac{m}{n} \right) \right)p_{n,m}(x)}.
\end{align}
$$
Then $\lvert f-B_{f,n} \rvert\leqslant \lvert \mathrm{I} \rvert+\lvert  \mathrm{II} \rvert$.
For any $\varepsilon>0$, $\exists N\in \mathbb{N}$ such that $\forall x\in[0,1]$, $n\geqslant N\implies \lvert \mathrm{I} \rvert<\varepsilon$, since
$$
\lvert \mathrm{I} \rvert \leqslant \sup_{\lvert x-m /n \rvert <n^{-1/4}}{\lvert f(x)-f(m /n) \rvert }\to 0.
$$
Suppose $M=\sup_{x\in[0,1]}{\lvert f(x) \rvert}$, then
$$
\lvert \mathrm{II} \rvert \leqslant 2M \sum_{\lvert m-nx \rvert >n^{3/4}}^{}{p_{n,m}(x)}\leqslant 2M\sqrt{ n }\sum_{m=0}^{n}{(x-m /n)^{2}p_{n,m}(x)}=\frac{2Mx(1-x)}{\sqrt{ n }}.
$$
Hence $\|f-B_{f,n}\|_{\infty}\to 0$.

### Part 3: Stone-Weierstrass Theorem
#### W7-14): 
Let $X$ be a compact Hausdorff space, $\mathcal{A}\subset C(X,\mathbb{R})$ satisfy the following properties:
(a) $\forall c \in \mathbb{R}$, $c \cdot 1_{X}\in \mathcal{A}$, (b) $\forall f,g\in\mathcal{A},$ $f+g,f-g,fg\in\mathcal{A}$,
(c) $\mathcal{A}$ can separate any pair of points in $X$.
Then $\bar{\mathcal{A}}=C(X,\mathbb{R})$.
#### Lemma 1
There is a list of polynomials $\left\{ P_{n}(x) \right\}$ that converges uniformly to $|x|$ on $[-1,1]$.
#### Lemma 2
If $\mathcal{A}$ is a subspace of $C(X,\mathbb{R})$, such that (a) $\mathcal{A}$ is a lattice, (b) $1_{X}\in\mathcal{A}$, and (c) $\mathcal{A}$ can separate any pair of points, then $\bar{\mathcal{A}}=C(X,\mathbb{R})$.
#### Proof of main theorem
Assume WLOG $\mathcal{A}$ is closed, then by Lemma 1, $\forall f\in\mathcal{A}$, $P_{n}(f)\in\mathcal{A}$, hence $|f|\in\mathcal{A}$.(Since $X$ is compact, $|f|$ is bounded.) Note that 
$$
\max \left\{ f,g \right\} =\dfrac{1}{2}(|f+g|+|f-g|),\min \left\{  f,g\right\} =\dfrac{1}{2}(|f+g|-|f-g|).
$$
Hence $\mathcal{A}$ is a lattice, by Lemma 2 $\mathcal{A}=C(X,\mathbb{R})$.
#### Proof of Lemma 1
Proof 1: Let 
$$
\begin{align}
Q_{n}(x) &= \int_{0}^{x} (1-t^2)^{n} \, dt / \int_{0}^{1} (1-t^2)^n \, dt. \\
P_{n}(x) &= \int_{0}^{x} Q_{n}(t) \, dt. 
\end{align}
$$
Note that
$$
\int_{\varepsilon}^{1} (1-t^2)^n\, dt \leqslant (1-\varepsilon^2)^n(1-\varepsilon)\to 0   
$$
Hence (combined with Wallis’s formula), $P_{n}(x)$ converges uniformly to $|x|$ on $[a,b]$.
Proof 2: WLOG change the interval to $\left[ -1 /2, 1 /2 \right]$. The series
$$
(1-t)^{1/2}=1+\sum_{n=1}^{\infty}{(-t)^n \binom{\frac{1}{2}}{n}}=1-\sum_{n=1}^{\infty}{c_{n}t^n}.
$$
converges when $|t|<1$. Hence $\forall \varepsilon>0,$ there exists $Q \in \mathbb{R}[x]$ such that $\sup_{|t|\leqslant 1 / 2}{|Q(t)-(1-t)^{1/2}|}<\varepsilon/2$.
Let $t=1-x^{2}$, then $|Q(1-x^{2})-|x||<\varepsilon /2$, so $P(x)=Q(1-x^2)-Q(1)$ converges to $|x|$ uniformly on $[-1 /2, 1/2]$.
#### Proof of Lemme 2
Step 1: Take any $f\in C(X,\mathbb{R})$, and any $x,y \in X$, we can find $g_{x y}\in \mathcal{A}$, such that $g_{xy}(x)=f(x),g_{xy}(y)=f(y)$. Since there exists $u\in \mathcal{A}$ such that $u(x)\neq u(y)$,
$$
\begin{pmatrix}
u(x), 1  \\
u(y), 1 \\
\end{pmatrix}
\begin{pmatrix}
\lambda \\
\mu \\
\end{pmatrix}
=\begin{pmatrix}
f(x) \\
f(y) \\

\end{pmatrix}
$$
has a solution. (If $x=y$ it is trivial.)
Step 2:
For all $\varepsilon>0$, $x,y\in X,$ there is an open neighborhood $O_{x,y}$ of $y$, such that $\forall z \in O_{x,y}$, $f(z)-g_{xy}(z)\leqslant\varepsilon$. Note that $\bigcup_{y\in X}O_{x,y}=X,$ so by $X$ is compact, there is a list $y_{1},\cdots,y_{N}$ such that $\bigcup_{k\leqslant N}O_{x,y_{k}}=X$. Let $h_{x}=\max \left\{ g_{xy_{k}}: k\leqslant N\right\}$, then $h_{x}(y)-f(y)\geqslant-\varepsilon,$ and $f(x)=h_{x}(x)$.
Step 3:
For all $x\in X$, there is an open neighborhood $G_{x}$ of $x$, such that $\forall z \in G_{x}$, $h_{x}(z)-f(z)\leqslant\varepsilon.$ Note that $\bigcup_{x\in X}G_{x}=X,$ so by $X$ is compact, there is a list $x_{1},\cdots,x_{M}$ such that $\bigcup_{k\leqslant M}G_{x}=X$. Let $F=\min \left\{ h_{x_{k}}:k\leqslant M \right\}$, then $|F(x)-f(x)|\leqslant\varepsilon, \forall x\in X$.
Therefore $\bar{\mathcal{A}}=C(X,\mathbb{R})$.

For complex numbers, there is an additional requirement: for any $f\in \mathcal{A}$, $\bar{f}\in \mathcal{A}$.

#### W15-16):
It is easy to see that polynomials and trigonometric polynomials both satisfy the requirements of the theorem.
# HW10 Irrationality of Pi
## PSA
#### A1) Construct continuous functions $f_{n},f\in C([0,1])$, such that for every $x \in[0,1],$ when $n\to \infty$, $f_{n}(x)\to f(x)$, but 
$$
\lim_{ n \to \infty } {\int_{0}^{1} f_{n}(x) \, dx }\neq \int_{0}^{1} f(x) \, dx .
$$
Solution: Let $f_{n}(x)=nx e^{-nx^{2}},$ $f(x)=\lim_{ n \to \infty }f_{n}(x)=0.$ Then
$$
\lim_{ n \to \infty } \int_{0}^{1} f_{n}(x) \, dx =\lim_{ n \to \infty } \frac{n}{2}\int_{0}^{1} e^{-nx^{2}} \, d(x^{2})=\lim_{ n \to \infty } \frac{n}{2}\left( \frac{1}{n}-\frac{1}{ne^{n}} \right)=\frac{1}{2} 
$$
Hence $\lim_{ n \to \infty }\int_{0}^{1} f_{n}=1/2 \neq 0=\int_{0}^{1} f$.
#### A2) $\alpha \in \mathbb{R}_{\geqslant 0}$. Prove that $\int_{100}^{\infty} \frac{dx}{x\log^{\alpha}(x)}$ converges iff $\alpha>1$.
Proof: Substitute $y=\log x$, then 
$$
\int_{100}^{\infty} \frac{\mathrm{d}x}{x\log^{\alpha}(x)}=\int_{\log 100}^{\infty} \frac{\mathrm{d}y}{y^\alpha}  
$$
which converges iff $\alpha>1$.
#### A3) $f,F$ are defined on $I$, and for every bounded closed interval $J\subset I$, $f,F$ are both Riemann integrable on $J$. Assume for all $x\in I$, $\lvert f(x) \rvert\leqslant F(x)$. Then if the improper integer of $F$ on $I$ converges, so does $f$.
Proof: This is because
$$
\int_{I} f(x) \, \mathrm{d}x \text{ converges } \iff \forall \varepsilon>0 \exists N \forall u,v\in I,N<u<v,\lvert  \int_{u}^{v} f(x) \, \mathrm{d}x \rvert<\varepsilon.
$$
#### A4) Prove the integrals below converge:
(1) $\int_{0}^{\infty} e^{-x^{2}} \, \mathrm{d}x$ (2) $\int_{0}^{1}  \, \frac{\mathrm{d}x}{\sqrt{ 1-x^3 }}$ (3) $\int_{1}^{\infty} \frac{(\log x)^{2}}{1+x(\log x)^5} \, \mathrm{d}x$
(1):
$$
\int_{0}^{\infty} e^{-x^{2}} \, \mathrm{d}x \leqslant 1+\int_{1}^{\infty} e^{-x} \, \mathrm{d}x \leqslant 1+\frac{1}{e}.
$$
(2):
$$
\int_{0}^{1}  \, \frac{\mathrm{d}x}{\sqrt{ 1-x^3 }}\leqslant \int_{0}^{1}  \, \frac{\mathrm{d}x}{\sqrt{ 1-x }} =2.
$$
(3):
$$
\int_{1}^{\infty} \frac{(\log x)^{2}}{1+x(\log x)^5} \, \mathrm{d}x \leqslant 5000+\int_{100}^{\infty} \frac{1}{x(\log x)^3} \, \mathrm{d}x, \text{ which converges by A2.}
$$
#### A5) Prove the series below converge:
(1) $\sum_{n=1}^{\infty}{e^{-n}(n^{2}+\log n)}$ (2) $\sum_{n=1}^{\infty}{\frac{\log n}{1+n(\log n)^3}}$
(1):
$$
\sum_{n=1}^{\infty}{e^{-n}(n^{2}+\log n)}\leqslant \sum_{n=1}^{\infty}{\frac{2n^{2}}{e^n}}\leqslant 2\int_{0}^{\infty} x^{2}e^{-x} \, \mathrm{d}x =4.
$$
(2):
$$
\sum_{n=1}^{\infty}{\frac{\log n}{1+n(\log n)^3}}\leqslant \sum_{n=2}^{\infty}{\frac{1}{n(\log n)^{2}}}\leqslant \frac{1}{2(\log 2)^{2}}+\int_{2}^{\infty} \frac{1}{x(\log x)^{2}} \, \mathrm{d}x \leqslant 3.
$$
#### A6) Calculate
$$
\lim_{ n \to \infty } \sum_{k=1}^{n}{\frac{k^{\alpha}}{n^{\alpha+1}}},\alpha>-1.
$$
Solution: 
$$
\begin{align}
\sum_{k=1}^{n}{k^\alpha} & \leqslant \int_{1}^{n+1} x^\alpha \, \mathrm{d}x =\frac{1}{\alpha+1}((n+1)^{\alpha+1}-1). \\
\sum_{k=1}^{n}{k^\alpha} & \geqslant 1+\int_{1}^{n} x^\alpha \, \mathrm{d}x =1+\frac{1}{\alpha+1}n^{\alpha+1}.
\end{align}
$$
Therefore 
$$
\lim_{ n \to \infty } \sum_{k=1}^{n}{\frac{k^\alpha}{n^{\alpha+1}}}=\frac{1}{\alpha+1}.
$$
#### A7) Calculate $\int_{0}^{1} \frac{x^4(1-x)^4}{1+x^{2}} \, \mathrm{d}x$, to show that $\pi=3.14\cdots$ .
Solution:
$$
\begin{align}
\int_{0}^{1} \frac{x^4(1-x)^4}{1+x^{2}} \, \mathrm{d}x &= \int_{0}^{1} x^6-4x^5+5x^4-4x^{2}+4-\frac{4}{1+x^{2}} \, \mathrm{d}x = \frac{22}{7}-\pi. \\
\int_{0}^{1} \frac{x^4(1-x)^4}{1+x^{2}} \, \mathrm{d}x & \leqslant \int_{0}^{1} \frac{x^3(1-x)^4}{2} \, \mathrm{d}x =\frac{1}{560}<0.02, \frac{22}{7}>3.1428.
\end{align}
$$
#### A8) Assume $a,b,n\in \mathbb{Z}$, let
$$
f_{a,b;n}=\frac{x^n(a-bx)^n}{n!}.
$$
- Prove that for $k=0,1,\cdots,2n$, $f_{a,b;n}^{(k)}(x)\in \mathbb{Z}$ when $x=0, \frac{a}{b}$.
See B10)
- If $\pi=\frac{a}{b}\in \mathbb{Q}$, then for every $n\in \mathbb{N}$,
$$
\int_{0}^{\pi} f_{a,b;n}(x)\sin x \, \mathrm{d}x 
$$
is an integer.
Proof: By Darboux’s formula of integration of parts
$$
\int_{0}^{\pi} f_{a,b;n}(x)\sin x \, \mathrm{d}x =\sum_{k=0}^{2n}{f_{a,b;n}^{(k)}(x)\sin\left( x-\frac{(k+1)\pi}{2} \right)\Big\vert_{0}^{\pi}} \in \mathbb{Z}.
$$
- Prove that $\pi \not\in \mathbb{Q}$.
Proof: Let $n=2a^4+10$, then $\forall 0\leqslant x\leqslant a /b$,
$$
f_{a,b;n}\leqslant \frac{a^{2n}}{n!}<\frac{1}{2}\frac{(a^4)^{n /2}}{n\cdot(n-1)\cdots\left( \frac{n}{2} \right)}<\frac{1}{2}.
$$
Hence 
$$
0< \int_{0}^{\pi} f_{a,b;n}(x)\sin x \, \mathrm{d}x <\frac{1}{2}\int_{0}^{\pi} \sin x \, \mathrm{d}x =1,
$$
leading to contradiction.
#### A9) Let $I_{n}=\int_{0}^{\pi/2} \sin^nx \, \mathrm{d}x$, prove that $I_{n}\sim \sqrt{ \frac{\pi}{2n} }$.
Proof: Since $I_{n}= \frac{n-1}{n}I_{n-2}$,
$$
I_{n}=
\begin{cases}
\frac{(n-1)!!}{n!!}, & n \text{ is even}, \\
\frac{(n-1)!!}{n!!}\cdot \frac{\pi}{2}, & n\text{ is odd.}
\end{cases}
$$
Combined with $I_{2n+1}<I_{2n}<I_{2n-1},$ we get
$$
\left[ \frac{(2n)!!}{(2n-1)!!} \right] ^{2} \frac{1}{2n+1}<\frac{\pi}{2}<\left[ \frac{(2n)!!}{(2n-1)!!} \right] ^{2} \frac{1}{2n},
$$
where
$$
0<-\left[ \frac{(2n)!!}{(2n-1)!!} \right] ^{2} \frac{1}{2n+1}+\left[ \frac{(2n)!!}{(2n-1)!!} \right] ^{2} \frac{1}{2n}=\left[ \frac{(2n)!!}{(2n-1)!!} \right]^{2} \frac{1}{2n(2n+1)}<\frac{\pi}{4n}.
$$
Therefore
$$
\lim_{ n \to \infty } \left[ \frac{(2n)!!}{(2n-1)!!} \right] ^{2} \frac{1}{2n}=\frac{\pi}{2}.
$$
Hence $I_{n}\sim \sqrt{ \frac{\pi}{2n} }$.
#### A10) Assume $f:[0,1]\to[0,1]$ is monotonously increasing, $g=f^{-1}:[0,1]\to[0,1]$ is its inverse, and $f,g$ are both continuously differentiable, then
$$
\int_{0}^{1} f(x) \, \mathrm{d}x +\int_{0}^{1} g(x) \, \mathrm{d}x =1.
$$
Proof: We show that 
$$
\int_{0}^{x} f(t) \, \mathrm{d}t+\int_{0}^{f(x)} g(t) \, \mathrm{d}t =xf(x), \forall 0\leqslant x\leqslant 1. (1)  
$$
$x=0$ is trivial, hence it suffices to show that the derivatives of the two sides match. 
$$
\frac{\mathrm{d}}{\mathrm{d}x}\int_{0}^{x} f(t) \, \mathrm{d}t =f(x), \frac{\mathrm{d}}{\mathrm{d}x}\int_{0}^{f(x)} g(t) \, \mathrm{d}t=f^\prime(x)\cdot g(f(x))=xf^\prime(x).  
$$
Hence (1) holds.
#### A11) Prove that
$$
\lim_{ \varepsilon \to 0 } \sum_{k=0}^{\infty}{\frac{(-1)^k(1-\varepsilon)^{2k+1}}{2k+1}}=\sum_{k=0}^{\infty}{\frac{(-1)^k}{2k+1}}.
$$
Proof: By Dirichlet’s test, $\sum_{k=0}^{\infty}{(-1)^{k}(1-\varepsilon)^{2k+1} /(2k+1)}$ converges uniformly.
Hence for any $\delta>0$, there exists an $N\in \mathbb{Z}$ such that 
$$
\lvert \sum_{k=N}^{\infty}{\frac{(-1)^kx^{2k}}{2k+1}} \rvert <\delta, \forall x\in[0,1].
$$
Then $\forall \varepsilon<\frac{\delta}{N}$,
$$
\begin{align}
& \left\lvert  \sum_{k=0}^{\infty}{\frac{(-1)^{k}(1-\varepsilon)^{2k+1}}{2k+1}}-\sum_{k=0}^{\infty}{\frac{(-1)^k}{2k+1}}  \right\rvert \\
\leqslant & \sum_{k=0}^{N-1}{\frac{\lvert (1-\varepsilon)^{2k+1}-1 \rvert }{2k+1} } +\left\lvert  \sum_{k=N}^{\infty}{\frac{(-1)^k(1-\varepsilon)^{2k+1}}{2k+1}}  \right\rvert +\left\lvert  \sum_{k=N}^{\infty}{\frac{(-1)^k}{2k+1}}  \right\rvert <3\delta.
\end{align}
$$
Hence 
$$
\lim_{ \varepsilon \to 0 } \sum_{k=0}^{\infty}{\frac{(-1)^k(1-\varepsilon )^{2k+1}}{2k+1}}=\sum_{k=0}^{\infty}{\frac{(-1)^k}{2k+1}}.
$$
#### A12) For any continuous function $f:[a,b]\times[c,d]\to \mathbb{R},(x,y)\mapsto f(x,y)$, where $a,b,c,d\in \mathbb{R}$, show that $f$ is uniformly continuous on $[a,b]\times [c,d]$.
Proof: $K=[a,b]\times[c,d]$ is a compact set. Consider an arbitrary $\varepsilon>0$.
For any $x\in K,$ there is an open ball $B(x,2r_{x})$ with center $x$ such that $\forall y\in B(x,2r_{x}),\lvert f(x)-f(y) \rvert<\varepsilon/2$. Let $O_{x}=B(x,r_{x})$. Note that $\bigcup_{x\in K}O_{x}=K$ and $K$ is compact, hence we can find $x_{1},\cdots,x_{n}$ such that $\bigcup_{k\leqslant n}O_{x_{k}}=K$.
Let $\delta=\min \{ r_{x_{k}}:k\leqslant n \}$, then $\forall \lvert u-v \rvert<\delta$, suppose $u\in O_{x_{1}}$, then
$$
\lvert v-x_{1} \rvert \leqslant \lvert v-u \rvert +\lvert u-x_{1} \rvert < 2r_{x_{1}}\implies v\in B(x_{1},2r_{x_{1}}).
$$
Hence
$$
\lvert f(u)-f(v) \rvert \leqslant \lvert f(u)-f(x_{1}) \rvert +\lvert f(v)-f(x_{1}) \rvert <\varepsilon.
$$
Therefore $f$ is uniformly continuous on $K$.
## PSB: On $\zeta(2)$ 
### Part 1: The sequence $\left\{  \sum_{k=1}^{n}{1 / k^{p}}  \right\}$
Define the sequence $S_{n}(p)=\sum_{k=1}^{n}{1 / k^{p}}$ where $p\in \mathbb{Z}_{\geqslant_{1}}$.
#### B1) Prove that for any $k\in \mathbb{Z}_{\geqslant_{1}}$, we have
$$
\frac{1}{(k+1)^{p}}\leqslant\int_{k}^{k+1} \frac{1}{x^{p}} \, \mathrm{d}x \leqslant \frac{1}{k^p}.
$$
Proof: $\frac{1}{(k+1)^p}\leqslant \frac{1}{x^p}\leqslant \frac{1}{k^p}, \forall k\leqslant x\leqslant k+1$.
#### B2) Prove that for any $n\in \mathbb{Z}_{\geqslant 2}$, we have
$$
S_{n}(p)-1\leqslant \int_{1}^{n} \frac{1}{x^p} \, \mathrm{d}x \leqslant S_{n-1}(p).
$$
Proof:
$$
S_{n}(p)-1=\sum_{k=1}^{n-1}{\frac{1}{(k+1)^p}}\leqslant \sum_{k=1}^{n-1}\int_{k}^{k+1} \frac{1}{x^p} \, \mathrm{d}x =\int_{1}^{n} \frac{1}{x^p} \, \mathrm{d}x .
$$
Likewise we have $\int_{1}^{n} \frac{1}{x^p} \, \mathrm{d}x\leqslant S_{n-1}(p)$.
#### B3) Let $p\in \mathbb{Z}_{\geqslant 1}$. Prove that $x \mapsto \frac{1}{x^p}$ is integrable on $[1,\infty)$ iff $p\geqslant 2$.
Proof: For $p\geqslant 2$,
$$
\lim_{ n \to \infty } \int_{1}^{n} \frac{1}{x^p} \, \mathrm{d}x =\lim_{ n \to \infty } \frac{1}{1-p} x^{1-p}\bigg\vert_{1}^{n}=\frac{1}{1-p}.
$$
If $p=1$, $\lim_{ n \to \infty }\int_{1}^{n} \frac{1}{x} \, \mathrm{d}x=\lim_{ n \to \infty } \log x\big\vert_{1}^{n}=\infty$.
#### B4) Prove that $\{ S_{n}(p) \}_{n\geqslant 1}$ converges iff $p\geqslant 2$. For $p\geqslant 2$ let
$$
\zeta(p)=\lim_{ n \to \infty } S_{n}(p)=\sum_{k=1}^{\infty}{\frac{1}{k^p}}.
$$
Proof: If $p=1$, $S_{n}(p)\geqslant \int_{1}^{n+1} \frac{1}{x} \, \mathrm{d}x\to \infty$.
For $p\geqslant 2$, $S_{n}(p)\leqslant S_{n+1}(p)$, and $S_{n}(p)\leqslant 1+\int_{1}^{n} \frac{1}{x^p} \, \mathrm{d}x\leqslant 1+\int_{1}^{\infty} \frac{1}{x^p} \, \mathrm{d}x$. Hence $\lim_{ n \to \infty }S_{n}(p)$ exists.
### Part 2: Calculate $\zeta(2)$

(We can also use Bernolli numbers and the Taylor expansion of $\tan x$).

Let $h(t)=\frac{t^{2}}{2\pi}-t$, $\varphi:[0,\pi]\to \mathbb{R}:$
$$
\varphi(x)=
\begin{cases}
-1, & x=0;  \\
\frac{h(x)}{2\sin\left( \frac{x}{2} \right)}, & 0<x\leqslant\pi. \\
\end{cases}
$$
#### B5) Prove that $\varphi \in C^1([0,\pi])$.
Proof:
$$
\lim_{ x \to 0 } \frac{h(x)}{2\sin\left( \frac{x}{2} \right)} = \lim_{ x \to 0 } \frac{-x+o(x)}{2\sin\left( \frac{x}{2} \right)}=-1=\varphi(0).
$$
Hence $\varphi \in C^1([0,\pi])$.
#### B6) For all $k\geqslant 1$, calculate
$$
\int_{0}^{\pi} h(x)\cos(kx) \, \mathrm{d}x .
$$
Solution: 
$$
\begin{align}
\int_{0}^{\pi} \left( \frac{x^{2}}{2\pi}-x \right)\cos(kx) \, \mathrm{d}x &= \frac{1}{k}\int_{0}^{\pi} \left( \frac{x^{2}}{2\pi}-x \right) \, \mathrm{d}\sin(kx)  \\
&= -\frac{1}{k}\int_{0}^{\pi} \sin(kx) \left( \frac{x}{\pi}-1 \right) \, \mathrm{d}x  \\
&= \frac{1}{k^{2}}\int_{0}^{\pi} \left( \frac{x}{\pi}-1 \right) \, \mathrm{d}\cos(kx)  \\
&= \frac{1}{k^{2}}-\frac{1}{\pi k^{2}}\int_{0}^{\pi} \cos(kx) \, \mathrm{d}x =\frac{1}{k^{2}}.
\end{align}
$$
#### B7) Prove that there is a constant $\lambda$, such that for any $x\in(0,\pi)$, 
$$
\sum_{k=1}^{n}{\cos(kx)}=\frac{\sin\left( n+\frac{1}{2} \right)x}{2\sin\left( \frac{x}{2} \right)}-\lambda.
$$
Proof: Note that $2\cos(kx)\sin (\frac{x}{2})=\sin(k+1 /2)x-\sin(k-1 /2)x$, hence
$$
\sum_{k=1}^{n}{\cos(kx)}\cdot 2\sin \frac{x}{2}=\sin\left( n+ \frac{1}{2} \right)x-\sin \frac{x}{2}, \lambda=\frac{1}{2}.
$$
#### B8) Prove that for any $\psi\in C^1([0,\pi])$, 
$$
\lim_{ n \to \infty } \int_{0}^{\pi} \psi(x)\sin(n+1 /2)x \, \mathrm{d}x =0.
$$
Proof: Since $\sin(n+1 /2)x=c_{1}\sin nx+c_{2}\cos nx,$ where $c_{1},c_{2}$ are constant,
it suffices to show that 
$$
\lim_{ n \to \infty } \int_{0}^{\pi} \psi(x)\sin(2nx) \, \mathrm{d}x =\lim_{ n \to \infty } \int_{0}^{\pi} \psi(x)\cos(2nx) \, \mathrm{d}x =0.
$$
Note that 
$$
\begin{align}
\int_{0}^{\pi} \psi(x)\sin(2nx) \, \mathrm{d}x &= \sum_{k=1}^{n}{\int_{(k-1)\pi/n}^{k\pi/n} \psi(x)\sin(2nx) \, \mathrm{d}x } \\
&= \sum_{k=1}^{n}{\frac{1}{2n}\int_{0}^{2\pi} \psi\left( \frac{x}{2n}+\frac{(k-1)\pi}{n} \right)\sin x \, \mathrm{d}x } \\
\left( t=\frac{(k-1)\pi}{n} \right)& \leqslant \sum_{k=1}^{n}{\frac{\pi}{n}\sup_{x\leqslant \pi}{\left\lvert  \psi\left( \frac{x+\pi}{2n}+t \right)-\psi\left( \frac{x}{2n}+t \right)  \right\rvert }} \\
& \leqslant \pi \sup_{0\leqslant x\leqslant \pi-\pi /2n}{\left\lvert  \psi\left( x+\frac{\pi}{2n} \right)-\psi(x)  \right\rvert }\to 0.
\end{align}
$$
since $\psi$ is uniformly continuous on $[0,\pi]$.
#### B9) Prove that $\zeta(2)=\frac{\pi^2}{6}$.
Proof:
$$
\begin{align}
\zeta(2) &= \lim_{ n \to \infty } \sum_{k=1}^{n}{\frac{1}{k^{2}}} = \lim_{ n \to \infty } \sum_{k=1}^{n}{\int_{0}^{\pi} h(x)\cos(kx) \, \mathrm{d}x } \\
&= \lim_{ n \to \infty } \int_{0}^{\pi} \psi(x)\sin (n+1 /2)x-\frac{1}{2}\left( \frac{x^{2}}{2\pi}-x \right) \, \mathrm{d}x  \\
\text{(B8)}&= \frac{1}{2}\int_{0}^{\pi} \left( x-\frac{x^{2}}{2\pi} \right) \, \mathrm{d}x = \frac{\pi^{2}}{6}.
\end{align}
$$
### Part 3: $\zeta(2)$ is irrational
Otherwise assume $\pi^2=\frac{a}{b}$ where $a,b\in \mathbb{Z}$.
#### B10) Define a sequence of polynomials $f_{n}(x)=\frac{x^n(1-x)^n}{n!}$, where $n\in \mathbb{Z}_{\geqslant 1}$. Prove that for any $k\in \mathbb{Z}$, $f_{n}^{(k)}(0),f_{n}^{(k)}(1)\in \mathbb{Z}$.
Proof: If $k\leqslant n-1$, then $f_{n}^{(k)}(0)=f_{n}^{(k)}(1)=0.$ If $k\geqslant n$, then
$$
\text{if } x^n(1-x)^{n}=\sum_{k=n}^{2n}{c_{k}x^k}, \text{then } f_{n}^{(k)}(x)=\sum_{m=n}^{2n}{c_{k}\binom{m}{k}x^{m-k}}\in \mathbb{Z}[x].
$$
Hence $f_{n}^{(k)}(0),f_{n}^{(k)}(1)\in \mathbb{Z}$.
#### B11) Define the sequence
$$
F_{n}(x)=b^n(\pi^{2n}f_{n}(x)-\pi^{2n-2}f_{n}^{(2)}(x)+\cdots+(-1)^nf_{n}^{(2n)}(x)).
$$
Prove that $F_{n}(0),F_{n}(1)\in \mathbb{Z}$.
Proof: For $0\leqslant k\leqslant n$, $b^n \pi^{2n-2k},f_{n}^{(2k)}(x)\in Z,$ when $x\in \{ 0,1 \}$.
#### B12) For $n\geqslant 1$, define $\{ g_{n} \}_{n\geqslant 1},\{ A_{n} \}_{n\geqslant 1}$ as below:
$$
g_{n}(x)=F_{n}^{\prime}(x)\sin(\pi x)-\pi F_{n}(x)\cos(\pi x),\text{ } A_{n}=\pi \int_{0}^{1} a^nf_{n}(x)\sin(\pi x) \, \mathrm{d}x .
$$
Prove that $A_{n}\in \mathbb{Z}$ and $g_{n}^{\prime}=\pi^2a^nf_{n}(x)\sin(\pi x)$.
Proof: Note that 
$$
\begin{align}
g_{n}^\prime(x) &= b^n\pi^{2n}\sum_{k=0}^{n}\left ({f_{n}^{(2k)}(x)}\sin(\pi x)-\pi f_{n}^{(2k+1)}(x)\cos(\pi x) \right)^{\prime} {(-\pi^2)^k} \\
&=b^n\pi^{2n+2}f_{n}(x)\sin(\pi x). 
\end{align}
$$
And
$$
\begin{align}
A_{n} &=\frac{1}{\pi}\int_{0}^{1}  \, \mathrm{d}g_{n}(x) =\frac{1}{\pi}(g_{n}(1)-g_{n}(0))\\
 &= F_{n}(0)+F_{n}(1)\in \mathbb{Z}.
\end{align}
$$
#### B13) Prove that there exists $n\in \mathbb{Z}$ such that for all $x\in[0,1]$, $a^nf_{n}(x)<1/2$.
Proof: 
$$
f_{n}(x)=\frac{1}{n!}(x(1-x))^n\leqslant \frac{1}{n! 4^n}\to 0.
$$
#### B14) Prove that there exists $n\in \mathbb{Z}$ such that $A_{n}\in(0,1)$, leading to contradiction.
Proof: $f_{n},\sin(\pi x)\geq 0$, when $x\in[0,1]$, hence $A_{n}>0$.
Take $n$ such that $a^nf_{n}<1/2$ then $A_{n}< \frac{\pi}{2}\int_{0}^{1} \sin(\pi x) \, \mathrm{d}x=1$.
Therefore $A_{n}\in(0,1)$, contradicting with $A_{n}\in \mathbb{Z}$.
## PSC: Calculation of Integrals 
$a\neq 0,b\neq 0$
#### (1) $\int_{0}^{\pi} \sin^3{x} \, \mathrm{d}x$
$$
\int_{0}^{\pi} \sin^3(x) \, \mathrm{d}x =-2\int_{0}^{\pi /2} \sin^2(x) \, \mathrm{d}\cos(x) =2\int_{0}^{1} (1-x^2) \, \mathrm{d}x =\frac{4}{3}.
$$
#### (2) $\int_{-\pi}^{\pi} x^2\cos x \, \mathrm{d}x$
$$
\int_{-\pi}^{\pi} x^2\cos(x) \, \mathrm{d}x =(x^2-2)\sin(x)+2x\cos(x)\Big\vert_{-\pi}^{\pi}=-4\pi.
$$
#### (3) $\int_{0}^{1} \frac{x}{1+\sqrt{ 1+x }} \, \mathrm{d}x$
$$
\int_{0}^{1} \frac{x}{1+\sqrt{ 1+x }} \, \mathrm{d}x =\int_{0}^{1} \sqrt{ 1+x }-1 \, \mathrm{d}x =\frac{2}{3}(1+x)^{3 /2}-x\Big\vert_{0}^{1}= \frac{4\sqrt{ 2 }-5}{3}.
$$
#### (4) $\int_{0}^{\sqrt{ 3 }} x\arctan x \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\sqrt{ 3 }} x\arctan x \, \mathrm{d}x &=\frac{1}{2}\int_{0}^{\sqrt{ 3 }} \arctan x \, \mathrm{d}x^2  \\
&= \frac{1}{2}x^2\arctan x\Big\vert_{0}^{\sqrt{ 3 }}-\frac{1}{2}\int_{0}^{\sqrt{ 3 }} \frac{x^{2}}{1+x^{2}} \, \mathrm{d}x \\
&= \frac{3}{2} \frac{\pi}{3}-\frac{\sqrt{ 3 }}{2}+\frac{1}{2}\arctan \sqrt{ 3 } = \frac{2\pi}{3}-\frac{\sqrt{ 3 }}{2}.
\end{align}
$$
#### (5) $\int_{-1}^{0} (2x+1)\sqrt{ 1-x-x^{2} } \, \mathrm{d}x$
$$
\int_{-1}^{0} (2x+1)\sqrt{ 1-x-x^{2} } \, \mathrm{d}x = \int_{-1}^{1} \frac{y}{4}\sqrt{ 5-y^2 } \, \mathrm{d}y=0 \\
$$
#### (6) $\int_{\frac{1}{e}}^{e} \lvert \log x \rvert \, \mathrm{d}x$
$$
\begin{align}
\int_{\frac{1}{e}}^{e} \lvert \log x \rvert  \, \mathrm{d}x &=\int_{1}^{e} \log x \, \mathrm{d}x +\int_{1}^{1 /e} \log x \, \mathrm{d}x \\
&=(x\log x-x)\Big\vert_{1}^{e}+(x\log x-x)\Big\vert_{1}^{1/e}=2-\frac{2}{e}
\end{align}
$$
#### (7) $\int_{0}^{a} x^2\sqrt{ a^{2}-x^{2} } \, \mathrm{d}x$
$$
\int_{0}^{a} x^{2}\sqrt{ a^{2}-x^{2} } \, \mathrm{d}x =a^4\int_{0}^{\pi/2} \sin^2t\cos^2t \, \mathrm{d}t=\frac{a^4\pi}{16}
$$
#### (8) $\int_{0}^{\log 2} \sqrt{ e^x-1 }  \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\log 2} \sqrt{ e^x-1 } \, \mathrm{d}x &= \int_{1}^{2} \frac{\sqrt{ y-1 }}{y} \, \mathrm{d}y=\int_{0}^{1} \frac{\sqrt{ x }}{1+x} \, \mathrm{d}x   \\
&= \int_{0}^{\pi/4} 2\tan^2\theta \, \mathrm{d}\theta=2- \frac{\pi}{2}.
\end{align}
$$
#### (9) $\int_{1}^{2} x^{100}\log x \, \mathrm{d}x$
$$
\begin{align}
\int_{1}^{2} x^{100}\log x \, \mathrm{d}x &= \int_{1}^{2} \log x \, \mathrm{d} \frac{x^{101}}{101}=\frac{2^{101}\log 2}{101} -\int_{1}^{2} \frac{x^{100}}{101} \, \mathrm{d}x  \\
=\frac{2^{101}\log2}{101}-\frac{2^{101}-1}{101^2}.
\end{align}
$$
#### (10) $\int_{0}^{a} \log(x+\sqrt{ x^{2}+a^{2} }) \, \mathrm{d}x$
$$
\int_{0}^{a} \log(x+\sqrt{ x^{2}+a^{2} }) \, \mathrm{d}x =
$$
$$
\begin{align}
\int_{0}^{a} \log(x+\sqrt{ x^{2}+a^{2} }) \, \mathrm{d}x &= a\int_{0}^{1} \log a+\log(t+\sqrt{ t^{2}+1 }) \, \mathrm{d}t  \\
&= a\log a+a\int_{0}^{1} \log(t+\sqrt{ t^{2}+1 }) \, \mathrm{d}t \\
&= a\log a+(\log(1+\sqrt{ 2 })+\sqrt{ 2 }-1)a.
\end{align}
$$
$$
\begin{align}
\int_{0}^{1} \log(x+\sqrt{ x^{2}+1 }) \, \mathrm{d}x &= x\log(x+\sqrt{ x^{2}+1 })\Big\vert_{0}^{1}-\int_{0}^{1} \frac{x}{\sqrt{ 1+x^{2} }} \, \mathrm{d}x  \\
(x=\tan\theta)&= \log(1+\sqrt{ 2 })+\int_{0}^{\pi/4} \frac{1}{\cos^2\theta} \, \mathrm{d}\cos\theta  \\
&=\log(1+\sqrt{ 2 } )+\sqrt{ 2 }-1.
\end{align}
$$
#### (11) $\int_{0}^{\pi/2} \frac{\cos x \sin x}{a^{2}\sin ^{2}x+b^{2}\cos ^{2}x} \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\pi/2} \frac{\cos x \sin x}{a^{2}\sin ^{2}x+b^{2}\cos ^{2}x} &= \int_{0}^{\pi/2}\frac{\sin 2x}{a^{2}+b^{2}+(b^{2}-a^{2})\cos 2x} \, \mathrm{d}x  \\
&= \frac{1}{2} \int_{-1}^{1} \frac{1}{(a^{2}+b^{2})+(b^{2}-a^{2})t} \, \mathrm{d}t \\
&= \frac{1}{2(a^{2}-b^{2})}\log\left(  \frac{a^{2}}{b^{2}} \right).
\end{align}
$$
#### (12) $\int_{0}^{\pi/2} \frac{\cos ^{2}x}{\cos x+\sin x} \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\pi/2} \frac{\cos ^{2}x}{\cos x+\sin x} \, \mathrm{d}x &=\int_{0}^{\pi/2} \frac{\sin ^{2}x}{\cos x+\sin x} \, \mathrm{d}x  \\
&= \frac{1}{2}\int_{0}^{\pi/2} \frac{1}{\cos x+\sin x} \, \mathrm{d}x  \\
&= \int_{\pi /4}^{\pi/2} \frac{1}{\sqrt{ 2 }\sin x} \, \mathrm{d}x  \\
&= - \frac{\log \tan\left( \frac{\pi}{8} \right)}{\sqrt{ 2 }}.
\end{align}
$$
#### (13) $\int_{0}^{\pi/2} \frac{\sin ^{2}x}{\cos x+\sin x} \, \mathrm{d}x$
See (12)
#### (14) $\int_{0}^{\pi/4} \log(1+\tan x) \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\pi/4} \log(1+\tan x) \, \mathrm{d}x &= \int_{0}^{\pi/4} \log \frac{\sin x+\cos x}{\cos x} \, \mathrm{d}x  \\
&= \int_{0}^{\pi/4} \log \frac{\sqrt{ 2 }\sin(x+\pi /4)}{\cos x} \, \mathrm{d}x  \\
&= \frac{\pi}{8}\log 2.
\end{align}
$$
#### (15) $\int_{0}^{4} \frac{\lvert x-1 \rvert}{\lvert x-2 \rvert+\lvert x-3 \rvert} \mathrm{d}x$
$$
\begin{align}
\int_{0}^{1} \frac{\lvert x-1 \rvert }{\lvert x-2 \rvert +\lvert x-3 \rvert } \, \mathrm{d}x &=\int_{0}^{1} \frac{1-x}{5-2x} \, \mathrm{d}x =\frac{1}{2}-\frac{3}{4}\log \frac{5}{3}, \\
\int_{1}^{2} \frac{\lvert x-1 \rvert }{\lvert x-2 \rvert +\lvert x-3 \rvert }  \, \mathrm{d}x &= \int_{0}^{1} \frac{x}{3-2x} \, \mathrm{d}x =-\frac{1}{2}+\frac{3}{4}\log 3, \\
\int_{2}^{3} \frac{\lvert x-1 \rvert }{\lvert x-2 \rvert +\lvert x-3 \rvert } \, \mathrm{d}x &= \int_{0}^{1} (x+1) \, \mathrm{d}x =\frac{3}{2}, \\
\int_{3}^{4} \frac{\lvert x-1 \rvert }{\lvert x-2 \rvert +\lvert x-3 \rvert }  \, \mathrm{d}x &= \int_{0}^{1} \frac{x+2}{2x+1} \, \mathrm{d}x = \frac{1}{2}+\frac{3}{4}\log 3, \\
\implies \int_{0}^{4}  \frac{\lvert x-1 \rvert }{\lvert x-2 \rvert +\lvert x-3 \rvert } \, \mathrm{d}x &= 2+\frac{3}{4}\log \frac{27}{5}
\end{align}
$$
#### (16) $\int_{0}^{\pi} \frac{x\sin x}{1+\cos ^{2}x} \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\pi} \frac{x\sin x}{1+\cos ^{2}x} \, \mathrm{d}x &= \int_{0}^{\pi} x \, \mathrm{d}\arctan \cos x \\
&= -x\arctan \cos x\Big\vert_{0}^{\pi}+\int_{0}^{\pi} \arctan \cos x \, \mathrm{d}x  \\
&= \frac{\pi^2}{4}+0=\frac{\pi^2}{4}.
\end{align}
$$
#### (17) $\int_{0}^{\pi/4} \frac{\sin x}{\sin x+\cos x} \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\pi/4} \frac{\sin x}{\sin x+\cos x} \, \mathrm{d}x &= \frac{1}{2}\int_{\pi /4}^{\pi/2} \frac{\sin t-\cos t}{\sin t} \, \mathrm{d}t  \\
&= \frac{\pi}{8}-\frac{\log 2}{4}.
\end{align}
$$
#### (18) $\int_{0}^{\pi/2} \frac{\sin 2019x}{\sin x} \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{\pi/2} \frac{\sin (2n+1)x}{\sin x} \, \mathrm{d}x &= \int_{0}^{\pi/2} 1+\sum_{k=1}^{n}{\cos(2kx)} \, \mathrm{d}x  =\frac{\pi}{2}.
\end{align}
$$
#### (19) $\int_{2}^{4} \frac{\log \sqrt{ 9-x }}{\log \sqrt{ 9-x }+\log \sqrt{ x+3 }} \, \mathrm{d}x$
$$
\begin{align}
\int_{2}^{4} \frac{\log \sqrt{ 9-x }}{\log \sqrt{ 9-x }+\log \sqrt{ x+3 }} \, \mathrm{d}x &= \int_{-1}^{1} \frac{\log \sqrt{ 6+t }}{\log \sqrt{ 6+t }+\log \sqrt{ 6-t }} \, \mathrm{d}x  =1.
\end{align}
$$
#### (20) $\int_{0}^{1} \frac{1}{\sqrt{ 1+x^{2} }+\sqrt{ 1-x^{2} }} \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{1}  \, \frac{\mathrm{d}x}{\sqrt{ 1+x^{2} }+\sqrt{ 1-x^{2} }} &= \int_{0}^{1} \frac{1}{2}(\sqrt{ 1+x^{2} }-\sqrt{ 1-x^{2} }) \, \mathrm{d}x  \\
&= -\frac{\pi}{8}+\frac{\sqrt{ 2 }}{4}+\frac{1}{8}\log \frac{\sqrt{ 2 }+1}{\sqrt{ 2 }-1}.
\end{align}
$$
#### (21) $\int_{0}^{1} \sqrt{ x+\sqrt{ x+1 } } \, \mathrm{d}x$
$$
\begin{align}
\int_{0}^{1} \sqrt{ x+\sqrt{ x+1 } } \, \mathrm{d}x &= \int_{1}^{1+\sqrt{ 2 }} \sqrt{ y } \, \mathrm{d}\frac{2y+1-\sqrt{ 4y+5 }}{2}  \\
&= \int_{1}^{1+\sqrt{ 2 }} \sqrt{ y }-\frac{\sqrt{ y }}{\sqrt{ 4y+5 }} \, \mathrm{d}y  \\
\left( y=\frac{z^{2}-5}{4} \right)&= \frac{2}{3}y^{3/2}\Big\vert_{1}^{1+\sqrt{ 2 }}-\int_{3}^{1+2\sqrt{ 2 }} \frac{\sqrt{ z^{2}-5 }}{4} \, \mathrm{d}z \\
&= \frac{2}{3}((1+\sqrt{ 2 })^{3/2}-1)- \frac{3\sqrt{ 2 }-1}{8}+\frac{5}{32}\log \frac{3+\sqrt{ 2 }}{5}.
\end{align}
$$
#### (22) $\int_{-1}^{1} \frac{\sin \sin \sin x}{x^{800}+1} \, \mathrm{d}x$
$$
\begin{align}
\int_{-1}^{1} \frac{\sin \sin \sin x}{x^{800}+1} \, \mathrm{d}x =0. \text{(by symmetry)}
\end{align}
$$
# HW11 Density of Sum of Squares
## PSA: Riemann Integral
#### A1) $f\in C([a,b]),g\in \mathcal{R}([a,b])$, where $g$ is positive. Prove that there exists $\xi \in(a,b)$, such that 
$$
\int_{a}^{b} fg =f(\xi)\int_{a}^{b} g.  
$$
Proof: Since $g$ is positive on $[a,b]$,
$$
\inf_{x\in[a,b]}f(x) \int_{a}^{b} g \leqslant \int_{a}^{b} fg \leqslant \sup_{x\in[a,b]}{f(x)} \int_{a}^{b} g.  
$$
By $f\in C([a,b])$, there exists such an $\xi \in(a,b)$. 
#### A2) Prove without using Lebesgue theorem: if $f$ is monotonously increasing on $[a,b]$, then $f\in \mathcal{R}([a,b])$.
Proof: For any $\varepsilon>0$ let $n=[1 /\varepsilon]+1$, and
$$
\mathcal{C}=\left\{  x_{k}=a+(b-a) \frac{k}{n}:k=0,1,\cdots,n  \right\}.
$$
Then 
$$
g(x)=\max_{x_{k}\leqslant x}\{f(x_{k})\}\leqslant f,h(x)=\min_{x_{k}\geqslant x}\{ f(x_{k}) \}\geqslant f.
$$
and both are monotonous simple functions.
Therefore 
$$
\overline{\int_{a}^{b}}f - \underline{\int_{a}^{b} }f\leqslant \overline{S}(f;\mathcal{C})-\underline{S}(f;\mathcal{C})=\frac{1}{n}(f(b)-f(a))\to 0.
$$
Hence $f$ is Riemann integrable.
#### A3) Prove that $1_{\mathbb{Q}}$ is not Riemann integrable on $[0,1]$.
Proof: Let $\varepsilon=\frac{1}{2}$. For any $\mathcal{C}=\{ 0=x_{0}<\cdots<x_{n}=1 \}$, $\omega(x_{k-1},x_{k})=1,$ hence
$$
\sum_{k=1}^{n}{\omega(x_{k-1},x_{k})(x_{k}-x_{k-1})}=1>\varepsilon.
$$
Therefore $1_{\mathbb{Q}}$ is not Riemann integrable.
#### A4) Prove that if $f\in \mathcal{R}([a,b])$, then $\lvert f \rvert^p \in \mathcal{R}([a,b])$, where $p\geqslant 0$.
Proof: Since $x \mapsto \lvert x \rvert^p$ is continuous, $\lvert f \rvert^p$ is continuous as $x$ whenever $f$ is continuous at $x$. Hence
$$
f\in \mathcal{R}([a,b]) \implies \lvert f \rvert ^p\in \mathcal{R}([a,b]).
$$
#### A5) Prove Hölder’s Inequality: if $f,g\in \mathcal{R}([a,b]),p,q>0,1 /p+1 /q=1$, then
$$
\left\lvert  \int_{a}^{b} fg \right\rvert \leqslant \left( \int_{a}^{b} \lvert f \rvert ^p  \right) ^{1 /p} \left( \int_{a}^{b} \lvert g \rvert ^q  \right) ^{1 /q}.
$$
Proof: By A4) the functions are integrable. We can assume that
$$
\int_{a}^{b} \lvert f \rvert ^p =\int_{a}^{b} \lvert g \rvert ^q=1.  
$$
Then by Young’s inequality,
$$
\left\lvert  \int_{a}^{b} fg \right\rvert \leqslant \int_{a}^{b} \lvert f \rvert \cdot\lvert g \rvert \leqslant \int_{a}^{b} \frac{1}{p}\lvert f \rvert ^p+\frac{1}{q}\lvert g \rvert ^q =\frac{1}{p}+\frac{1}{q}=1.
$$
#### A6) Prove Minkowski’s inequality: if $f,g\in \mathcal{R}([a,b]),p\geqslant 1$, then
$$
\left( \int_{a}^{b} \lvert f+g \rvert ^p  \right) ^{1/ p}\leqslant\left( \int_{a}^{b} \lvert f \rvert ^p  \right) ^{ 1/p}+\left( \int_{a}^{b} \lvert g \rvert ^p \right)^{1 /p}.
$$
Proof: Note that if $1 /p+1 /q=1$, then
$$
\begin{align}
\int_{a}^{b} \lvert f+g \rvert ^p &=\int_{a}^{b} \lvert f \rvert \cdot \lvert f+g \rvert ^{1-p} +\int_{a}^{b} \lvert g \rvert \cdot \lvert f+g \rvert ^{1-p}  \\
 & \leqslant \left( \left( \int_{a}^{b} \lvert f \rvert ^p  \right)^{1/p}+\left( \int_{a}^{b} \lvert g \rvert ^p  \right)^{1/p}\right ) \left( \int_{a}^{b} \lvert f+g \rvert ^{(1-p)q} \right)^{1/q} \\
\end{align}
$$
Hence
$$
\left( \int_{a}^{b} \lvert f+g \rvert ^p  \right) ^{1/ p}\leqslant\left( \int_{a}^{b} \lvert f \rvert ^p  \right) ^{ 1/p}+\left( \int_{a}^{b} \lvert g \rvert ^p \right)^{1 /p}.
$$
The equality holds, when $\lvert f \rvert /\lvert f+g \rvert^{1-p},\lvert g \rvert /\lvert f+g \rvert^{1-p}$ are both constant, which is equivalent to $\lvert f \rvert /\lvert g \rvert$ is constant. 
## PSB: Convex Functions
#### B1) Assume $f\in \mathcal{R}([a,b])$ and $f$ is convex, prove that 
$$
f\left(  \frac{a+b}{2} \right)\leqslant \frac{1}{b-a}\int_{a}^{b} f(x) \, \mathrm{d}x \leqslant \frac{f(a)+f(b)}{2}.
$$
Proof: Note that $f\left( \frac{a+b}{2} \right)\leqslant \frac{f(x)+f(a+b-x)}{2}\leqslant \frac{f(a)+f(b)}{2}$, and
$$
\int_{a}^{b} f(x) \, \mathrm{d}x =\int_{a}^{b} \frac{f(x)+f(a+b-x)}{2} \, \mathrm{d}x . 
$$
Hence 
$$
f\left(  \frac{a+b}{2} \right)\leqslant \frac{1}{b-a}\int_{a}^{b} f(x) \, \mathrm{d}x \leqslant \frac{f(a)+f(b)}{2}.
$$
#### B2) Assume $f$ is twice differentiable on $[a,b]$ and for any $x,f^{\prime\prime}(x)>0,f(x)\leqslant 0$. Prove that for any $x$, 
$$
f(x)\geqslant \frac{2}{b-a} \int_{a}^{b} f(y) \, \mathrm{d}y. 
$$
Proof: For any $x\leqslant y\leqslant b$,
$$
f(y)\leqslant \frac{b-y}{b-x}f(x)+ \frac{y-x}{b-x}f(b)\leqslant \frac{b-y}{b-x}f(x),
$$
hence
$$
\int_{x}^{b} f(y) \, \mathrm{d}y \leqslant f(x)\int_{x}^{b} \frac{b-y}{b-x} \, \mathrm{d}y= \frac{b-x}{2}f(x). 
$$
Likewise,
$$
\int_{a}^{x} f(y) \, \mathrm{d}y\leqslant f(x) \int_{a}^{x} \frac{y-a}{x-a} \, \mathrm{d}y = \frac{x-a}{2}f(x).  
$$
Therefore 
$$
f(x)\geqslant \frac{2}{b-a} \int_{a}^{b} f(y) \, \mathrm{d}y. 
$$
#### B3) Assume $f$ is twice differentiable on $\mathbb{R}$ and $f^{\prime\prime}(x)\geqslant 0$, $\varphi \in C([a,b])$. Prove that 
$$
\frac{1}{b-a}\int_{a}^{b} (f\circ \varphi)(t) \, \mathrm{d}t \geqslant f\left( \frac{1}{b-a}\int_{a}^{b} \varphi(t) \, \mathrm{d}t  \right). 
$$
Proof: We prove the proposition for any convex function $f$ and $\varphi$ on the set $X$. 
Let 
$$
\langle g \rangle=\frac{1}{\mu(X)} \int_{X}g\,\mathrm{d}\mu.
$$
Then since $f$ is convex, there is a constant $K$ such that $f(y)-f(\langle \varphi \rangle)\geqslant K(y-\langle \varphi \rangle)$. Hence
$$
\begin{align}
\langle f(\varphi) \rangle &=\frac{1}{\mu(X)}\int_{X}f(\varphi(t))\,\mathrm{d}\mu \\
& \geqslant \frac{1}{\mu(x)}\int_{X}f(\langle \varphi \rangle )\,\mathrm{d}\mu+\frac{1}{\mu(X)}\int_{X}K(\varphi(t)-\langle \varphi \rangle ) \,\mathrm{d}\mu \\
&= f(\langle \varphi \rangle ).
\end{align}
$$
#### B4) Assume $f\in C([a,b])$ and for any $x$, $f(x)>0$. Prove that
$$
\log \left( \frac{1}{b-a}\int_{a}^{b} f \right)\geqslant \frac{1}{b-a} \int_{a}^{b} \log f.
$$
Proof: Since $-\log x$ is convex, we can use B3).
#### B5) Prove that if $f$ is convex on $\mathbb{R}$, $\varphi \in C([0,1])$, then
$$
f\left( \int_{0}^{1} \varphi  \right)\leqslant \int_{0}^{1} f\circ \varphi. 
$$
Proof: A special case of what we proved in B3).

## PSC: Integrals and Derivatives
#### C1) Assume $f\in C^1([0,2])$, $\lvert f^\prime \rvert\leqslant 1$, $f(0)=f(2)=1$. Prove that 
$$
1\leqslant \int_{0}^{2} f \leqslant 3.
$$
Proof: Note that for $0\leqslant x\leqslant 1$, 
$$
\lvert f(x)-1 \rvert =x \lvert f^{\prime}(\xi) \rvert \leqslant x.
$$
and for $1\leqslant x\leqslant 2$,
$$
\lvert f(x)-1 \rvert = (2-x) \lvert f^{\prime}(\xi) \rvert \leqslant 2-x.
$$
Hence 
$$
\int_{0}^{2} \lvert f(x)-1 \rvert  \, \mathrm{d}x \leqslant \int_{0}^{1} x \, \mathrm{d}x +\int_{1}^{2} (2-x) \, \mathrm{d}x =1.
$$
#### C2) Assume that $f\in C^2([0,1])$. Prove that $\exists \xi \in[0,1]$, such that 
$$
\int_{0}^{1} f(x) \, \mathrm{d}x =f\left( \frac{1}{2} \right)+\frac{1}{24}f^{\prime\prime}(\xi).
$$
Proof: Let $g(x)=f(x)+f(1-x)$, then
$$
\begin{align}
\int_{0}^{1} f(x) \, \mathrm{d}x -f\left( \frac{1}{2} \right) =&\int_{0}^{1/2} g(x)-2f\left( \frac{1}{2} \right) \, \mathrm{d}x  \\
(\text{integration by parts})=&-\int_{0}^{1/2} xg^{\prime}(x) \, \mathrm{d}x=-\frac{1}{2}\int_{0}^{1/2} g^{\prime}(x) \, \mathrm{d}x^{2}   \\
(\text{integration by parts})=& \frac{1}{2}\int_{0}^{1/2} x^{2}g^{\prime\prime}(x) \, \mathrm{d}x. 
\end{align}
$$
Note that $g^{\prime\prime}\in C([0,1])$ hence by A1), $\exists \eta \in (0,\frac{1}{2}),$
$$
\int_{0}^{1} f(x) \, \mathrm{d}x -f\left( \frac{1}{2} \right)=g^{\prime\prime}(\eta) \frac{1}{2}\int_{0}^{1/2} x^{2} \, \mathrm{d}x =\frac{1}{48}g^{\prime\prime}(\eta).
$$
Since $f^{\prime\prime}\in C([0,1])$, there exists $\xi \in (\eta,1-\eta)$, such that 
$$
f^{\prime\prime}(\xi)=\frac{f^{\prime\prime}(\eta)+f^{\prime\prime}(1-\eta)}{2}= \frac{g^{\prime\prime}(\eta)}{2}.
$$
Therefore
$$
\int_{0}^{1} f(x) \, \mathrm{d}x =f\left( \frac{1}{2} \right)+\frac{1}{24}f^{\prime\prime}(\xi).
$$
#### C3) Assume $f\in C^1([0,1])$. Prove that
$$
\max_{x\in[a,b]}\lvert f(x) \rvert \leqslant \frac{1}{b-a} \left\lvert  \int_{a}^{b} f(x) \, \mathrm{d}x   \right\rvert +\int_{a}^{b} \lvert f^{\prime}(x) \rvert  \, \mathrm{d}x .
$$
Proof: For any $t\in[a,b]$,
$$
(b-a) \lvert f(t) \rvert\leqslant\left\lvert  \int_{a}^{b} f(x) \, \mathrm{d}x  \right\rvert +\left\lvert  \int_{a}^{b} f(x)-f(t) \, \mathrm{d}x   \right\rvert 
$$
where
$$
\begin{align}
\left\lvert  \int_{a}^{b} f(x)-f(t) \, \mathrm{d}x   \right\rvert & = \left\lvert  \int_{a}^{b} \left( \int_{t}^{x} f^{\prime}(u) \, \mathrm{d}u  \right) \, \mathrm{d}x   \right\rvert  \\
& \leqslant \int_{a}^{b} \int_{t}^{x} \lvert f^{\prime}(u) \rvert  \, \mathrm{d}u  \, \mathrm{d}x  \\ \\
& \leqslant (b-a)\int_{a}^{b} \lvert f^{\prime}(u) \rvert  \, \mathrm{d}u. 
\end{align}
$$
#### C4) Suppose $f\in C([0,1])$ and for any $g\in C([0,1]),g(0)=g(1)=0,$ we have
$$
\int_{0}^{1} f(x)g(x) \, \mathrm{d}x =0.
$$
Prove that $f(x)\equiv 0$.
Proof: Otherwise assume $f(t)>0$ for some $t\in(0,1)$, then there exists an $\varepsilon>0$ such that $(t-\varepsilon,t+\varepsilon) \subset [0,1]$ and $\forall x\in(t-\varepsilon,t+\varepsilon), f(x)>f(t)/2$.
Let
$$
g(x)=
\begin{cases}
0, & x \not\in (t-\varepsilon,t+\varepsilon), \\
1- \frac{\lvert x-t \rvert }{\varepsilon}, & x\in(t-\varepsilon,t+\varepsilon).
\end{cases}
$$
Then 
$$
\int_{0}^{1} f(x)g(x) \, \mathrm{d}x > \int_{t-\varepsilon}^{t+\varepsilon} \frac{f(t)}{2}g(x) \, \mathrm{d}x >0,
$$
leading to contradiction. Hence $f(x)\equiv 0$.
#### C5) Suppose $f\in C([0,1])$ and for any $n\in \mathbb{Z}_{\geqslant 0}$,
$$
\int_{0}^{1} f(x)x^n \, \mathrm{d}x =0.
$$
Prove that $f(x)\equiv 0$.
Proof: Otherwise, $\int_{0}^{1} f^{2} >0$. By Stone-Weierstrass theorem, for any $\varepsilon>0$, there is a polynomial $P$ such that $\sup_{x\in[0,1]}{\lvert f(x)-P(x) \rvert}<\varepsilon$. Hence
$$
0=\int_{0}^{1} f(x)P(x) \, \mathrm{d}x =\int_{0}^{1} f^{2} -\int_{0}^{1} f(x)(f(x)-P(x)) \, \mathrm{d}x \geqslant \int_{0}^{1} f^{2} - \sup_{x\in[0,1]}{\lvert f(x) \rvert } \varepsilon>0 
$$
when $\varepsilon\to 0$, leading to contradiction.
#### C6) (Gronwall’s Inequality) Suppose $\varphi \in C([0,T])$ and for any $t\in[0,T]$, $\lvert \varphi(t) \rvert\leqslant M+k \int_{0}^{t} \lvert \varphi(s) \rvert \, \mathrm{d}s$, where $M,k$ are positive real numbers. Prove that $\forall t\in[0,T]$, $\lvert \varphi(t) \rvert\leqslant Me^{kt}$. 
Proof: Let 
$$f:\left[ 0,\frac{T}{k} \right]\to \mathbb{R},t\mapsto \frac{e^{-t}\lvert\varphi(t /k)\rvert}{M},$$
then for any $t\in[0,T /k]$,
$$
f(t)\leqslant e^{-t}+e^{-t}\int_{0}^{t} f(s)e^{s} \, \mathrm{d}s. 
$$
Let $f(t)=\sup_{s \in [0,T/k]}\{f(s)\}$ then
$$
f(t)\leqslant e^{-t}+e^{-t} \int_{0}^{t} f(t)e^{s} \, \mathrm{d}x =e^{-t}+f(t) (1-e^{-t}).
$$
Hence $f(s)\leqslant f(t)\leqslant 1$, $\implies \lvert \varphi(t) \rvert\leqslant Me^{kt}$.
#### C7) Assume $a,b>0$, $f\in C([-a,b])$. If for any $x\in(-a,b)$, $f(x)>0$ and $\int_{-a}^{b} xf(x) \, \mathrm{d}x=0$. Prove that 
$$
\int_{-a}^{b} x^{2}f(x) \, \mathrm{d}x \leqslant ab\int_{-a}^{b} f(x) \, \mathrm{d}x .
$$
Proof: Note that
$$
\int_{-a}^{b} (x+a)(x-b)f(x) \, \mathrm{d}x\leqslant 0.
$$
Combined with $\int_{-a}^{b} xf(x) \, \mathrm{d}x=0$ we get
$$
\int_{-a}^{b} x^{2}f(x) \, \mathrm{d}x \leqslant ab\int_{-a}^{b} f(x) \, \mathrm{d}x .
$$
#### C8) Assume $f\in C([-1,1])$. Prove that
$$
\lim_{ \lambda \to 0^+ } \int_{-1}^{1} \frac{\lambda}{\lambda^{2}+x^{2}}f(x) \, \mathrm{d}x =\pi f(0).
$$
Proof: Let $M=\sup_{\lvert x \rvert\leqslant 1}{\lvert f(x) \rvert}$ and 
$$
g(x)=\frac{\lambda}{\lambda^{2}+x^{2}},
$$
then ($g$ is sort of a good kernel)
$$
\int_{-1}^{1} g(x) \, \mathrm{d}x =2\arctan \frac{1}{\lambda}.
$$
Hence
$$
\begin{align}
&\left\lvert  \int_{-1}^{1} f(x)g(x) \, \mathrm{d}x -\pi f(0)  \right\rvert  \\
\leqslant &\left\lvert  \pi-2\arctan \frac{1}{\lambda}  \right\rvert f(0)+\int_{-\varepsilon}^{\varepsilon}\lvert f(x)-f(0) \rvert g(x)  \, \mathrm{d}x +\int_{\varepsilon\leqslant x\leqslant 1} Mg(x)  \, \mathrm{d}x\\
\leqslant & \left\lvert  \pi-2\arctan \frac{1}{\lambda}  \right\rvert f(0)+\sup_{\lvert x \rvert \leqslant\varepsilon}{\lvert f(x)-f(0) \rvert }\pi+2M\left\lvert  \arctan \frac{1}{\lambda}-\arctan \frac{\varepsilon}{\lambda}  \right\rvert \\ 
& \to 0
\end{align}
$$
since
$$
\arctan \frac{1}{\lambda}-\arctan \frac{\varepsilon}{\lambda}=\arctan \frac{\lambda(1-\varepsilon)}{\lambda^{2}+\varepsilon}\to 0, \text{when } \lambda\to 0^+.
$$
and $\sup_{\lvert x \rvert\leqslant\varepsilon}{\lvert f(x)-f(0) \rvert}\to 0$ when $\varepsilon\to 0$.
#### C9) Assume $f$ is differentiable on $[1,\infty)$ and both $\int_{1}^{\infty} f(x) \, \mathrm{d}x$ and $\int_{1}^{\infty} f^\prime(x) \, \mathrm{d}x$ converges. Prove that 
$$
\lim_{ x \to \infty } f(x)=0.
$$
Proof: For any $\varepsilon>0$, there exists $N>1$, such that $\forall u,v>N$,
$$
\left\lvert  \int_{u}^{v} f^{\prime}(x) \, \mathrm{d}x   \right\rvert<\varepsilon, \text{ i.e. } \lvert f(u)-f(v) \rvert <\varepsilon
$$
Hence for any $u>N$, if $\lvert f(u) \rvert>\varepsilon$,
$$
\left\lvert  \int_{u}^{M} f(x) \, \mathrm{d}x   \right\rvert \geqslant (M-u) (\lvert f(u)-\varepsilon \rvert )\to \infty, \text{ as } M\to \infty,
$$
which contradicts the fact that $\int_{1}^{\infty} f(x) \, \mathrm{d}x$ converges. Therefore $\lvert f(u) \rvert<\varepsilon$ for any $u>N$, which implies $\lim_{ x \to \infty }f(x)=0$.

#### C10) Prove that
$$
\int_{0}^{\infty} \frac{\sin ^{2}x}{x^{2}} \, \mathrm{d}x =\int_{0}^{\infty} \frac{\sin x}{x} \, \mathrm{d}x ,\int_{0}^{\infty} \frac{\cos x}{1+x} \, \mathrm{d}x =\int_{0}^{\infty} \frac{\sin x}{(1+x)^{2}} \, \mathrm{d}x .
$$
Proof:
$$
\begin{align}
&\int_{0}^{\infty} \frac{\sin^{2}x}{x^{2}} \, \mathrm{d}x=-\int_{0}^{\infty} \sin ^{2}x \, \mathrm{d} \frac{1}{x} =\int_{0}^{\infty} \frac{\sin 2x}{x} \, \mathrm{d}x =\int_{0}^{\infty} \frac{\sin x}{x} \, \mathrm{d}x .\\
&\int_{0}^{\infty} \frac{\cos x}{1+x} \, \mathrm{d}x =\int_{0}^{\infty} \frac{1}{1+x} \, \mathrm{d}\sin x=\int_{0}^{\infty} \frac{\sin x}{(1+x)^{2}} \, \mathrm{d}x . 
\end{align}
$$

## PSD: Calculation of improper integrals
#### D1) 
$$
\int_{0}^{1} \log x \, \mathrm{d}x = (x \log x-x)\Big\vert_{0}^{1}=-1.
$$
#### D2)
$$
\int_{-\infty}^{\infty} \frac{1}{1+x^{2}} \, \mathrm{d}x =\arctan x \Big\vert_{-\infty}^{\infty}=\pi.
$$
#### D3)
Calculating residues, we get
$$
\int_{-\infty}^{\infty}  \, \frac{\mathrm{d}x}{x^4+1}=2\pi i \cdot (Res(f;e^{i\pi/4})+Res(f;e^{3i\pi/4}))=\frac{\pi}{\sqrt{ 2 }}.
$$
Hence
$$
\int_{0}^{\infty}  \, \frac{\mathrm{d}x}{x^{4}+1}=\frac{\pi}{2\sqrt{ 2 }}.
$$
#### D4)
Same as D3)
$$
\int_{-\infty}^{\infty} \frac{1+x^{2}}{1+x^4} \, \mathrm{d}x =\sqrt{ 2 }\pi.
$$
Hence
$$
\int_{0}^{\infty} \frac{1+x^{2}}{1+x^4} \, \mathrm{d}x =\frac{\pi}{\sqrt{ 2 }}.
$$
#### D5)
$$
\int_{-\infty}^{0} xe^{x} \, \mathrm{d}x =\int_{-\infty}^{0} x \, \mathrm{d}e^{x}= -\int_{-\infty}^{0} e^x \, \mathrm{d}x =-1.
$$
#### D6)
$$
\int_{0}^{\infty} e^{-\sqrt{ x }} \, \mathrm{d}x =2\int_{0}^{\infty} ye^{-y} \, \mathrm{d}y =2 \int_{0}^{\infty} e^{-y} \, \mathrm{d}y=2. 
$$
#### D7)
$$
\int_{0}^{\infty}  \, \frac{\mathrm{d}x}{(a^{2}+x^{2})^{3 /2}}=\frac{1}{a^2}\int_{0}^{\infty}  \, \frac{\mathrm{d}x}{(1+x^{2})^{3 /2}}= \frac{1}{2a^{2}} B\left( \frac{1}{2},1 \right)= \frac{1}{a^{2}}.
$$
(We can also substitute $x=a\tan\theta$).
#### D8)
$$
\int_{2}^{\infty}  \, \frac{\mathrm{d}x}{x^{2}+x-2}=\frac{1}{3}\log \frac{x-1}{x+2} \Big\vert_{2}^{\infty}= \frac{\log 3}{3}.
$$
#### D9)
$$
\begin{align}
\int_{-\infty}^{\infty}  \, \frac{\mathrm{d}x}{(x^{2}+x+1)^{2}} &= \frac{8}{3\sqrt{ 3 }}\int_{-\infty}^{\infty}  \, \frac{\mathrm{d}u}{(1+u^{2})^{2}}  \\
(u=\tan\theta)&= \frac{8}{3\sqrt{ 3 }} \int_{-\pi /2}^{\pi/2} \cos ^{2}\theta \, \mathrm{d}\theta=  \frac{4\sqrt{ 3 }\pi}{9}.
\end{align}
$$
#### D10)
$$
\int_{-1}^{1}  \, \frac{\mathrm{d}x}{\sqrt{ 1-x^{2} }}=\int_{-\pi /2}^{\pi /2} 1 \, \mathrm{d}\theta =\pi.
$$
#### D11)
$$
\int_{-1}^{1} \frac{\arcsin x}{\sqrt{ 1-x^{2} }} \, \mathrm{d}x =\int_{-\pi /2}^{\pi /2} \theta \, \mathrm{d}\theta =0. 
$$
#### D12) 
Let $\gamma$ be the unit circle, then
$$
\begin{align}
\int_{-1}^{1}  \, \frac{\mathrm{d}x}{(2-x)^{2}\sqrt{ 1-x^{2} }}&=\int_{-\pi /2}^{\pi /2} \frac{\mathrm{d}\theta}{(2-\sin\theta)^{2}}=\frac{1}{2}\int_{-\pi}^{\pi}  \, \frac{\mathrm{d}\theta}{(2-\sin\theta)^{2}}  \\
&= \frac{1}{2}\int_{\gamma} -\frac{4}{i} \frac{z\mathrm{d}z}{(z^{2}-4iz-1)^{2}}  \\
&= -4\pi \mathrm{Res}\left( \frac{z}{(z^{2}-4iz-1)^{2}};(2-\sqrt{ 3 })i \right) \\
&= \frac{2\pi}{3\sqrt{ 3 }}.
\end{align}
$$
### D13)
$$
\int_{0}^{1} \frac{\arcsin \sqrt{ x }}{x(1-x)} \, \mathrm{d}x > \int_{1 /4}^{1} \frac{\pi}{6} \frac{1}{1-x} \, \mathrm{d}x \text{ which diverges.}
$$
#### D14)
$$
\int_{0}^{1} (1-x)^n x^{1 /2-1} \, \mathrm{d}x =B\left( n+1,\frac{1}{2} \right)=\frac{\Gamma(n+1)\Gamma\left( \frac{1}{2} \right)}{\Gamma\left( n+\frac{3}{2} \right)}= \frac{n! 2^{n+1}}{(2n+1)!!}.
$$
#### D15)
$$
\int_{0}^{1} \frac{x^n}{\sqrt{ 1-x^{2} }} \, \mathrm{d}x =\int_{0}^{\pi /2} \sin ^nx \, \mathrm{d}x =
\begin{cases}
\frac{(n-1)!!}{n!!}, n \text{ is odd,} \\
\frac{(n-1)!!}{n!!}\cdot \frac{\pi}{2}, n \text{ is even.} \\
\end{cases}
$$
#### D16)
Using integration by parts, and substitute $x=e^{-y}$,
$$
\begin{align}
\int_{0}^{1} x^m(\log x)^n \, \mathrm{d}x &=(-1)^n \int_{0}^{\infty} e^{-(m+1)y}y^n \, \mathrm{d}y \\
& =(-1)^n \frac{n!}{(m+1)^n} \int_{0}^{\infty} e^{-(m+1)y} \, \mathrm{d}y = \frac{(-1)^nn!}{(m+1)^{n+1}}.
\end{align}
$$
#### D17)
$$
\int_{2}^{\infty}  \, \frac{\mathrm{d}x}{x(\log x)^p}= \int_{\log 2}^{\infty}  \, \frac{\mathrm{d}y}{y^p}= \frac{(\log 2)^{1-p}}{p-1}. 
$$
#### D18)
Substitute $x=ay$, then
$$
\begin{align}
\int_{0}^{\infty} \frac{\log x}{x^{2}+a^{2}} \, \mathrm{d}x &= \frac{\pi \log a}{2a}+\frac{1}{a}\int_{0}^{\infty} \frac{\log y}{1+y^{2}} \, \mathrm{d}y= \frac{\pi \log a}{2a}.
\end{align}
$$
since by substituting $y= 1 / z$,
$$
\int_{0}^{\infty} \frac{\log y}{1+y^{2}} \, \mathrm{d}y= -\int_{0}^{\infty} \frac{\log z}{1+z^{2}} \, \mathrm{d}z=0. 
$$
#### D19)
$$
\int_{0}^{\infty} x^ne^{-x} \, \mathrm{d}x =\Gamma(n)=(n-1)!.
$$
#### D20)
$$
\int_{-\infty}^{\infty}  \, \frac{\mathrm{d}x}{(ax^{2}+2bx+c)^n}=\frac{1}{d^n} \sqrt{ \frac{d}{a} } \int_{-\infty}^{\infty} \, \frac{\mathrm{d}u}{(1+u^{2})^n}= \frac{1}{d^n}\sqrt{ \frac{d}{a} }\pi \frac{(2n-3)!!}{(2n-2)!!}.
$$
where $d=\frac{ac-b^{2}}{a}$
#### D21)
$$
\int_{0}^{\infty} x^{2n-1}e^{-x^{2}} \, \mathrm{d}x = \frac{1}{2} \int_{0}^{\infty} y^{n-1}e^{-y} \, \mathrm{d}y =\frac{(n-1)!}{2}. 
$$
#### D22)
The Poisson kernel
$$
\begin{align}
\frac{1-r^{2}}{1-2r\cos x+r^{2}} &= \frac{1-r^{2}}{(1-re^{ix})(1-re^{-ix})} \\
&=(1-r^{2})\sum_{n=0}^{\infty}{r^ne^{inx}}\sum_{m=0}^{\infty}{r^me^{-imx}} \\
&= \sum_{k=-\infty}^{\infty}{r^{\lvert k \rvert }e^{ikx}}.
\end{align}
$$
Hence
$$
\int_{-\pi}^{\pi} \frac{1-r^{2}}{1-2r\cos x+r^{2}} \, \mathrm{d}x= 2\pi.
$$
#### D23)
$$
\begin{align}
\int_{0}^{\infty} e^{-ax}\cos bx \, \mathrm{d}x &= \frac{1}{b} \int_{0}^{\infty} e^{-ax} \, \mathrm{d}\sin bx =\frac{a}{b}\int_{0}^{\infty} e^{-ax}\sin bx \, \mathrm{d}x \\
&= -\frac{a}{b^{2}} \int_{0}^{\infty} e^{-ax} \, \mathrm{d}\cos bx =\frac{a}{b^{2}}-\frac{a^{2}}{b^{2}}\int_{0}^{\infty} e^{-ax}\cos bx \, \mathrm{d}x \\
&= \frac{a}{a^{2}+b^{2}} .
\end{align}
$$
#### D24)
Same as (23),
$$
\int_{0}^{\infty} e^{-ax}\sin bx \, \mathrm{d}x = \frac{b}{a^{2}+b^{2}}.
$$
#### D25)
$$
\begin{align}
& \int_{1}^{\infty}  \, \frac{\mathrm{d}x}{x(x+1)\cdots(x+n)}= \lim_{ N \to \infty } \int_{0}^{N} \sum_{k=0}^{n}{\frac{(-1)^k}{x+k}\binom{n}{k}} \, \mathrm{d}x  \\
=& \lim_{ N \to \infty } \sum_{k=0}^{n}{(-1)^k \binom{n}{k}\log \left( \frac{N+k}{(k+1)} \right)} \\
=& -\sum_{k=0}^{n}{(-1)^k \binom{n}{k}\log (k+1)}+\lim_{ N \to \infty } \sum_{k=0}^{n}{(-1)^k\binom{n}{k}\log\left( 1+\frac{k}{N} \right)} \\
=& -\sum_{k=0}^{n}{(-1)^k\binom{n}{k}\log (k+1)}.
\end{align}
$$
#### D26)
$$
\begin{align}
& \int_{0}^{\pi} \log \sin x \, \mathrm{d}x = 2\int_{0}^{\pi /2} \log \sin x \, \mathrm{d}x =2\int_{0}^{\pi /2} \log \cos x \, \mathrm{d}x  \\
=& \int_{0}^{\pi /2} \log \sin 2x-\log 2 \, \mathrm{d}x =\frac{1}{2}\int_{0}^{\pi} \log \sin x \, \mathrm{d}x -\frac{\pi}{2}\log 2 \\
=& -\pi \log 2.
\end{align}
$$
#### D27)
$$
\int_{0}^{\infty} e^{-x^{2}} \, \mathrm{d}x = \frac{\sqrt{ \pi }}{2}.
$$
Note that 
$$
\max \{ 0,1-x^{2} \}<e^{-x^{2}}<\frac{1}{1+x^{2}}.
$$
Hence 
$$
\frac{(2n)!!}{(2n+1)!!}<\int_{0}^{\infty} e^{-nx^{2}} \, \mathrm{d}x < \frac{(2n-3)!!}{(2n-2)!!}\cdot \frac{\pi}{2}.
$$
Therefore
$$
\sqrt{ n }\frac{(2n)!!}{(2n+1)!!}<\int_{0}^{\infty} e^{-x^{2}} \, \mathrm{d}x < \sqrt{ n }\frac{(2n-3)!!}{(2n-2)!!}\cdot \frac{\pi}{2}.
$$
By Wallis’s formula,
$$
\int_{0}^{\infty} e^{-x^{2}} \, \mathrm{d}x =\frac{\sqrt{ \pi }}{2}.
$$
## PSE: Density of sum of squares
Let $I=(0,\infty)$.
### Part 1
#### E1) Prove that $e^{-u} /\sqrt{ u }$ is integrable on $I$, and let $K=\int_{0}^{\infty} e^{-u} /\sqrt{ u } \, \mathrm{d}u$.
Proof:
$$
\begin{align}
\int_{1}^{\infty} e^{-u} /\sqrt{ u } \, \mathrm{d}u <\int_{1}^{\infty} e^{-u} \, \mathrm{d}u=\frac{1}{e}.  \\
\int_{0}^{1} e^{-u} /\sqrt{ u } \, \mathrm{d}u <\int_{0}^{1} u^{-1 /2} \, \mathrm{d}u = \frac{1}{2}.  
\end{align}
$$
#### E2) Prove that for any $x\in I$, 
$$F(x)=\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }(u+x)} \, \mathrm{d}u$$
is well-defined.
Proof:
$$
F(x)<\int_{0}^{\infty} \frac{e^{-u}}{x\sqrt{ u }} \, \mathrm{d}u \text{ converges.} 
$$
#### E3) Prove that $F\in C^1(I)$ and calculate $F^\prime(x)$.
Solution: Let $f(x,u)=\frac{e^{-u}}{\sqrt{ u }(u+x)}$, then $f$ is uniformly continuous on any closed subinterval of $I$, and so is
$$
\frac{\mathrm{d}}{\mathrm{d}x}f(x,u)=-\frac{e^{-u}}{\sqrt{ u }(u+x)^{2}}.
$$
Also,
$$
\int_{0}^{\infty} \frac{\mathrm{d}}{\mathrm{d}x}f(x,u) \, \mathrm{d}u 
$$
converges uniformly.
Hence $F$ is continuously differentiable and 
$$
F^{\prime}(x)=-\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }(u+x)^{2}} \, \mathrm{d}u .
$$
#### E4) Prove that for any $x\in I$,
$$
x F^{\prime}(x)-\left( x-\frac{1}{2} \right)F(x)=-K.
$$
Proof: We show that
$$
x\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }(u+x)^{2}} \, \mathrm{d}u +\left( x-\frac{1}{2} \right)\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }(u+x)} \, \mathrm{d}u =\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }} \, \mathrm{d}u. 
$$
Note that, by substituting $u\to ux$,
$$
\begin{align}
& x\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }(u+x)^{2}} \, \mathrm{d}u = \frac{1}{\sqrt{ x }}\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }(1+u)^{2}} \, \mathrm{d}u, \\
& \left( x-\frac{1}{2} \right)\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }(u+x)} \, \mathrm{d}u=\left( \sqrt{ x }-\frac{1}{2\sqrt{ x }} \right) \int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }(1+x)} \, \mathrm{d}u ,  \\
& \int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }} \, \mathrm{d}u = \sqrt{ x }\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u. 
\end{align}
$$
Hence it is equivalent to
$$
x\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u =\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }(1+u)^{2}} \, \mathrm{d}u+\left( x-\frac{1}{2} \right)\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }(1+u)} \, \mathrm{d}u.  
$$
Note that $\mathrm{d} e^{-ux}\sqrt{ u }=-e^{-ux}\left( x\sqrt{ u }-\frac{1}{2\sqrt{ u }} \right)\mathrm{d}u$, hence
$$
\begin{align}
& x\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u -\left( x+\frac{1}{2} \right)\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }(1+u)} \, \mathrm{d}u \\
=& \int_{0}^{\infty} e^{-ux}\left( x\sqrt{ u }-\frac{1}{2\sqrt{ u }} \right) \, \frac{\mathrm{d}u}{1+u}  \\
=& -\int_{0}^{\infty}  \, \frac{\mathrm{d}e^{-ux}\sqrt{ u }}{1+u} =-\int_{0}^{\infty} e^{-ux}\sqrt{ u } \, \frac{\mathrm{d}u}{(1+u)^{2}} \\
=& \int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \frac{\mathrm{d}u}{(1+u)^{2}}-\int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \frac{\mathrm{d}u}{1+u}.  
\end{align}
$$
($\sqrt{ u }=\frac{1}{\sqrt{ u }}((1+u)-1)$)
#### E5) Define $G:I\to \mathbb{R},x\mapsto \sqrt{ x }e^{-x}F(x)$. Prove that $\exists C\in \mathbb{R}$ such that
$$
G(x)=C-K\int_{0}^{x} \frac{e^{-t}}{\sqrt{ t }} \, \mathrm{d}t. 
$$
Proof: By B4)
$$
G^{\prime}(x)=\sqrt{ x }e^{-x}F^{\prime}(x)+\left( \frac{1}{2\sqrt{ x }}-\sqrt{ x } \right)e^{-x}F(x)=-K \frac{e^{-x}}{\sqrt{ x }}.
$$
Hence let $C=G(0)$, then
$$
G(x)=C+\int_{0}^{x} G^{\prime}(x) \, \mathrm{d}x =C-K\int_{0}^{x} \frac{e^{-t}}{\sqrt{ t }} \, \mathrm{d}t. 
$$
#### E6) Calculate the value of $K$.
Solution: Note that when $x\to \infty$, $F(x)\to 0$ hence $G(x)\to 0$. Therefore
$$
0=\lim_{ x \to \infty } G(x)=G(0)-K\int_{0}^{\infty} \frac{e^{-t}}{t} \, \mathrm{d}t=G(0)-K^{2}. 
$$
Where
$$
\begin{align}
G(0)&=\lim_{ x \to 0^+ } \frac{\sqrt{ x }}{e^x}\int_{0}^{\infty} \frac{e^{-u}}{\sqrt{ u }(x+u)} \, \mathrm{d}u =\lim_{ x \to 0 } \int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }(1+u)} \, \mathrm{d}u  \\
&= \int_{0}^{\infty} \frac{1}{\sqrt{ u }(1+u)} \, \mathrm{d}u =\int_{0}^{\infty}  \, \frac{2\mathrm{d}t}{1+t^{2}} =\pi.
\end{align}
$$
Hence $K=\sqrt{ \pi }$.
### Part 2
Define
$$
f(x)=\sum_{n=1}^{\infty}{\frac{e^{-nx}}{\sqrt{ n }}},g(x)=\sum_{n=0}^{\infty}{\sqrt{ n }e^{-nx}}.
$$
#### E7) Prove that $f,g$ are well-defined on $I$ and are both continuous on $I$.
Proof: Let $C=\sup_{x\geqslant0}{x^3e^{-x}}$, then
$$
\sum_{n=1}^{\infty}{\frac{e^{-nx}}{\sqrt{ n }}}<\sum_{n=0}^{\infty}{\sqrt{ n }e^{-nx}}\leqslant \sum_{n=1}^{\infty}{\frac{C }{(nx)^{2}\sqrt{ x }}} \text{ converges}.
$$
On any closed sub-interval of $I$, the two series both converge uniformly, and $e^{-nx}$ is continuous, hence $f,g$ are both continuous on $I$.
#### E8) Prove that $\forall x\in I$,
$$
\int_{1}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u\leqslant f(x)\leqslant \int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u.  
$$
Proof: The function $e^{-ux}/\sqrt{ u }$ is monotonously decreasing by $u$, hence
$$
\begin{align}
& \int_{1}^{N} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u \leqslant \sum_{n=1}^{N-1}{\frac{e^{-nx}}{\sqrt{ n }}}\leqslant f(x). \\
& \sum_{n=1}^{N}{\frac{e^{-nx}}{\sqrt{ n }}}\leqslant \int_{0}^{N} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u \leqslant \int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u . 
\end{align}
$$
Therefore
$$
\int_{1}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u \leqslant f(x)\leqslant \int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ u }} \, \mathrm{d}u .
$$
#### E9) Prove that $\exists C_{0}$ such that
$$
\lim_{ x \to 0^+ } \sqrt{ x }f(x)=C_{0}.
$$
Proof: By E8)
$$
\begin{align}
& \sqrt{ x }f(x)\leqslant \int_{0}^{\infty} \frac{e^{-ux}}{\sqrt{ ux }} \, \mathrm{d}ux=\int_{0}^{\infty} \frac{e^{-t}}{\sqrt{ t }} \, \mathrm{d}t=\sqrt{ \pi }.  \\
& \sqrt{ x }f(x)\geqslant \int_{1}^{\infty} \frac{e^{-ux}}{\sqrt{ ux }} \, \mathrm{d}ux =\int_{x}^{\infty} \frac{e^{-t}}{\sqrt{ t }} \, \mathrm{d}t\to \sqrt{ \pi } . 
\end{align}
$$
Hence 
$$
\lim_{ x \to 0^+ } \sqrt{ x }f(x) = \sqrt{ \pi }.
$$
#### E10) Define the sequence $\{ a_{n} \}_{n\geqslant 1}$ as follows:
$$
a_{n}=\left( \sum_{k=1}^{n}{\frac{1}{\sqrt{ k }}} \right)-2\sqrt{ n }.
$$
Prove that $\{ a_{n} \}$ converges.
Proof: By Euler-Maclaurin formula, for $f(x)=1 / \sqrt{ x }$,
$$
\begin{align}
\sum_{k=1}^{n}{\frac{1}{\sqrt{ k }}} &= \frac{f(1)+f(n)}{2}+\int_{1}^{n} \frac{1}{\sqrt{ x }} \, \mathrm{d}x + \int_{1}^{n} \widetilde{B}_{1}(x)f^{\prime}(x) \, \mathrm{d}x  \\
&= 2\sqrt{ n }-\frac{3}{2}+\frac{1}{2\sqrt{ n }}+\int_{1}^{n} \widetilde{B}_{1}(x)f^{\prime}(x) \, \mathrm{d}x  \\
\end{align}
$$
Hence 
$$
\lim_{ n \to \infty } a_{n}= -\int_{1}^{\infty} \frac{\widetilde{B}_{1}(x)}{2x^{3/2}} \, \mathrm{d}x -\frac{3}{2}.
$$
#### E11) Prove that for any $x\in I$, the function
$$
h(x)=\sum_{n\geqslant 1}^{}{\left( \sum_{k=1}^{n}{\frac{1}{\sqrt{ k }}} \right)e^{-nx}}
$$
is well-defined.
Proof: By E10), $\lvert a_{n} \rvert$ is bounded, hence
$$
h(x)=\sum_{n\geqslant 1}^{}{2\sqrt{ n }e^{-nx}+a_{n}e^{-nx}} =2g(x)+\sum_{n\geqslant 1}^{}{a_{n}e^{-nx}}\leqslant 2g(x)+\sup_{n}{\lvert a_{n} \rvert } \cdot \frac{1}{e^{x}-1}.
$$
#### E12) Express $h(x)$ using $f(x)$ and find a constant $C_{1}$ such that 
$$
\lim_{ x \to 0^+ } x^{\frac{3}{2}}h(x)=C_{1}.
$$
Proof: Since $e^{-nx} /k>0$, we can interchange the sums
$$
h(x)=\sum_{k=1}^{\infty}{\frac{1}{\sqrt{ k }}\sum_{n=k}^{\infty}{e^{-nx}}}=\sum_{k=1}^{\infty}{\frac{e^{-kx}}{\sqrt{ k }} \frac{1}{1-e^{-x}}}=\frac{1}{1-e^{-x}}f(x).
$$
Therefore
$$
\lim_{ x \to 0^+ } x^{3/2}h(x)= \lim_{ x \to 0^+ }  \sqrt{ x }f(x)=\sqrt{ \pi }.
$$
#### E13) Prove that
$$
\lim_{ x \to 0^+ } x^{\frac{3}{2}}g(x)= \frac{\sqrt{ \pi }}{2}.
$$
Proof: 
$$
\lim_{ x \to 0^+ } x^{3/2}\lvert h(x)-2g(x) \rvert\leqslant \lim_{ x \to 0^+ } \sup_{n}{\lvert a_{n} \rvert }\cdot \frac{x^{3/2}}{e^x-1}=0. 
$$
Hence
$$
\lim_{ x \to 0^+ } x^{3/2}g(x)=\frac{1}{2}\lim_{ x \to 0^+ } x^{3/2}h(x)= \frac{\sqrt{ \pi }}{2}.
$$
### Part 3
Given $A\subset \mathbb{Z}_{\geqslant 0}$, we can define a sequence $\{ a_{n} \}_{n\geqslant 0}$:
$$
a_{n}=
\begin{cases}
1, & \text{if } n \in A; \\
0, & \text{if } n \not\in A.
\end{cases}
$$
Define the set $I_{A}\subset \mathbb{R}_{\geqslant 0}$ as follows:
$$
I_{A}=\left\{  x\geqslant 0: \text{the series } \sum_{n\geqslant 0}^{}{a_{n}e^{-nx}} \text{ converges} \right\}.
$$
Define the function $f_{A}:I_{A}\to \mathbb{R}$ as follows:
$$
f_{A}(x)=\sum_{n\geqslant 0}^{}{a_{n}e^{-nx}}.
$$
Let $\Phi(A)=\lim_{ x \to 0 }xf_{A}(x)$ (if the limit exists) and let
$$
\mathcal{S}=\{ A\subset \mathbb{Z}_{\geqslant 0}: \lim_{ x \to 0^+ } xf_{A}(x) \text{ exists} \}.
$$
For example, let 
$$
A_{1}=\{ n^{2}:n\in \mathbb{Z}_{\geqslant 1} \},A_{2}=\{ p^{2}+q^{2}:p,q\in \mathbb{Z}_{\geqslant 1} \}.
$$
#### E14) Determine the set $I_{A}$.
Solution: If $A$ is finite, then $I_{A}=\mathbb{R}_{\geqslant 0}$. Otherwise $I_{A}=\mathbb{R}_{>0}=I$.
#### E15) Given $A\subset \mathbb{Z}_{\geqslant 0}$, for any $n\geqslant 0$, define the set $A_{\leqslant n}$:
$$
A_{\leqslant n}=\{ \mathscr{l}\in A:\mathscr{l}\leqslant n \}.
$$
Prove that for any $x>0$, the series
$$
\sum_{n=0}^{\infty}{\lvert A_{\leqslant n} \rvert \cdot e^{-nx}}
$$
converges, and satisfy
$$
\sum_{n=0}^{\infty}{\lvert A_{\leqslant n} \rvert \cdot e^{-nx}}= \frac{f_{A}(x)}{1-e^{-x}}.
$$
Proof: $\lvert A_{\leqslant n} \rvert\leqslant n+1$, hence
$$
\sum_{n=0}^{\infty}{\lvert A_{\leqslant n} \rvert }\cdot e^{-nx} \text{ converges.}
$$
Therefore 
$$
\sum_{n=0}^{\infty}{\lvert A_{\leqslant n} \rvert \cdot e^{-nx}}=\sum_{n=0}^{\infty}{\sum_{k=0}^{n}{a_{k}\cdot e^{-nx}}}=\sum_{k=0}^{\infty}{a_{k}\cdot \frac{e^{-kx}}{1-e^{-x}}}=\frac{f_{A}(x)}{1-e^{-x}}. 
$$
#### E16) Prove that for any $x>0$
$$
\frac{f_{A_{1}}(x)}{1-e^{-x}}=\sum_{n=0}^{\infty}{\lfloor \sqrt{ n } \rfloor e^{-nx}}.
$$
Proof: By E15),
$$
\lvert A_{1\, \leqslant n} \rvert=\sum_{k=0}^{n}{[\sqrt{ k }\in \mathbb{Z}_{\geqslant 1}]}=\lfloor \sqrt{ n } \rfloor .
$$
#### E17) Prove that 
$$
\lim_{ x \to 0^+ } \sqrt{ x }f_{A_{1}}(x)
$$
exists and calculate the value of $\Phi(A_{1})$.
Proof: 
$$
\lim_{ x \to 0^+ } \sqrt{ x } f_{A_{1}}(x)=\lim_{ x \to 0^+ } \sqrt{ x }(1-e^{-x})\left( g(x)-\sum_{n=0}^{\infty}{\{\sqrt{ n }\}e^{-nx}} \right).
$$
Since $1-e^{-x}\sim x$, $g(x)\sim \frac{\sqrt{ \pi }}{2}x^{-3/2}$, and 
$$
\left\lvert  \sum_{n=0}^{\infty}{\left\{ \sqrt{ n } \right\} e^{-nx}}  \right\rvert \leqslant \frac{1}{1-e^{-x}}.
$$
Hence
$$
\lim_{ x \to 0^+ } \sqrt{ x }f_{A_{1}}(x)= \frac{\sqrt{ \pi }}{2}.
$$
and
$$
\Phi(A_{1})=\lim_{ x \to 0^+ } xf_{A_{1}}(x)=0.
$$
#### E18) Let $v(n)=\#\{ (p,q)\in \mathbb{Z}_{\geqslant 1}^{2}:p^{2}+q^{2}=n \}$. Prove that for any $x>0$, the series
$$
\sum_{n\geqslant 1}^{}{v(n)e^{-nx}}
$$
converges and
$$
\sum_{n\geqslant 1}^{}{v(n)e^{-nx}}=(f_{A_{1}}(x))^{2}.
$$
Proof: Since $v(n)\leqslant n$, $\sum_{n\geqslant 1}^{}{v(n)e^{-nx}}$ converges.
$$
\sum_{n\geqslant 1}^{}{v(n)e^{-nx}}=\sum_{n\geqslant 1}^{}{\sum_{k=0}^{n}{a_{k}a_{n-k}}e^{-nx}}=\sum_{n\geqslant 1}^{}{\sum_{k=0}^{n}{a_{k}e^{-kx}\cdot a_{n-k}e^{-(n-k)x}}}=(f_{A_{1}}(x))^{2}.
$$
#### E19) Prove that for any $x>0$
$$
f_{A_{2}}(x)\leqslant (f_{A_{1}}(x))^{2}
$$
and give an upper-bound of $\Phi(A_{2})$ (assuming it exists).
Proof: 
$$
f_{A_{2}}(x)=\sum_{n\geqslant 1}^{}{[v(n)\geqslant 1]\cdot e^{-nx}}\leqslant \sum_{n\geqslant 1}^{}{v(n)e^{-nx}}=(f_{A_{1}}(x))^{2}.
$$
Hence
$$
\Phi(A_{2})=\lim_{ x \to 0^+ } xf_{A_{2}}(x)\leqslant \lim_{ x \to 0^+ } (\sqrt{ x }f_{A_{1}}(x))^{2}= \frac{\pi}{4}.
$$
### Part 4
Assume $\{ a_{n} \}_{n\geqslant 0}$ is a sequence of non-negative numbers, such that for any $x>0$ the series
$$
S(x)=\sum_{n\geqslant 0}^{}{a_{n}e^{-nx}}
$$
converges. Moreover, assume that the limit below exists:
$$
\lim_{ x \to 0^+ } xS(x)=\lim_{ x \to 0^+ } x\sum_{n\geqslant 0}^{}{a_{n}e^{-nx}}=\mathscr{l}\in[0,+\infty).
$$
Let $F=\{ f:[0,1]\to \mathbb{R} \}$, $E_{0}=C([0,1])$. Let $E$ be the space of piecewise continuous functions, and define the norm on $E$:
$$
\|\psi\|_{\infty}=\sup_{x\in[0,1]}{\lvert \psi(x) \rvert }.
$$
#### E20) Define $L:E\to F$ as follows:
$$
(L(\psi))(x)=\sum_{n=0}^{\infty}{a_{n}e^{-nx}\psi(e^{-nx})}, \, \psi \in E.
$$
Prove that $L$ is well-defined and is linear. Moreover, if for any $x\in[0,1]$, $\psi_{1}(x)\leqslant \psi_{2}(x)$, the for any $x\in[0,1]$, 
$$
(L(\psi_{1}))(x)\leqslant (L(\psi_{2}))(x).
$$
Proof: Since $\psi \in E$, $\psi$ is bounded, hence $L$ is well-defined and is clearly linear. The inequality holds since $a_{n}$ are non-negative.
#### E21) Define the subspace of $E$
$$
E_{1}=\{ \psi \in E:\lim_{ x \to 0^+ } x(L(\psi))(x) \text{ exists} \}.
$$
Define the linear map $\Delta:E_{1}\to \mathbb{R}$ as follows:
$$
\Delta(\psi)=\lim_{ x \to 0^+ } x(L(\psi))(x), \, \psi \in E_{1}.
$$
Prove that $E_{1}$ is a subspace of $E$ and there is a constant $M>0$ such that for any $\psi \in E_{1}$, 
$$
\lvert \Delta(\psi) \rvert \leqslant M \|\psi\|_{\infty}.
$$
Proof: Since $L$ is linear, so is $\Delta$, thus $E_{1}$ is clearly a subspace of $E$.
$$
\lvert \Delta(\psi) \rvert =\left\lvert  \lim_{ x \to 0^+ } x \sum_{n=0}^{\infty}{a_{n}e^{-nx}\psi(e^{-nx})}  \right\rvert \leqslant \|\psi\|_{\infty} \cdot \lvert \lim_{ x \to 0^+ } xS(x) \rvert=\mathscr{l}\|\psi\|_{\infty}.
$$
#### E22) For the polynomial $P_{n}(x)=x^{n}$, prove that $P_{n}\in E_{1}$ and calculate $\Delta(P_{n})$.
Proof: 
$$
\Delta(P_{n})=\lim_{ x \to 0^+ } x\sum_{k=0}^{\infty}{a_{k}e^{-kx}e^{-nkx}}=\frac{1}{n+1}\mathscr{l}. 
$$
#### E23) Prove that $E_{0}\subset E_{1}$ and for every $\psi \in E_{0}$ calculate $\Delta(\psi)$.
Proof: Since $\Delta$ is linear, by E22) we know that for any polynomial $P$,
$$
\Delta(P)=\int_{0}^{1} P(x) \, \mathrm{d}x .
$$
By Stone-Weierstraß theorem, any continuous function on $[0,1]$ can be uniformly approximated with polynomials, hence (same as E24)
$$
\Delta(\psi) =\int_{0}^{1} \psi(x) \, \mathrm{d}x , \, \forall \psi \in E_{0}.
$$
#### E24) For $a\in(0,1)$, $\varepsilon \in(0,\min (a,1-a))$, define the functions
$$
g_{-}(x)=
\begin{cases}
1, & x\in[0,a-\varepsilon]; \\
\frac{a-x}{\varepsilon}, & x\in(a-\varepsilon,a) \\
0, & x\in [a,1]
\end{cases}
\, ,
g_{+}(x)=
\begin{cases}
1, & x\in [0,a]; \\
\frac{a+\varepsilon-x}{\varepsilon}, & x\in(a,a+\varepsilon) \\
0, & x\in[a+\varepsilon,1] 
\end{cases}
.
$$
Prove that $g_{\pm}\in E_{0}$ and calculate $\Delta(g_{\pm})$. Further prove that $\mathbf{1}_{[0,a]}\in E_{1}$ and calculate $\Delta(\mathbf{1}_{[0,a]})$.
Proof: $g_{\pm}\in E_{0}$ is trivial, and $\Delta(g_{\pm})=\mathscr{l}\int_{0}^{1} g_{\pm}=\mathscr{l}(a\pm \varepsilon /2)$. Since $g_{-}\leqslant \mathbf{1}_{[0,a]}\leqslant g_{+}$, 
$$
x(L(g_{-}))(x)\leqslant x(L(\mathbf{1}_{[0,a]}))(x)\leqslant x(L(g_{+}))(x)
$$
For any $\varepsilon>0,$ there exists $\delta>0$ such that for any $0<x<\delta$, 
$$
\lvert x(L(g_{-}))(x)-\Delta(g_{-}) \rvert , \lvert x(L(g_{+}))(x)-\Delta(g_{+}) \rvert <\frac{\mathscr{l}\varepsilon}{2}.
$$
Hence for any $0<x<\delta$,
$$
\begin{align}
& x(L(\mathbf{1}_{[0,a]}))(x)\leqslant x(L(g_{+}))(x)\leqslant \Delta (g_{+})+\mathscr{l}\frac{\varepsilon}{2}=a+\mathscr{l}\varepsilon. \\
& x(L(\mathbf{1}_{[0,a]}))(x)\geqslant x(L(g_{-}))(x)\geqslant \Delta(g_{-})-\mathscr{l}\frac{\varepsilon}{2}=a-\mathscr{l}\varepsilon.
\end{align}
$$
Therefore 
$$
\Delta(\mathbf{1}_{[0,a]})=\lim_{ x \to 0^+ } x(L(\mathbf{1}_{[0,a]}))(x)=a.
$$
#### E25) Prove that $E_{1}=E$ and for $\psi \in E$ determine the formula of $\Delta(\psi)$.
Proof: Use the same method as E24) applied to Darboux’s sum. Hence 
$$
E_{1}=E, \text{ and } \Delta(\psi)=\mathscr{l}\int_{0}^{1} \psi(x) \, \mathrm{d}x .
$$
#### E26) Define the function
$$
\psi(x)=\begin{cases}
0, & x\in[0,e^{-1}); \\
\frac{1}{x}, & x \in [e^{-1},1].
\end{cases}
$$
Prove the following equation by calculating $L(\psi)\left( \frac{1}{N} \right)$:
$$
\lim_{ N \to \infty } \frac{1}{N}\sum_{k=0}^{N}{a_{k}}=\mathscr{l}.
$$
Proof:
$$
(L(\psi))\left( \frac{1}{N} \right)=\sum_{n=0}^{\infty}{a_{n}e^{-n/N}\psi(e^{-n/N})}=\sum_{n=0}^{N}{a_{n}}.
$$
Hence by E25),
$$
\lim_{ N \to \infty } \frac{1}{N}\sum_{n=0}^{N}{a_{n}}=\Delta(\psi)=\mathscr{l}\int_{0}^{1} \psi(x) \, \mathrm{d}x =\mathscr{l}.
$$
#### E27) Consider $A\in \mathcal{S}$, and calculate
$$
\lim_{ n \to \infty } \frac{\lvert A_{\leqslant n} \rvert }{n}.
$$
which is called the asymptomatic density of $A$ on $\mathbb{Z}_{\geqslant 0}$.
Solution:
$$
\lim_{ n \to \infty } \frac{\lvert A_{\leqslant n} \rvert }{n}=\lim_{ N \to \infty } \frac{1}{N}\sum_{n=0}^{N}{a_{n}}=\lim_{ x \to 0^+ } x\sum_{n=0}^{\infty}{a_{n}e^{-nx}}=\Phi(A).
$$
#### E28) Calculate
$$
\lim_{ n \to \infty } \frac{\sum_{k=1}^{n}{v(k)}}{n},
$$
and give an upper-bound of the asymptomatic density of $A_{2}$.
Solution:
$$
\lim_{ n \to \infty } \frac{\sum_{k=1}^{n}{v(k)}}{n}=\lim_{ x \to 0^+ }x \sum_{n=0}^{\infty}{v(n)e^{-nx}}=\lim_{ x \to 0^+ } x(f_{A_{1}}(x))^{2}=\frac{\pi}{4}.
$$

From E19) $\Phi(A_{2})\leqslant \frac{\pi}{4}$.

>Quote:
>God does not care about our mathematical difficulties. He integrates empirically.
>——Albert Einstein

# HW12 Oscillatory Integral
## PSA: Stieltjes Integral
Let $\mu$ be a monotonic function on $I=[a,b]$.
#### A1) For any pair of partitions $\sigma,\sigma^{\prime}\in \mathcal{S}(I)$,
$$
\underline{S}_{\mu}(f;\sigma)\leqslant \overline{S}_{\mu}(f;\sigma^{\prime}) .
$$
Proof: Suppose $\mathcal{C}=\sigma\cup\sigma^{\prime}$, then
$$
\underline{S}_{\mu}(f;\sigma)\leqslant \underline{S}_{\mu}(f;\mathcal{C})\leqslant \overline{S}_{\mu}(f;\mathcal{C})\leqslant \overline{S}_{\mu}(f;\sigma^{\prime}).
$$
#### A2) For any $\rho \in C([a,b]),\rho\geqslant 0$, $\mu(x)=\int_{a}^{x} \rho(t) \, \mathrm{d}t$. Prove that for any $f\in \mathcal{R}([a,b])$, $f\in \mathcal{R}([a,b];\mu)$ and
$$
\int_{a}^{b} f \, \mathrm{d}\mu =\int_{a}^{b} f(x)\rho(x) \, \mathrm{d}x .
$$
Proof: Consider any $\mathcal{C}=\{ x_{0},x_{1},\cdots,x_{n} \}$, then if we denote $m_{i}=\inf_{x\in[x_{i-1},x_{i}]}f(x),u_{i}=\inf_{x\in[x_{i-1},x_{i}]}\rho(x),v_{i}=\inf_{x\in[x_{i-1},x_{i}]}f(x)\rho(x),M=\sup_{x\in[a,b]}{f(x)}$, $v_{i}-m_{i}u_{i}\leqslant f(t)\rho(t)-f(t)u_{i}\leqslant M\omega_{\rho}(x_{i-1},x_{i})$. Hence for any $\varepsilon>0$ there exists a $\delta>0$, for any $\max\{x_{i}-x_{i-1}\}<\delta$, $\sup_{x,y\in[x_{i-1},x_{i}]}{\lvert \rho(x)-\rho(y) \rvert}<\varepsilon$. Then
$$
\begin{align}
\underline{S}(f\rho;\mathcal{C}) &= \sum_{k=1}^{n}{v_{k}(x_{k}-x_{k-1})}\leqslant \sum_{k=1}^{n}{u_{i}m_{i}(x_{k}-x_{k-1})}+M\varepsilon(b-a) \\
& \leqslant M\varepsilon(b-a)+ \sum_{k=1}^{n}{m_{i}\int_{x_{k-1}}^{x_{k}} \rho(t) \, \mathrm{d}t }=M\varepsilon(b-a)+\underline{S}_{\mu}(f;\mathcal{C}).
\end{align}
$$
The other side is similar, hence $\sup\{ \underline{S}_{\mu}(f;\mathcal{C}) \}=\inf \{ \overline{S}_{\mu}(f;\mathcal{C}) \}$ so $f\in \mathcal{R}([a,b];\mu)$ and 
$$
\int_{a}^{b} f \, \mathrm{d}\mu =\int_{a}^{b} f(x)\rho(x) \, \mathrm{d}x .
$$
#### A3) Prove that $\mathcal{R}(I;\mu)$ is a linear space on $\mathbb{R}$ and the integration operator
$$
\int_{a}^{b} \cdot \, \mathrm{d}\mu :\mathcal{R}(I;\mu)\to \mathbb{R}, f\mapsto \int_{a}^{b} f \, \mathrm{d}\mu. 
$$
is linear.
Proof: Since $\underline{S}_{\mu}(\cdot;\mathcal{C})$ and $\overline{S}_{\mu}(\cdot;\mathcal{C})$ is linear for any $\mathcal{C}$, $\mathcal{R}(I;\mu)$ is clearly a linear space on $\mathbb{R}$, and $\int_{a}^{b} \cdot \, \mathrm{d}\mu$ is a linear operator.
#### A4) Suppose $f_{1},f_{2}\in \mathcal{R}(I;\mu)$. If the any $x\in I$, $f_{1}(x)\leqslant f_{2}(x)$, then
$$
\int_{a}^{b} f_{1} \, \mathrm{d}\mu \leqslant \int_{a}^{b} f_{2} \, \mathrm{d}\mu. 
$$
Proof: By A3), we can assume $f_{1}=0$. Then for any $\mathcal{C}$, $\underline{S}_{\mu}(f;\mathcal{C})\geqslant 0$ since $f\geqslant 0$, hence $\int_{a}^{b} f \, \mathrm{d}\mu=\sup\{ \underline{S}_{\mu}(f;\mathcal{C}) \}\geqslant 0$.
#### A5) If $f\in \mathcal{R}([a,b];\mu)$, then for any $c\in[a,b]$, $f\vert_{[a,c]}$ and $f\vert_{[c,b]}$ are both Stieltjes integrable and
$$
\int_{a}^{b} f \, \mathrm{d}\mu =\int_{a}^{c} f \, \mathrm{d}\mu + \int_{c}^{b} f \, \mathrm{d}\mu . 
$$
Proof: For any partition $\sigma$, let $\sigma^{\prime}=\sigma\cup \{ c \}$, then $\sigma^{\prime}$ can be split into two partitions of the intervals $[a,c]$ and $[c,b]$: $\sigma^{\prime}=\sigma_{1}\cup\sigma_{2}$, such that $\underline{S}_{\mu}(f;\sigma^{\prime})=\underline{S}_{\mu}(f;\sigma_{1})+\underline{S}_{\mu}(f;\sigma_{2})$ and $\overline{S}_{\mu}(f;\sigma^{\prime})=\overline{S}_{\mu}(f;\sigma_{1})+\overline{S}_{\mu}(f;\sigma_{2})$. Hence
$$
\inf \underline{S}_{\mu}(f;\sigma_{1})+ \inf \underline{S}_{\mu}(f;\sigma_{2})\leqslant \inf \underline{S}_{\mu}(f;\sigma^{\prime})\leqslant \sup_{}{\overline{S}_{\mu}(f;\sigma^{\prime})}\leqslant \sup_{}{\overline{S}_{\mu}(f;\sigma_{1})}+\sup{\overline{S}_{\mu}(f;\sigma_{2})}.
$$
Therefore
$$
\int_{a}^{b} f \, \mathrm{d}\mu =\int_{a}^{c} f \, \mathrm{d}\mu +\int_{c}^{b} f \, \mathrm{d}\mu. 
$$
#### A6) If $f,g \in \mathcal{R}([a,b];\mu)$, then $f\cdot g \in \mathcal{R}([a,b];\mu)$.
Proof: Same as in the case of the Riemann integral.
#### A7) Define Stieltjes integral on the interval $[0,\infty)$: Suppose $f\in C([0,\infty))$ is continuous and bounded, define
$$
\int_{0}^{\infty} f \, \mathrm{d}\mu = \lim_{ M \to \infty } \int_{0}^{M} f \, \mathrm{d}\mu . 
$$
Suppose $\{ \alpha_{n} \}_{n\geqslant 1}$ is a sequence of positive real numbers and $\sum_{n=1}^{\infty}{\alpha_{n}}$ converges, define the monotonic function $\mu=\sum_{n=1}^{\infty}{\alpha_{n} \mathbf{1}_{\geqslant n}}$, then
$$
\int_{1}^{\infty} f \, \mathrm{d}\mu =\sum_{n=1}^{\infty}{\alpha_{n}f(n)}.
$$
Proof: Note that
$$
\mu(x+0)-\mu(x-0)= \begin{cases}
0,& x \not\in \mathbb{Z}, \\
\alpha_{x}, & x \in \mathbb{Z}.
\end{cases}
$$
Hence 
$$
\int_{0}^{N} f \, \mathrm{d}\mu =\sum_{n=1}^{N-1}{f(n)\alpha_{n}}.
$$
By definition,
$$
\int_{0}^{\infty} f \, \mathrm{d}\mu =\sum_{n=1}^{\infty}{\alpha_{n}f(n)}.
$$
#### A8) $f,g\in \mathcal{R}([a,b];\mu)$ are real-valued Riemann integrable functions. Suppose for any $x\in[a,b]$, $g(x)\geqslant 0$. Let
$$
m= \inf_{x\in I}f(x),\, M= \sup_{x\in I}{f(x).}
$$
Then there exists $\mathscr{l}\in[m,M]$ such that
$$
\int_{a}^{b} fg \, \mathrm{d}\mu =\mathscr{l}\int_{a}^{b} g \, \mathrm{d}\mu. 
$$
Proof: Note that $mg\leqslant fg\leqslant Mg$, and use A4).
#### A9) Construct a Stieltjes integral to show that Abel summation method is a special case of integration by parts.
Proof:
The Abel summation formula states that 
$$
\sum_{i=1}^{n}{T_{i}(S_{i}-S_{i-1})}= T_{n}S_{n}-T_{1}S_{0}-\sum_{i=1}^{n-1}{S_{i}(T_{i+1}-T_{i})}.
$$
Consider the monotonically increasing function $\mu:[0,n]\to \mathbb{R},x\mapsto T_{\lceil x \rceil},\mu(0)=T_{1}$, and $f$ be a polynomial such that $f(k)=S_{k}$ for $k=0,1,\cdots,n$. Then
$$
\int_{0}^{n} f^{\prime}\mu \, \mathrm{d}x =\sum_{k=1}^{n}{\int_{k-1}^{k} f^{\prime}\mu }=\sum_{k=1}^{n}{\int_{k-1}^{k} f^{\prime}(x) T_{k} \, \mathrm{d}x }= \sum_{k=1}^{n}{T_{k}(S_{k}-S_{k-1})}.
$$
While
$$
\int_{0}^{n} f \, \mathrm{d}\mu =\sum_{k=1}^{n-1}{f(k)(\mu(k+0)-\mu(k))}=\sum_{k=1}^{n-1}{S_{k}(T_{k+1}-T_{k})}.
$$
and
$$
f\mu\Big\vert_{0}^{n}=T_{n}S_{n}-T_{1}S_{0}.
$$
Hence the formula is a special case of integration by parts.
## PSB: Convergence of Improper Integrals
$b$ can be $\infty$.
#### B1) Assume $f:[a,b)\to \mathbb{R}$, and for any $b^{-}<b$, $f$ is integrable on $[a,b^-]$. Prove that the integral $\int_{a}^{b} f(x) \, \mathrm{d}x$ exists iff: for any $\varepsilon>0$, $\exists b(\varepsilon)\in(a,b)$ such that for any $b^{\prime},b^{\prime\prime}>b(\varepsilon)$, $\left\lvert  \int_{b^{\prime}}^{b^{\prime\prime}} f(x)  \, \mathrm{d}x  \right\rvert<\varepsilon$.
Proof: Let
$$
F(t)=\int_{a}^{t} f(x) \, \mathrm{d}x , \, \forall t \in [a,b).
$$
Then $\int_{a}^{b} f(x) \, \mathrm{d}x$ exists iff $\lim_{ t \to b^{-} }F(t)$ exists, which is equivalent to 
$$
\forall \varepsilon>0,\exists b(\varepsilon) \in(a,b), \forall b^{\prime},b^{\prime\prime}>b(\varepsilon), \left\lvert  \int_{b^{\prime}}^{b^{\prime\prime}} f(x) \, \mathrm{d}x   \right\rvert =\lvert F(b^{\prime\prime})-F(b^{\prime}) \rvert <\varepsilon.
$$
#### B2) If $\lvert f(x) \rvert\leqslant F(x), x\in[a,b)$ and $\int_{a}^{b} F(x) \, \mathrm{d}x$ converges, then $\int_{a}^{b} f(x) \, \mathrm{d}x$ converges.
Proof: Use B1) and
$$
\left\lvert  \int_{u}^{v} f(x) \, \mathrm{d}x   \right\rvert \leqslant\int_{u}^{v} F(x) \, \mathrm{d}x .
$$
#### B3) Prove the Dirichlet test for convergence: if $f,g:[a,\infty)\to \mathbb{R}$ satisfy
- $f$ is continuous and there exists $A>0$, such that for any $M\geqslant a$,
$$
\left\lvert  \int_{a}^{M} f(x) \, \mathrm{d}x   \right\rvert \leqslant A.
$$
- $g$ is monotonic and $\lim_{ x \to \infty }g(x)=0$.
Then $\int_{a}^{\infty} f(x)g(x) \, \mathrm{d}x$ converges.
#### Lemma: The Second Integral Mean Value Theorem
If $f$ is integrable and $g$ is monotonic and non-negative(or non-positive) on $[a,b]$, then there exists $c \in (a,b)$ such that 
$$
\int_{a}^{b} f(x)g(x) \, \mathrm{d}x =g(a)\int_{a}^{c} f(x) \, \mathrm{d}x +g(b)\int_{c}^{b} f(x) \, \mathrm{d}x .
$$
Proof: Assume that $g$ is non-negative and monotonically decreasing. It is easy to see that there exists $\xi \in(a,b)$ such that
$$
\int_{a}^{b} f(x)g(x) \, \mathrm{d}x =g(a)\int_{a}^{\xi} f(x) \, \mathrm{d}x .
$$
Apply the above formula to $f(x)$ and $g(x)-g(b)$ and we get
$$
\int_{a}^{b} f(x)g(x) \, \mathrm{d}x = g(a)\int_{a}^{\xi} f(x) \, \mathrm{d}x + g(b) \int_{\xi}^{b} f(x) \, \mathrm{d}x . 
$$
Proof of B3): Since $|\int_{u}^{v} f(x) \, \mathrm{d}x|\leqslant 2A$, by lemma 
$$
\left\lvert  \int_{u}^{v} f(x)g(x) \, \mathrm{d}x   \right\rvert \leqslant 2A (\lvert g(u) \rvert +\lvert g(v) \rvert ).
$$
By B1), the integral converges.
#### B4) Prove the Abel test of convergence:
If $f,g:[a,\infty)\to \mathbb{R}$ satisfy:
- $\int_{a}^{\infty} f(x) \, \mathrm{d}x$ exists.
- $g$ is monotonic and $g$ is bounded.
Then $\int_{a}^{\infty} f(x)g(x) \, \mathrm{d}x$ converges.
Proof: Suppose $g$ is monotonically increasing, then
$$
\left\lvert  \int_{u}^{v} f(x)(g(x)-g(a)) \, \mathrm{d}x   \right\rvert \leqslant 2M \left( \left\lvert  \int_{u}^{\xi} f(x) \, \mathrm{d}x   \right\rvert +\left\lvert  \int_{\xi}^{v} f(x) \, \mathrm{d}x   \right\rvert  \right)\to 0
$$
since $\int_{a}^{\infty} f(x) \, \mathrm{d}x$ converges. Therefore both $\int_{a}^{\infty} f(x)(g(x)-g(a)) \, \mathrm{d}x$ and $\int_{a}^{\infty} f(x)g(a) \, \mathrm{d}x$ converges, hence $\int_{a}^{\infty} f(x)g(x) \, \mathrm{d}x$ converges.
#### B5) Determine whether the following integrals converges:
(1)
$$
\int_{0}^{\infty} \frac{\log(1+x)}{x^p} \, \mathrm{d}x 
$$
(absolutely) convergent when $1<p<2$, diverges when $p\leqslant 1$ or $p\geqslant 2$.
(2)
$$
\int_{1}^{\infty} \frac{\sin x}{x^p} \, \mathrm{d}x 
$$
Absolutely convergent when $p>1$, conditionally convergent when $0<p\leqslant 1$, diverges when $p\geqslant 0$.
(3)
$$
\int_{1}^{\infty} \sin x^{2} \, \mathrm{d}x =\frac{1}{2} \int_{1}^{\infty} \frac{\sin y}{y^{1/2}} \, \mathrm{d}y
$$
is conditionally convergent.
(4)
$$
\int_{0}^{\infty} \frac{\sin ^{2}x}{x} \, \mathrm{d}x 
$$
diverges
(5) $p,q>0$,
$$
\int_{0}^{2\pi} \sin^{-p}x\cos^{-q}x \, \mathrm{d}x 
$$
Absolutely convergent when $p,q<1$, diverges when $p\geqslant 1$ or $q\geqslant 1$.
(6)
$$
\int_{0}^{\infty} x^p \sin(x^q) \, \mathrm{d}x 
$$
If $q=0$ the integral diverges. Assume $q\neq 0$ below.
$$
\int_{0}^{\infty} x^p \sin (x^q) \, \mathrm{d}x =\frac{1}{q}\int_{0}^{\infty} y^{ (p+1)/q-1} \sin y \, \mathrm{d}y.
$$
Let $\alpha= \frac{p+1}{q}-1$, then the integral
- diverges if $\alpha\leqslant -2$ or $\alpha \geqslant 0$,
- converges absolutely if $-2<\alpha< -1$.
- converges conditionally if $-1\leqslant\alpha< 0$.
(7) $q\geqslant 0$,
$$
\int_{0}^{\infty} \frac{x^p \sin x}{1+x^q} \, \mathrm{d}x 
$$
If $p\leqslant -2$, then the integral diverges near $0$, since $x^p\sin x\sim x^{p+1}$. The integral converges (absolutely) near $0$ otherwise. Assume $p>-2$ below.
If $p-q< -1$ then the integral converges absolutely when it tends to infinity, since $\frac{x^p}{1+x^q}\sim x^{p-q}$.
If $-1\leqslant p-q<0$ then the integral converges conditionally, since the integral of $(x^{p-q})^{\prime}$ converges.
(8) 
$$
\begin{align}
\int_{0}^{\pi/2} \frac{\log \sin x}{\sqrt{ x }} \, \mathrm{d}x &= 2\int_{0}^{\pi/2} \log \sin x \, \mathrm{d}\sqrt{ x }  \\
&= 2\sqrt{ x }\log \sin x \Big\vert_{0}^{\pi/2}-2\int_{0}^{\pi/2} \sqrt{ x }\cot x \, \mathrm{d}x  \\
&= -2 \int_{0}^{\pi/2} \frac{\sqrt{ x }}{\sin x}\cos x \, \mathrm{d}x 
\end{align}
$$
converges, since $\int_{0}^{1} \frac{1}{\sqrt{ x }} \, \mathrm{d}x$ converges.
(9)
$$
\begin{align}
\int_{e}^{\infty} \frac{\log \log x}{\log x}\sin x \, \mathrm{d}x & = \int_{1}^{\infty} \frac{\log y}{y}e^y\sin e^y \, \mathrm{d}y.
\end{align}
$$
It is easy to see the integral does not converge absolutely. 
Meanwhile 
$$
f^{\prime}(x)=\left(  \frac{\log \log x}{\log x} \right)^{\prime}= \frac{1-\log \log x}{(\log x)^{2}x},
$$
and
$$
\int_{e}^{\infty} \frac{\log \log x-1}{(\log x)^{2}x} \, \mathrm{d}x =\int_{1}^{\infty} \frac{\log y-1}{y^{2}} \, \mathrm{d}y=\int_{0}^{\infty} \frac{t-1}{e^{t}} \, \mathrm{d}t.  
$$
converges.
By Lagrange mean value theorem,
$$
\begin{align}
\int_{2\pi}^{\infty} \frac{\log \log x}{\log x}\sin x \, \mathrm{d}x &= \sum_{n=1}^{\infty}{\int_{2n\pi}^{(2n+1)\pi} (f(x)-f(x+\pi))\sin x \, \mathrm{d}x }  \\
& \leqslant \sum_{n=1}^{\infty}{-2\pi f^{\prime}(2n\pi)}\leqslant 2\pi \int_{e}^{\infty} -f^{\prime}(x) \, \mathrm{d}x 
\end{align}
$$
converges.

## PSC: Oscillatory Integral
$F(t),G(t):[1,\infty)\to \mathbb{R}$, $\lim_{ t \to \infty } G(t)=0$. Assume that for any $t\geqslant 1$, $G(t)\neq 0$. If
$$
\lim_{ t \to \infty } \frac{F(t)}{G(t)}=1.
$$
Then we say $F,G$ have the same order, and $F\sim G$.
### Part 1
#### C1) $d>0$ is a given real number. Assume $g\in C^1([0,d])$. Prove that there is a constant $C$, such that
$$
\left\lvert  \int_{0}^{d} e^{-tx}g(x) \, \mathrm{d}x   \right\rvert \leqslant \frac{C}{t}.
$$
Proof: Let $C=\sup_{x\in[0,d]}{\lvert g(x) \rvert}$, then
$$
\left\lvert  \int_{0}^{d} e^{-tx}g(x) \, \mathrm{d}x   \right\rvert \leqslant C \int_{0}^{d} e^{-tx} \, \mathrm{d}x =\frac{C}{t}(1-e^{-td})\leqslant \frac{C}{t}.
$$
#### C2) Assume $d>0$, $g\in C([0,d])$ and $g(0)\neq 0$. Prove that 
$$
\int_{0}^{d} e^{-tx}g(x) \, \mathrm{d}x \sim \frac{g(0)}{t}.
$$
Proof: Let $M=\sup_{x\in[0,d]}{\lvert g(x) \rvert}$, then
$$
\begin{align}
\left\lvert   \int_{0}^{d} e^{-tx}t \frac{g(x)}{g(0)} \, \mathrm{d}x -1  \right\rvert  & = \left\lvert  \int_{0}^{td} e^{-u} \frac{g(u /t)}{g(0)} \, \mathrm{d}u - \int_{0}^{\infty} e^{-u} \, \mathrm{d}u   \right\rvert  \\
 & \leqslant \int_{td}^{\infty} e^{-u} \, \mathrm{d}u + \int_{0}^{N} e^{-u} \left\lvert  \frac{g( u/ t)}{g(0)}-1   \right\rvert  \, \mathrm{d}u +\int_{N}^{td} e^{-u} \left\lvert  \frac{g(u /t)}{g(0)}-1  \right\rvert  \, \mathrm{d}u \\
   & \leqslant e^{-td}+ \sup_{0\leqslant x\leqslant N /t}{\left\lvert  \frac{g(x)}{g(0)}-1  \right\rvert }+ \left( \frac{M}{\lvert g(0) \rvert }+1 \right) \int_{N}^{td} e^{-u} \, \mathrm{d}u\to 0. 
\end{align}
$$
(let $t\to \infty$ then let $N \to \infty$).
#### C3) $d>0,g\in C([0,d]),g(0)\neq 0$. Prove that
$$
\int_{0}^{d} e^{-tx^{2}}g(x) \, \mathrm{d}x \sim \frac{\sqrt{ \pi }\cdot g(0)}{2\sqrt{ t }}.
$$
Proof: Same as C2), let $M=\sup_{x\in[0,d]}{\lvert g(x) / g(0)\rvert}$, then
$$
\begin{align}
\left\lvert  \int_{0}^{d} e^{-tx^{2}}\sqrt{ t } \frac{g(x)}{g(0)} \, \mathrm{d}x- \frac{\sqrt{ \pi }}{2}\right\rvert  & = \left\lvert  \int_{0}^{d\sqrt{ t }} e^{-u^{2}} \frac{g(u /\sqrt{ t })}{g(0)} \, \mathrm{d}u - \int_{0}^{\infty} e^{-u^{2}} \, \mathrm{d}u   \right\rvert  \\
& \leqslant \int_{d\sqrt{ t }}^{\infty} e^{-u^{2}} \, \mathrm{d}u + \int_{0}^{N} e^{-u^{2}} \left\lvert  \frac{g(u /\sqrt{ t })}{g(0)}-1  \right\rvert \, \mathrm{d}x +\int_{N}^{d\sqrt{ t }} e^{-u^{2}}(M+1) \, \mathrm{d}u.
\end{align}
$$
which tends to $0$, same as C2).

---
For $t\geqslant 1$, $f,\varphi\in C([a,b])$, define the function
$$
F(t)=\int_{a}^{b} e^{-t\varphi(x)}f(x) \, \mathrm{d}x .
$$
Our goal is to study $F(t)$ when $t\to \infty$.
#### C4) Assume $\varphi \in C^1([a,b])$, and for any $x\in[a,b]$, $\varphi^{\prime}(x)\neq 0$. Further assume that $\varphi^{\prime}(x)>0$. Let $d=\varphi(b)-\varphi(a)$. Prove that 
$$
\Psi:[a,b]\to[0,d],\, x\mapsto \varphi(x)-\varphi(a),
$$
is a continuously differentiable bijection on $[a,b]$.
Proof: $\varphi$ is monotonic by $\varphi^{\prime}(x)>0$, hence $\Psi$ is a bijection and $\Psi^{\prime}=\psi^{\prime}$.
#### C5) Assume $\varphi \in C^1([a,b])$, and for any $x\in[a,b]$, $\varphi^{\prime}(x)\neq 0$. Prove that if $f(a)\neq 0$, then when $t\to \infty$,
$$
F(t)\sim \frac{f(a)}{\varphi^{\prime}(a)}  \frac{e^{-t\varphi(a)}}{t}.
$$
Proof: Let $g(x)=f(x) / \Psi^{\prime}(x)$, and $h=(t\Psi)^{-1}$ then
$$
\begin{align}
\left\lvert  F(t) \frac{t}{e^{-t\varphi(a)}}-\frac{f(a)}{\varphi^{\prime}(a)}  \right\rvert & = \left\lvert  \int_{a}^{b} e^{-t\Psi(x)}tf(x) \, \mathrm{d}x - \frac{f(a)}{\Psi^{\prime}(a)}  \right\rvert =\left\lvert  \int_{a}^{b} e^{-t\Psi(x)}g(x) \, \mathrm{d}t\Psi(x) -g(a) \right\rvert  \\
&= \left\lvert \int_{0}^{t\Psi(b)} e^{-u} g(h(u)) \, \mathrm{d}u-g(h(0)) \int_{0}^{\infty} e^{-u} \, \mathrm{d}u \right\rvert  \\
&= \lvert g(h(0)) \rvert \int_{t\Psi(b)}^{\infty} e^{-u} \, \mathrm{d}u + \int_{0}^{N\Psi(b)} e^{-u}\lvert g(h(u))-g(h(0)) \rvert  \, \mathrm{d}u \\
& + \int_{N\Psi(b)}^{t\Psi(b)} e^{-u} \lvert g(h(u))-g(h(0)) \rvert  \, \mathrm{d}u \\
  &  \leqslant \lvert g(a) \rvert e^{-t\Psi(b)}+ \sup_{x\in[a, \Psi^{-1}(N\Psi(b) / t)]}{\lvert g(x)-g(a) \rvert }+ \int_{N\Psi(b)}^{t\Psi(b)} e^{-u}2M \, \mathrm{d}u.
\end{align}
$$
which tends to  $0$ since $g$ is continuous. ($M=\sup_{x\in[a,b]}{\lvert g(x) \rvert}$).
#### C6) Assume that $\varphi \in C^2([a,b]),\varphi^{\prime}(a)=0,\varphi^{\prime\prime}(x)>0$ and for any $x\in(a,b],\varphi^{\prime}(x)>0$. Let $d=\sqrt{ \varphi(b)-\varphi(a) }$. Prove that 
$$
\Psi : [a,b] \to [0,d], \, x \mapsto \sqrt{ \varphi(x)-\varphi(a) }.
$$
is a continuously differentiable bijection on $[a,,b]$, and calculate $\Psi^{\prime}(a)$.
Proof: Trivial. $\Psi^{\prime}= \frac{\varphi^{\prime}}{2\Psi}$, hence 
$$
\Psi^{\prime}(a)=\lim_{ x \to a^+ } \frac{\varphi^{\prime}(x)}{2\sqrt{ \varphi(x)-\varphi(a) }}= \lim_{ x \to a^+ } \frac{\varphi^{\prime\prime}(x)}{\varphi^{\prime}(x) / \sqrt{ \varphi(x)-\varphi(a) }}= \sqrt{ \frac{\varphi^{\prime\prime}(a)}{2} }.
$$
#### C7) Assume $\varphi \in C^2([a,b]),\varphi^{\prime}(a)=0,\varphi^{\prime\prime}(a)>0$. Prove that if $f(a)\neq 0$, when $t\to \infty$,
$$
F(t)\sim \frac{\sqrt{ \pi }f(a)}{\sqrt{ 2\varphi^{\prime\prime}(a) }} \frac{e^{-t\varphi(a)}}{\sqrt{ t }}.
$$
Proof: Let $g=f /\Psi^{\prime}$, $h=(\sqrt{ t }\Psi)^{-1}$, then
$$
F(t) \frac{\sqrt{ t }}{e^{-t\varphi(a)}}= \int_{a}^{b} e^{-t\Psi^{2}(x)} f(x)\sqrt{ t } \, \mathrm{d}x =\int_{a}^{b} e^{-t\Psi^{2}(x)}g(x) \, \mathrm{d}\sqrt{ t }\Psi(x) = \int_{0}^{\sqrt{ t }\Psi(b)} e^{-u^{2}}g(h(u)) \, \mathrm{d}u.  
$$
Hence
$$
\begin{align}
\left\lvert  F(t) \frac{\sqrt{ t }}{e^{-t\varphi(a)}} - \frac{\sqrt{ \pi }}{2}g(a)\right\rvert & = \left\lvert  \int_{0}^{\sqrt{ t }\Psi(b)} e^{-u^{2}}g(h(u)) \, \mathrm{d}u - \int_{0}^{\infty} e^{-u^{2}}g(h(0)) \, \mathrm{d}u   \right\rvert   \\
&  \leqslant g(a)\int_{\sqrt{ t }\Psi(b)}^{\infty} e^{-u^{2}} \, \mathrm{d}u+ \int_{0}^{N\Psi(b)} e^{-u^{2}}\lvert g(h(u))-g(h(0)) \rvert  \, \mathrm{d}u \\
& + \int_{N\Psi(b)}^{\sqrt{ t }\Psi(b)} e^{-u^{2}} 2M \, \mathrm{d}u   \\
& \leqslant g(a)e^{-\sqrt{ t }\Psi(b)}+ \sqrt{ \pi } \sup_{x\in[a,\Psi^{-1}(N\Psi(b) /\sqrt{ t })]}{\lvert g(x)-g(a) \rvert }+ 2M e^{-N\Psi(b)}.
\end{align}
$$
which tends to $0$ as $t\to \infty$ and $N\to \infty$, since $g$ is continuous.
(A much simpler solution can be given using the Laplace method)
#### C8) Given $f\in C((0,\infty)), \varphi \in C^{2}((0,\infty))$. Assume that
- exists a unique $a\in(0,\infty)$ such that $\varphi^{\prime}(a)=0$;
- $\varphi^{\prime\prime}(a)>0,f(a)\neq 0$;
- $\int_{0}^{\infty} e^{-\varphi(x)}\lvert f(x) \rvert \, \mathrm{d}x$ converges.
Prove that when $t\to \infty$, the function $G(t)=\int_{0}^{\infty} e^{-t\varphi(x)}f(x) \, \mathrm{d}x$ satisfy
$$
G(t)\sim \frac{\sqrt{ 2\pi }f(a)}{\sqrt{ \varphi^{\prime\prime}(a) }} \frac{e^{-t\varphi(a)}}{\sqrt{ t }}.
$$
Proof: (Simple application of the Laplace method)
Apply C7) to the intervals $[a/2,a]$ and $[a,2a]$, then 
$$
\int_{a /2}^{2a} e^{-t\varphi(x)}f(x) \, \mathrm{d}x \sim \frac{\sqrt{ 2\pi }f(a)}{\sqrt{ \varphi^{\prime\prime}(a) }} \cdot \frac{e^{-t\varphi(a)}}{\sqrt{ t }}.
$$
While the integral on the intervals $(0,a /2),(2a,\infty)$ converges rapidly. Hence
$$
G(t)\sim \frac{\sqrt{ 2\pi }f(a)}{\sqrt{ \varphi^{\prime\prime}(a) }} \frac{e^{-t\varphi(a)}}{\sqrt{ t }}.
$$
#### C9) $\Gamma(n)=(n-1)!$.
Proof:
$$
\Gamma(n+1)=\int_{0}^{\infty} t^{n}e^{-t} \, \mathrm{d}t=-\int_{0}^{\infty} t^n \, \mathrm{d}e^{-t}=n\int_{0}^{\infty} t^{n-1}e^{-t} \, \mathrm{d}t=n\Gamma(n).
$$
#### C10) Prove Stirling‘s approximation
$$
n! \sim \sqrt{ 2\pi } \frac{n^{n+1/2}}{e^n}.
$$
Proof: Note that, by substituting $t=ns$,
$$
n! = \Gamma(n+1)=\int_{0}^{\infty} e^{-t}t^n \, \mathrm{d}t=n^{n+1}\int_{0}^{\infty} e^{-n(s-\log s)} \, \mathrm{d}s. 
$$
Hence
$$
\frac{\Gamma(t+1)}{t^{t+1}} \sim \sqrt{ 2\pi } \frac{e^{-t}}{\sqrt{ t }}.
$$
### Part 2
For $\lambda\geqslant 1$, $f,\varphi \in C^{\infty}([a,b])$, define the function
$$
I(\lambda)=\int_{a}^{b} e^{i\lambda\varphi(x)}f(x) \, \mathrm{d}x .
$$
Our goal is to study $I(\lambda)$ when $\lambda\to \infty$.
#### C11) Assume that for any $x\in [a,b]$, $\varphi^{\prime}(x)\neq 0$. Define the maps
$$
\begin{align}
 L: C^{\infty}([a,b])\to C^{\infty}([a,b]),&\, h \mapsto \frac{1}{i\lambda\varphi^{\prime}(x)}h^{\prime}(x), \\
M: C^{\infty}([a,b]) \to C^{\infty}([a,b]),& \, h \mapsto - \left( \frac{h}{i\varphi^{\prime}} \right)^{\prime}(x).
\end{align}
$$
Assume that $f,g \in C^{\infty}([a,b])$. Prove that if there exists $c>0$ such that for any $x\in [a,a+c]\cup [b-c,b]$, $h(x)=0$, then $M /\lambda$ is the adjoint of $L$:
$$
\int_{a}^{b} h\cdot Lg =\frac{1}{\lambda} \int_{a}^{b} g \cdot Mh .
$$
Proof: By integration of parts, 
$$
\int_{a}^{b} h \cdot Lg= \int_{a}^{b} \frac{h}{i\lambda\varphi^{\prime}} \, \mathrm{d}g=-\int_{a}^{b} g  \, \mathrm{d}\left( \frac{h}{i\lambda\varphi^{\prime}} \right)   =\frac{1}{\lambda}\int_{a}^{b} g\cdot Mh. 
$$
#### C12) Assume that for any $x\in [a,b]$, $\varphi^{\prime}(x)\neq 0$ and $f$ vanishes near $a$ and $b$. prove that for any $n\in \mathbb{Z}_{\geqslant 1}$, there is a constant $c_{n}$ independent of $\lambda$ such that
$$
\lvert I(\lambda) \rvert \leqslant \frac{c_{n}}{\lambda^n}.
$$
Proof: Let $g=e^{i\lambda}\varphi$, then $Lg=g$. $f\in C^{\infty}([a,b])$ vanishes near $a,b$ hence $M^nf$ vanishes near $a,b$ for any $n\in \mathbb{Z}_{\geqslant 0}$. Therefore
$$
\lvert I(\lambda) \rvert = \left\lvert  \int_{a}^{b} fg  \right\rvert =\frac{1}{\lambda}\left\lvert  \int_{a}^{b} g \cdot Mf \right\rvert =\cdots=\frac{1}{\lambda^n} \left\lvert  \int_{a}^{b} g \cdot M^nf   \right\rvert .
$$
so $c_{n}=\left\lvert  \int_{a}^{b} g \cdot M^nf   \right\rvert$ is valid.
#### C13) If there exists $\delta>0$, such that for any $x\in[a,b]$, $\lvert\varphi^{\prime}(x)\rvert\geqslant \delta$ and $\varphi^{\prime}(x)$ is monotonic on $[a,b]$. Prove that there is a constant $C_{1}$ independent of $\lambda,\varphi,a,b$ such that
$$
\left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)} \, \mathrm{d}x   \right\rvert \leqslant \frac{C_{1}}{\lambda\delta}.
$$
Proof: Let $C_{1}=4$ then (since $\varphi^{\prime}$ maintains the same sign)
$$
\begin{align}
\left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)} \, \mathrm{d}x   \right\rvert & = \left\lvert  \int_{a}^{b} \frac{\mathrm{d}e^{i\lambda\varphi}}{\lambda\varphi^{\prime}}   \right\rvert  \leqslant  \left\lvert   \frac{e^{i\lambda\varphi}}{\lambda\varphi^{\prime}} \big\vert_{a}^{b} \right\rvert +\frac{1}{\lambda}\left\lvert  \int_{a}^{b} e^{i\lambda\varphi} \frac{\varphi^{\prime\prime}}{(\varphi^{\prime})^{2}} \, \mathrm{d}x   \right\rvert  \\
& \leqslant \frac{2}{\lambda\delta}+\frac{1}{\lambda} \int_{a}^{b} \left\lvert  \frac{\varphi^{\prime\prime}}{(\varphi^{\prime})^{2}}  \right\rvert  \\
&= \frac{2}{\lambda\delta} +\frac{1}{\lambda} \int_{a}^{b}  \, \mathrm{d} \frac{1}{\varphi^{\prime}}\leqslant \frac{4}{\lambda\delta}.  
\end{align}
$$
#### C14) Suppose for any $x\in [a,b],\lvert \varphi^{\prime\prime}(x) \rvert\geqslant 1$. Prove that there is a unique $c\in[a,b]$ such that
$$
\lvert \varphi^{\prime}(c) \rvert =\inf_{x\in[a,b]} \lvert \varphi^{\prime}(x) \rvert.
$$
Further prove that for any $x\in[a,b]$,
$$
\lvert \varphi^{\prime}(x) \rvert \geqslant \lvert x-c \rvert .
$$
Proof: Since $\varphi \in C^{\infty}([a,b])$ and $\lvert \varphi^{\prime\prime} \rvert\geqslant 1$, $\varphi^{\prime\prime}$ maintains the same sign. Assume that $\forall x\in[a,b],\varphi^{\prime\prime}(x)\geqslant 1$, then $\varphi^{\prime}$ is monotonically increasing. Therefore, if $\varphi^{\prime}\neq 0$, then $c\in \{ a,b \}$, otherwise, $c$ is the unique null point of $\varphi^{\prime}$. 
Either $\varphi^{\prime}(c)=0$ or $c=a$, when $\varphi^{\prime}$ maintains the same sign, so we always have $\lvert \varphi^{\prime}(x) \rvert\geqslant\lvert \varphi^{\prime}(x)-\varphi^{\prime}(c) \rvert$, and
$$
\forall x\in[a,b],\exists \xi \in [x,c],\, \lvert \varphi^{\prime}(x)-\varphi^{\prime}(c) \rvert\geqslant \lvert x-c \rvert \cdot \varphi^{\prime}(\xi)\geqslant \lvert x-c \rvert . 
$$
Therefore $\lvert \varphi^{\prime}(x) \rvert\geqslant \lvert x-c \rvert$.
#### !C15) Assume that for any $x\in[a,b], \lvert \varphi^{\prime\prime}(x) \rvert\geqslant 1$. Prove that there is a constant $C_{2}$ independent of $\lambda,\varphi,a,b$, such that 
$$
\left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)} \, \mathrm{d}x   \right\rvert \leqslant \frac{C_{2}}{\sqrt{ \lambda }}.
$$
Proof: Since $\varphi \in C^{\infty}([a,b])$, we can assume $\varphi^{\prime\prime}(x)\geqslant 1$. For an arbitrary $\delta>0$, divide the interval $[a,b]$ into two parts:
$E_{1}=\{ x:\lvert \varphi^{\prime}(x) \rvert\leqslant\delta \}$ and $E_{2}=\{ x:\lvert \varphi^{\prime}(x) \rvert>\delta \}$.
Note that $\forall x,y\in E_{1}$, $\lvert \varphi^{\prime}(x)-\varphi^{\prime}(y) \rvert\leqslant 2\delta$, but $\lvert \varphi^{\prime}(x)-\varphi^{\prime}(y) \rvert\geqslant \left\lvert  \int_{x}^{y} \varphi^{\prime\prime}(t) \, \mathrm{d}t  \right\rvert\geqslant \lvert x-y \rvert$. Therefore $E_{1}$ is an interval of length at most $2\delta$, so
$$
\left\lvert  \int_{E_{1}}e^{i\lambda\varphi(x)}\, \mathrm{d}x  \right\rvert\leqslant 2\delta.
$$
Now consider the integral on $E_{2}$, which is the union of one or two intervals. By C13), 
$$
\left\lvert  \int_{E_{2}}e^{i\lambda\varphi(x)}\,\mathrm{d}x  \right\rvert\leqslant 2 \cdot \frac{4}{\lambda\delta}.
$$
Therefore
$$
\left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)} \, \mathrm{d}x   \right\rvert \leqslant 2\delta + \frac{8}{\lambda\delta}= \frac{8}{\sqrt{ \lambda }}.
$$
(if we let $\delta=\sqrt{ 4 / \lambda }$.)
#### C16) Assume that for any $x\in[a,b],\lvert \varphi^{\prime\prime}(x) \rvert\geqslant 1$. Prove that there is a constant $C_{2}$ independent of $\lambda,\varphi,f,a,b$ such that
$$
\left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)}f(x) \, \mathrm{d}x   \right\rvert \leqslant \frac{C_{2}}{\sqrt{ \lambda }}\left( \lvert f(a) \rvert +\int_{a}^{b} \lvert f^{\prime}(x) \rvert  \, \mathrm{d}x  \right).
$$
Proof: By C15), 
$$
\begin{align}
\left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)} f(x)\, \mathrm{d}x   \right\rvert       & \leqslant \left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)}f(a) \, \mathrm{d}x   \right\rvert +\left\lvert  \int_{a}^{b} e^{i\lambda\varphi(x)} \int_{a}^{x} f^{\prime}(t) \, \mathrm{d}t  \, \mathrm{d}x   \right\rvert  \\
& \leqslant \lvert f(a) \rvert  \frac{C_{2}}{\sqrt{ \lambda }}+ \left\lvert  \int_{a}^{b} f^{\prime}(t) \int_{t}^{b} e^{i\lambda\varphi(x)} \, \mathrm{d}x  \, \mathrm{d}t   \right\rvert  \\
& \leqslant \frac{C_{2}}{\sqrt{ \lambda }} \left( \lvert f(a) \rvert +\int_{a}^{b} \lvert f^{\prime}(x) \rvert  \, \mathrm{d}x  \right).
\end{align}
$$

# Winter Holiday HW
## A. Young‘s Inequality
$f: \mathbb{R}_{\geqslant 0}\to \mathbb{R}_{\geqslant 0}$ is continuously differentiable. Assume $f(0)=0$, $\lim_{ x \to \infty }f(x)=\infty$, and for any $x\geqslant 0$, $f^{\prime}(x)>0$. Denote $f^{-1}$ by $g(x)$.
#### A1) Prove that for any $a\geqslant 0$,
$$
af(a)=\int_{0}^{a} f(x) \, \mathrm{d}x +\int_{0}^{f(a)} g(y) \, \mathrm{d}y. 
$$
Proof: $a=0$ is trivial. Take derivatives on both sides, then
$$
\frac{\mathrm{d}}{\mathrm{d}a} \int_{0}^{a} f(x) \, \mathrm{d}x =f(x), \, \frac{\mathrm{d}}{\mathrm{d}a} \int_{0}^{f(a)} g(y) \, \mathrm{d}y =g(f(a))f^{\prime}(a)=af^{\prime}(a),
$$
and $(af(a))^{\prime}=f(a)+af^{\prime}(a)$.
#### A2) Prove Young’s inequality: for any $a,b\geqslant 0$,
$$
ab\leqslant \int_{0}^{a} f(x) \, \mathrm{d}x +\int_{0}^{b} g(y) \, \mathrm{d}y. 
$$
Proof: Assume that $b\geqslant f(a)$, then
$$
\begin{align}
ab &\leqslant \int_{0}^{a} f(x) \, \mathrm{d}x +\int_{0}^{f(a)} g(y) \, \mathrm{d}y + a(b-f(a)) \\
&\leqslant \int_{0}^{a} f(x) \, \mathrm{d}x +\int_{0}^{b} g(y) \, \mathrm{d}y. 
\end{align}
$$
#### A3) Suppose  $f:\mathbb{R}_{\geqslant 0}\to \mathbb{R}_{\geqslant 0}$ is strictly monotonically increasing, and $f(0)=0$, $\lim_{ x \to \infty }f(x)=\infty$. Prove the inequality in A2)
Proof: It suffices to prove the equality in A1). For any $a,b\geqslant 0$, $f$ can be uniformly approximated by functions $P$ such that $P(0)=0$, $P$ is continuously differentiable and monotonically increasing. Then
$$
aP(a)=\int_{0}^{a} P(x) \, \mathrm{d}x +\int_{0}^{P(a)} P^{-1}(y) \, \mathrm{d}y.
$$
Note that $P(a)-f(a)\to 0$, $\int_{0}^{a} P(x) \, \mathrm{d}x-\int_{0}^{a} f(x) \, \mathrm{d}x\to 0$, $\int_{0}^{b} P^{-1}(y)-g(y) \, \mathrm{d}y\to 0$(since $P$ is continuously differentiable), and $\int_{b}^{P(a)} P^{-1}(y) \, \mathrm{d}y\to 0$ since $P^{-1}$ is bounded by $a$.
Hence the equality in A1) also holds for $f$.
#### A4) Assume $a,b\geqslant 0$, $p>1,q>1$, and $1 /p+1 /q=1$. Prove that
$$
ab\leqslant \frac{a^p}{p}+\frac{b^q}{q}.
$$
Proof: Consider $f(x)=x^{p-1}$, $g(x)=x^{1/(p-1)}=x^{q-1}$, then by A2),
$$
ab\leqslant \int_{0}^{a} f(x) \, \mathrm{d}x +\int_{0}^{b} g(y) \, \mathrm{d}y=\frac{a^p}{p}+\frac{b^q}{q}. 
$$
where equality holds iff $b=f(a)=a^{p-1}$, i.e. $a^p=b^q$.
## B. Sobolev’s Inequality
Consider any compact interval $[a,b]$.
#### B1) (Cauchy-Schwarz Inequality) Assume $f,g\in \mathcal{R}([a,b])$, prove that
$$
\left\lvert  \int_{a}^{b} f(x)g(x) \, \mathrm{d}x   \right\rvert \leqslant \left( \int_{a}^{b} \lvert f(x) \rvert ^{2} \, \mathrm{d}x  \right)^{1/2}\left( \int_{a}^{b} \lvert g(x) \rvert ^{2} \, \mathrm{d}x  \right)^{1/2}.
$$
Proof: Consider the inner product
$$
\langle f,g \rangle=\int_{a}^{b} f(x)g(x) \, \mathrm{d}x . 
$$
Then
$$
0\leqslant \langle f+tg,f+tg \rangle = \langle f,f \rangle +2t \langle f,g \rangle +t^{2} \langle g,g \rangle .
$$
Hence
$$
\Delta=4(\langle f,g \rangle ^{2}-\langle f,f \rangle \langle g,g \rangle )\leqslant 0.
$$
#### B2) Prove that for any $\varepsilon>0$, there is a constant $C_{\varepsilon}>0$ such that for any $f\in C^1([a,b])$, and any $x\in[a,b]$,
$$
\lvert f(x)^{2}-f(a)^{2} \rvert \leqslant C_{\varepsilon} \int_{a}^{b} f(x)^{2} \, \mathrm{d}x +\varepsilon \int_{a}^{b} f^{\prime}(x)^{2} \, \mathrm{d}x .
$$
Proof: Let $C_{\varepsilon}=4 /\varepsilon$, then
$$
\begin{align}
\lvert f(x)^{2 }-f(a)^{2} \rvert &= \left\lvert  \int_{a}^{x}  \, \mathrm{d}f^{2}   \right\rvert = \left\lvert  \int_{a}^{x} 2ff^{\prime}   \right\rvert   \\
&\leqslant \varepsilon \int_{a}^{b} f^{\prime}(x)^{2} \, \mathrm{d}x + \frac{4}{\varepsilon} \int_{a}^{b} f^{2}. 
\end{align}
$$
#### B3) Prove that for any $\varepsilon>0$, there is a constant $D_{\varepsilon}>0$ such that for any $f\in C^1([a,b])$,
$$
\sup_{x\in[a,b]}{\lvert f(x) \rvert ^{2}}\leqslant D_{\varepsilon} \int_{a}^{b} f(x)^{2} \, \mathrm{d}x +\varepsilon \int_{a}^{b} f^{\prime}(x)^{2} \, \mathrm{d}x .
$$
Proof: Let $D_{\varepsilon}=\frac{1}{b-a}+C_{\varepsilon}$, then
$$
\begin{align}
\sup_{x\in[a,b]}{\lvert f(x) \rvert ^{2}} &\leqslant \inf_{x\in[a,b]}\lvert f(x) \rvert ^{2} + \sup_{x,y\in[a,b]}{\lvert f(x)^{2}-f(y)^{2} \rvert } \\
& \leqslant \frac{1}{b-a} \int_{a}^{b} f^{2} + C_{\varepsilon} \int_{a}^{b} f^{2} +\varepsilon\int_{a}^{b} f^{\prime}(x)^{2} \, \mathrm{d}x   .
\end{align}
$$
## C. Wirtinger’s Inequality
Let $E=\{ f\in C^1([0,1]): f(0)=f(1)=0 \}$.
#### C1) For any $f\in E$, define the improper integral
$$
\mathbf{I}_{1}=\int_{0}^{1} \frac{f(x)f^{\prime}(x)}{\tan(\pi x)} \, \mathrm{d}x , \, \mathbf{I}_{2}= \int_{0}^{1} \frac{f(x)^{2}}{\tan ^{2}(\pi x)}(1+\tan ^{2}(\pi x)) \, \mathrm{d}x. 
$$
Prove that they converge and determine the value $I_{1} /I_{2}$.
Proof:
$$
\lim_{ x \to 0^+ } \frac{f(x)f^{\prime}(x)}{\tan(\pi x)}=f^{\prime}(0) \lim_{ x \to 0^+ } \frac{f^{\prime}(x)}{\pi/\cos ^{2}(\pi x)}= \frac{f^{\prime}(0)^{2}}{\pi}.
$$
Hence $ff^{\prime} /\tan(\pi x)\in C([0,1])$, so the integral converges.
$$
\begin{align}
I_{1} &= \int_{0}^{1}  \, \frac{\mathrm{d}f^{2}}{2\tan(\pi x)}=\frac{f^{2}}{2\tan\pi x}\Big\vert_{0}^{1}+\int_{0}^{1} f^{2} \frac{\pi}{2}\sec ^{2}(\pi x) \, \mathrm{d}x \\
&=  \frac{\pi}{2}I_{2} .
\end{align}
$$
#### C2C3) (Wirtinger’s Inequality) For any $f\in E$,
$$
\int_{0}^{1} f^{2} \leqslant \pi^{-2} \int_{0}^{1} f^{\prime}(x)^{2} \, \mathrm{d}x . 
$$
Proof: 
$$
\begin{align}
\mathbf{I}_{2} &= \int_{0}^{1} f(x)^{2} \, \mathrm{d}x +\int_{0}^{1} \frac{f^{2}}{\tan ^{2}(\pi x)} \, \mathrm{d}x =\frac{2}{\pi}\mathbf{I}_{1} \\
& = \frac{2}{\pi} \int_{0}^{1} \frac{f}{\tan (\pi x)} f^{\prime} \, \mathrm{d}x \leqslant \frac{2}{\pi} \sqrt{ \int_{0}^{1} \frac{f^{2}}{\tan ^{2}(\pi x)} \, \mathrm{d}x  \cdot\int_{0}^{1} (f^{\prime})^{2}  } \\ \\
& \leqslant \int_{0}^{1} \frac{f^{2}}{\tan ^{2}(\pi x)} \, \mathrm{d}x + \pi^{-2} \int_{0}^{1} (f^{\prime})^{2}. 
\end{align}
$$
Therefore
$$
\int_{0}^{1} f(x)^{2} \, \mathrm{d}x \leqslant \pi^{-2} \int_{0}^{1} f^{\prime}(x)^{2} \, \mathrm{d}x .
$$
If equality holds, then $f^{\prime}=\frac{\pi f}{\tan(\pi x)}$, hence $df /f= \frac{\mathrm{d}\pi x}{\tan(\pi x)}$, so $f=C\sin(\pi x)$. Combined with $f\in E$, we obtain $f=C\sin(\pi x),\forall C\in \mathbb{R}$.
#### C4) Assume $f\in \mathcal{R}([0,2\pi])$, determine the value of $A\in \mathbb{R}$ which minimizes the integral
$$
\int_{0}^{2\pi} \lvert f(x)-A \rvert ^{2} \, \mathrm{d}x .
$$
Solution: 
$$
\langle f-A,f-A \rangle =2\pi A^{2}+\langle f,f \rangle -2A\int_{0}^{2\pi}f(x)  \, \mathrm{d}x .
$$
Hence 
$$
A=\frac{1}{2\pi}\int_{0}^{2\pi} f(x) \, \mathrm{d}x .
$$
(Also, since $e^{inx}$ forms a base of the linear space $\mathcal{R}([0,1])$, $A$ is the projection of $f$ onto $e^{i 0 x}$, hence $A=\tilde{f}(0)$.)
#### C5) Another version of Wirtinger’s inequality: for any $f\in C^1([0,2\pi])$, if $f(0)=f(2\pi)$, and $\int_{0}^{2\pi} f(x) \, \mathrm{d}x=0$, then
$$
\int_{0}^{2\pi} f(x)^{2} \, \mathrm{d}x \leqslant \int_{0}^{2\pi} f^{\prime}(x)^{2} \, \mathrm{d}x .
$$
Proof: Consider $g(x)=f(x)-f(x+\pi)$, then $g(0)=-g(\pi)$, hence $g(x)=0$ for some $x\in[0,\pi]$. Assume that $g(0)=0$, i.e. $f(0)=f(\pi)$. Apply C2) to $f\vert_{[0,\pi]}-f(0)$ and $f\vert_{[\pi,2\pi]}-f(0)$, then by C4),
$$
\int_{0}^{2\pi} f(x)^{2} \, \mathrm{d}x \leqslant\int_{0}^{2\pi} \lvert f(x)-f(0) \rvert ^{2} \, \mathrm{d}x \leqslant \int_{0}^{2\pi} f^{\prime}(x)^{2} \, \mathrm{d}x .
$$
Proof using Fourier series: $\tilde{f}(0)=0$, hence
$$
\int_{0}^{2\pi} f^{2} =2\pi \sum_{n}^{}{\lvert \tilde{f}(n) \rvert ^{2}}\leqslant 2\pi \sum_{n}^{}{n^{2}\lvert \tilde{f}(n) \rvert ^{2}}=\int_{0}^{2\pi} \lvert f^{\prime} \rvert ^{2}.  
$$
#### C6) (Isoperimetric inequality) Assume $\gamma:[0,2\pi]\to \mathbb{R}^{2}$ is a continuously differentiable parameterization of a closed non-intersecting curve. Let $\gamma(t)=(x(t),y(t))$, 
$$
L= \int_{0}^{2\pi} \sqrt{ x^{\prime}(t)^{2}+y^{\prime}(t)^{2} } \, \mathrm{d}t, \, A=\int_{0}^{2\pi} x^{\prime}(t)y(t) \, \mathrm{d}t.  
$$
Prove that $L^{2}\geqslant 4\pi A$, and equality holds iff $\gamma$ forms a circle.
Proof: We can choose the parameterization $\gamma$ such that $\lvert \gamma^{\prime}(t) \rvert=1$ for any $t\in[0,2\pi]$. Furthermore, we can let $\gamma(0)=\gamma(\pi)=0$. Then $L=2\pi$ and
$$
\int_{0}^{\pi} x^{\prime}y\leqslant \frac{1}{2}\int_{0}^{\pi} \lvert x^{\prime} \rvert ^{2} +y^{2}=\frac{1}{2}\int_{0}^{\pi} y^{2}+1-\lvert y^{\prime} \rvert ^{2}\leqslant \frac{\pi}{2}.   
$$
Where the last inequality comes from C2).
If inequality holds, then by C2), $y=C\sin t,x=C\cos t$, hence $\gamma$ forms a circle.
## D. Gauss-Legendre Quadrature
For any $n\geqslant 1$, define the Legendre polynomial
$$
P_{n}(x)=\frac{1}{2^nn!} \left( \frac{\mathrm{d}}{\mathrm{d}x} \right)^n ((x^{2}-1)^n).
$$
Assume $P_{0}=1$.
#### D1) Prove that for any $\varphi(x)\in C([-1,1])$, and any $\varepsilon>0$, there exists $N\in \mathbb{N}$ and $c_{1},c_{2},\cdots,c_{N}\in \mathbb{R}$ such that
$$
\| \varphi(x)-\sum_{k=1}^{N}{c_{k}P_{k}(x)} \|_{\infty}<\varepsilon.
$$
Proof: $\deg P_{n}=n$, hence $P_{n}$ are linearly independent. By Stone-Weierstrass theorem, there exists such $N$ and $c_{1},c_{2},\cdots,c_{N}$.
#### D2) Prove that for any $n\geqslant 1$, $P_{n}$ satisfy the following differential equation:
$$
(1-x^{2})f^{\prime\prime}-2xf^{\prime}+n(n+1)f=0.
$$
Proof: Let $g(x)=(x^{2}-1)^n$, then
$$
(1-x^{2})g^{\prime\prime}+2ng^{\prime}+2g=0.???
$$
We can prove by induction that $g^{(k)}$ satisfy
$$
(1-x^{2})f^{\prime\prime}+2(n-k)f^{\prime}+k(k+1)f=0.
$$
Let $k=n$ and we obtain the required equation.
#### D3) Prove that for any $n,m\geqslant 1$,
$$
\int_{-1}^{1} P_{n}(x)P_{m}(x) \, \mathrm{d}x=
\begin{cases}
0, & m\neq n; \\
\frac{2}{2n+1}, & m=n.
\end{cases}
$$
Proof: Note that for all $0\leqslant m\lt n$, $\dfrac{\mathrm{d}^m}{\mathrm{d}x^m}((x^2-1)^n)=0$ when $x\in\{-1,1\}.$ Hence by Darboux’s integration by parts formula,
$$\langle P_n2^nn!,P_m2^mm!\rangle =\sum_{k=0}^{m}(-1)^k\left((x^2-1)^n\right)^{(n-k-1)}\left((x^2-1)^m\right)^{m+k}\Bigg\vert_{x=-1}^{x=1}=0$$
Hence $\{P_n\}$ form an orthogonal base, and also
$$\langle P_n,P_n\rangle=\dfrac{(2n)!}{2^nn!}\int_{-1}^{1}(1-x^2)^n\mathrm{d}x=\frac{2}{2n+1}.\text{(Wallis formula)}$$
#### D4) Given $n\geqslant 1$, Prove that if $Q(x)$ is a polynomial with degree at most $n-1$, then
$$
\int_{-1}^{1} Q(x)P_{n}(x) \, \mathrm{d}x =0.
$$
Proof: $Q\in \text{Span}\langle P_{0},P_{1},\cdots,P_{n-1} \rangle$ hence $\langle Q,P_{n} \rangle=0$.
#### D5) Prove that for any $n\geqslant 1$, $P_{n}(x)$ has exactly $n$ roots on the interval $(-1,1)$. Denote them by $x_{1}^{(n)}<x_{2}^{(n)}<\cdots<x_{n}^{(n)}$.
Proof: If $P_n$ has less than $n$ distinct roots on $(-1,1)$, take all roots with odd multiplicity $r_1,\cdots,r_k,k<n$. Let $Q(x)=\prod_{i=1}^{k}(x-r_i)$ then $P_n(x)$ and $Q(x)$ always have the same sign on $(-1,1)$. Therefore $\langle P_n,Q\rangle\neq 0$, a contradiction.
#### D6) Prove that for any $n\geqslant 1$, there exists $\alpha_{1}^{(n)},\alpha_{2}^{(n)},\cdots,\alpha_{n}^{(n)}$ such that for any polynomial $Q$ with degree at most $2n-1$,
$$
\int_{-1}^{1} Q(x) \, \mathrm{d}x =\sum_{i=1}^{n}{\alpha_{i}^{(n)}Q(x_{i}^{(n)})}.
$$
Proof: Suppose $Q(x)=P_{n}(x)T(x)+R(x)$, where $\deg R< \deg P_{n}=n$. Since $\deg Q\leqslant 2n-1$, $\deg T\leqslant n-1$, so $\langle P_{n},T \rangle=0$, i.e. $Q(x_{i}^{(n)})=R(x_{i}^{(n)})$ and 
$$
\int_{-1}^{1} Q(x) \, \mathrm{d}x =\int_{-1}^{1} R(x) \, \mathrm{d}x .
$$
By Lagrange interpolation, let 
$$
L_{i}(x)=\prod_{j\neq i}^{}{\frac{x-x_{j}^{(n)}}{x_{i}^{(n)}-x_{j}^{(n)}}}
$$
then $R(x)=\sum_{i=1}^{n}{L_{i}(x)R(x_{i}^{(n)})}$. Let $\alpha_{i}^{(n)}=\int_{-1}^{1} L_{i}(x) \, \mathrm{d}x$, then
$$
\int_{-1}^{1} R(x) \, \mathrm{d}x =\sum_{i=1}^{n}{\alpha_{i}^{(n)}R(x_{i}^{(n)})}.
$$
Hence
$$
\int_{-1}^{1} Q(x) \, \mathrm{d}x =\sum_{i=1}^{n}{\alpha_{i}^{(n)}Q(x_{i}^{(n)})}.
$$
#### D7) An approximation of integrals by Gauss: for any $\varphi \in C([-1,1])$, let
$$
G_{n}(\varphi)=\sum_{i=1}^{n}{\alpha_{i}^{(n)}\varphi(x_{i}^{(n)})}.
$$
Prove that $\lim_{ n \to \infty }G_{n}(\varphi)=\int_{-1}^{1} \varphi(x) \, \mathrm{d}x$.
Proof: We show that $\alpha_{i}^{(n)}$ are all non-negative, hence take a sequence of polynomials $P_{n}(x)$ uniformly convergent to $\varphi$ where $\deg P_{n}=n$, then
$$
\left\lvert  G_{n}(\varphi)-\int_{-1}^{1} \varphi(x) \, \mathrm{d}x   \right\rvert \leqslant \int_{-1}^{1} \lvert P_{n}(x)-\varphi(x) \rvert  \, \mathrm{d}x +\sum_{i=1}^{n}{\alpha_{i}^{(n)}\lvert \varphi(x_{i}^{(n)})-P_{n}(x_{i}^{(n)}) \rvert }\to 0.
$$
since $\sum_{i=1}^{n}{\alpha_{i}^{(n)}}=\int_{-1}^{1} 1 \, \mathrm{d}x=2$.
Note that $\alpha_{i}=\int_{-1}^{1} L_{i}(x) \, \mathrm{d}x$ where
$$
L_{i}(x)=\prod_{j\neq i}^{}{\frac{x-x_{j}^{(n)}}{x_{i}^{(n)}-x_{j}^{(n)}}}.
$$
Since $\deg L=n-1$,
$$
\int_{-1}^{1} L_{i}^{2}(x) \, \mathrm{d}x = \sum_{j=1}^{n}{\alpha_{j}^{(n)}L_{j}^{2}(x)}=\alpha_{i}^{(n)},
$$
Hence $\alpha_{i}^{(n)}\geqslant 0$.
## E. Equidistribution (Weyl)
Given a sequence $\{ x_{k} \}_{k\geqslant 1}\subset[0,1]$, for any $0\leqslant a<b\leqslant 1$, let
$$
S_{n}([a,b])=\lvert \{ x_{k}:k\leqslant n,x_{k}\in[a,b] \} \rvert.
$$
If for any $0\leqslant a<b\leqslant 1$,
$$
\lim_{ n \to \infty } \frac{S_{n}([a,b])}{n}=b-a,
$$
we say that $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed on $[0,1]$.
#### E1) Prove that if the sequence $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed on $[0,1]$, then $\{ x_{k} \}_{k\geqslant 1}$ is dense on $[0,1]$.
Proof: For any $x\in(0,1)$ and $\min\{ x,1-x \}>\varepsilon>0$, since $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed on $[0,1]$, $\lim_{ n \to \infty }S_{n}([x-\varepsilon,x+\varepsilon]) /n=2\varepsilon>0$, hence $\{ x_{k} \}_{k\geqslant 1}\cap[x-\varepsilon,x+\varepsilon]\neq \emptyset$ so $\{ x_{k} \}$ is dense.
#### E2) Construct a dense subset $\{ x_{k} \}_{k\geqslant 1}$ of $[0,1]$ such that it is not equidistributed.
Solution: List all rational numbers in $\left( 0,\frac{1}{2} \right)$ and $\left( \frac{1}{2},1 \right)$ as $\{ q_{1},q_{2},\cdots \}$ and $\{ r_{1},r_{2},\cdots \}$. Let
$$
x_{n}=\begin{cases}
q_{3k+1}, & n=4k+1, \\
q_{3k+2}, & n=4k+2,  \\
q_{3k+3}, & n=4k+3, \\
r_{k+1}, & n=4k+4.
\end{cases}
$$
Then $\{ x_{n} \}$ includes all rational numbers in $\left( 0,\frac{1}{2} \right)$ and $\left( \frac{1}{2},1 \right)$ so it is dense in $[0,1]$, but 
$$
\lim_{ n \to \infty } \frac{S_{n}\left( \left[ 0,\frac{1}{2} \right] \right)}{n}=\frac{3}{4}
$$
so it is not equidistributed.
#### E3) For an arbitrary sequence $\{ x_{k} \}_{k\geqslant 1}\subset[0,1]$, let
$$
D_{n}=\sup_{0\leqslant a< b\leqslant 1}{\left\lvert  \frac{S_{n}([a,b])}{n}-(b-a)  \right\rvert },\, D^*_{n}=\sup_{0<b<1}{\left\lvert  \frac{S_{n}([0,b])}{n}-b  \right\rvert }.
$$
Prove that $D^*_{n}\leqslant D_{n}\leqslant 2D^*_{n}$.
Proof: $D_{n}\geqslant D^*_{n}$ is trivial. Note that
$$
\frac{S_{n}([a,b])}{n}-(b-a)= \frac{S_{n}([0,b])}{n}-b -\left(  \frac{S_{n}([0,a])}{n}-a \right).
$$
Hence $D_{n}\leqslant 2D^*_{n}$.
#### E4) Prove that the sequence $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed on $[0,1]$ iff $\lim_{ n \to \infty }D^*_{n}=0$.
Proof: By E3) $\lim_{ n \to \infty }D^*_{n}=0\iff \lim_{ n \to \infty }D_{n}=0$. If $\lim_{ n \to \infty }D_{n}=0$, then for any $0\leqslant a<b\leqslant 1$, 
$$
\lim_{ n \to \infty } \left\lvert  \frac{S_{n}([a,b])}{n}-(b-a)  \right\rvert =0.
$$
Hence $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed. 
Suppose $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed, then for any $0<b<1$, $\lim_{ n \to \infty } \lvert S_{n}([0,b]) /n-b \rvert=0$.
#### E5) Prove that the sequence $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed on $[0,1]$ iff for any $f\in R([0,1])$, 
$$
\lim_{ n \to \infty } \frac{1}{n}\sum_{k=1}^{n}{f(x_{k})}=\int_{0}^{1} f(x) \, \mathrm{d}x . \tag{1}
$$
Proof: See E6).
#### E6) The sequence $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed on $[0,1]$ iff for any $p\in \mathbb{Z}_{\geqslant 1}$, 
$$
\lim_{ n \to \infty } \frac{1}{n}\sum_{k=1}^{n}{e^{2\pi ipx_{k}}}=0. \tag{2}
$$
Proof: 
i. Equidistribution ==> $(1)$: $\{ x_{k} \}_{k\geqslant 1}$ is equidistributed on $[0,1]$ implies that for any $\chi=\mathbf{1}_{[a,b]}$, 
$$
\lim_{ n \to \infty } \frac{1}{n}\sum_{k=1}^{n}{\chi(x_{k})}=\int_{0}^{1} \chi(x) \, \mathrm{d}x .
$$
(which implies $(1)$ ==> equidistribution)
Hence $(1)$ holds for any $\varphi=\sum_{k=1}^{n-1}{c_{k}\mathbf{1}_{[x_{k},x_{k+1}]}}$. For any Riemann integrable function $f$ and any $\varepsilon>0$, take $\varphi_{1}\leqslant f\leqslant \varphi_{2}$ where $\varphi_{1},\varphi_{2}$ are step functions such that
$$
\int_{0}^{1} \varphi_{2}(x) \, \mathrm{d}x -\varepsilon\leqslant\int_{0}^{1} f(x) \, \mathrm{d}x \leqslant \int_{0}^{1} \varphi_{1}(x) \, \mathrm{d}x +\varepsilon
$$
There exists $N$ such that for any $n\geqslant N$, 
$$
\left\lvert  \frac{1}{n}\sum_{k=1}^{n}{\varphi_{1}(x_{k})}-\int_{0}^{1} \varphi_{1}(x) \, \mathrm{d}x   \right\rvert ,\left\lvert  \frac{1}{n}\sum_{k=1}^{n}{\varphi_{2}(x_{k})}-\int_{0}^{1} \varphi_{2}(x) \, \mathrm{d}x   \right\rvert <\varepsilon.
$$
Hence
$$
\int_{0}^{1} f(x) \, \mathrm{d}x \leqslant \int_{0}^{1} \varphi_{1}(x) \, \mathrm{d}x +\varepsilon < \frac{1}{n}\sum_{k=1}^{n}{\varphi_{1}(x_{k})}+2\varepsilon\leqslant \frac{1}{n}\sum_{k=1}^{n}{f(x_{k})}+2\varepsilon.
$$
Likewise
$$
\int_{0}^{1} f(x) \, \mathrm{d}x \geqslant \frac{1}{n}\sum_{k=1}^{n}{f(x_{k})-2\varepsilon}.
$$
Therefore
$$
\lim_{ n \to \infty } \frac{1}{n}\sum_{k=1}^{n}{f(x_{k})}=\int_{0}^{1} f(x) \, \mathrm{d}x 
$$
for any $f\in R([0,1])$.
ii. $(1)$ ==> $(2)$: Since $e^{2\pi ipx}\in R([0,1])$ and
$$
\int_{0}^{1} e^{2\pi ipx} \, \mathrm{d}x =0.
$$
iii. $(2)$ ==> equidistribution: From $(2)$ we know that $(1)$ holds for trigonometric polynomials. By Stone-Weierstrass theorem, continuous functions can by uniformly approximated by trigonometric polynomials, hence $(1)$ holds for continuous functions. Likewise, step functions can be uniformly approximated by continuous functions, hence we obtain $\{ x_{k} \}$ is equidistributed.
#### Ex: (Van Der Corput) Suppose $\{ \xi_{n} \}_{n\geqslant 1}$ is a sequence on $[0,1]$. If for any $h\geqslant 1$, the sequence $\{ \xi_{n+h}-\xi_{n} \}_{n\geqslant 1}$ is equidistributed, then $\{ \xi_{n} \}_{n\geqslant 1}$ is equidistributed.
Proof: From E5) and E6) we know that
$$
\lim_{ N \to \infty } \frac{1}{N}\sum_{n=1}^{N}{e^{2\pi i p (\xi_{n+h}-\xi_{n})}}=0,\,\forall p\in \mathbb{Z}-\{ 0 \},h\geqslant 1.
$$
We only need to prove the following lemma:
Suppose $\{ u_{n} \}_{n\geqslant 1}\subset \mathbb{C}$ is bounded, and for any $h\geqslant 1$,
$$
\lim_{ N \to \infty } \frac{1}{N}\sum_{n=1}^{N}{u_{n+h}\bar{u}_{n}}=0,
$$
then
$$
\lim_{ N \to \infty } \frac{1}{N}\sum_{n=1}^{N}{u_{n}}=0.
$$
Suppose $M=\sup_{n\in \mathbb{N}}{\lvert u_{n} \rvert}$. Note that for any $N>D>0$,
$$
\left\lvert  \frac{1}{N}\sum_{n=1}^{N}{u_{n}}-\frac{1}{D} \frac{1}{N} \sum_{h=1}^{D}{\sum_{n=1}^{N}{u_{n+h}}}  \right\rvert \leqslant \frac{1}{N} \sum_{k=1}^{D}{\frac{D+1-k}{D}(\lvert u_{k} \rvert +\lvert u_{N+k} \rvert ) }  \leqslant \frac{(D+1)M}{N}.
$$
For a constant $D$, and any $\varepsilon>0$, there exists $N_{0}$ such that for any $n>N_{0}$, and any $d_{1}\neq d_{2}\in[1,D]$, $\left\lvert  \sum_{n=1}^{N}{u_{n+d_{1}}\bar{u}_{n+d_{2}}} /N  \right\rvert<\varepsilon^{2} /2$, then
$$
\begin{align}
\left\lvert  \frac{1}{ND} \sum_{h=1}^{D}{\sum_{n=1}^{N}{u_{n+h}}} \right\rvert ^{2} & \leqslant \frac{1}{N} \sum_{n=1}^{N}{\left\lvert \frac{1}{D} \sum_{h=1}^{D}{u_{n+h}}  \right\rvert^{2} }=\frac{1}{N}\sum_{n=1}^{N}{\frac{1}{D^{2}}\sum_{h,k}^{}{u_{n+h}\bar{u}_{n+k}}}  \\
&= \frac{1}{ND^{2}} \left( \sum_{h=1}^{D}{\sum_{n=1}^{N}{\lvert u_{n+h} \rvert ^{2}}}+\frac{D(D-1)}{2}\varepsilon^{2} \right)\leqslant \frac{M^{2}}{D}+ \frac{D-1}{2D}\varepsilon^{2}.
\end{align}
$$
Hence for any $\varepsilon>0$ and $D\geqslant 1$, there exists $N_{0}$ such that for any $n>N_{0}$,
$$
\left\lvert  \frac{1}{N}\sum_{n=1}^{N}{u_{n}}  \right\rvert \leqslant \frac{(D+1)M}{N}+\sqrt{ \frac{M^{2}}{D}+\frac{D-1}{2D}\varepsilon^{2} }\to 0.
$$
Therefore
$$
\lim_{ N \to \infty } \frac{1}{N}\sum_{n=1}^{N}{u_{n}}=0.
$$
This implies that any polynomial $\sum_{i=0}^{n}{c_{i}x^{i}}$ with $c_{n}\in \mathbb{Q}^{C}$ is equidistributed.
#### Ex: (Fejér)
Suppose $g(t)$ ($t\geqslant 1$) satisfy: (a) $g\in C^{1}$; (b) $g$ is monotonically increasing and $\lim_{ t \to \infty }g(t)=+{\infty}$; (c) $g^{\prime}$ is monotonically decreasing and $\lim_{ t \to \infty }g^{\prime}(t)=0$; (d) $\lim_{ t \to \infty }tg^{\prime}(t)=+\infty$. Prove that $\{ \langle g(n) \rangle \}$ is equidistributed.
Proof: Consider
$$
\begin{align}
\left\lvert  \sum_{n=1}^{N-1}{e^{2\pi i g(n)}}-\int_{1}^{N} e^{2\pi i g(x)} \, \mathrm{d}x \right\rvert & \leqslant \sum_{n=1}^{N-1}{\int_{n}^{n+1} \lvert \cos(2\pi g(n))-\cos(2\pi g(x)) \rvert +\lvert \sin(2\pi g(n))-\sin(2\pi g(x)) \rvert  \, \mathrm{d}x } \\
& \leqslant \sum_{n=1}^{N-1}{\int_{n}^{n+1} 4\pi \lvert g^{\prime}(\xi_{x}) \rvert  \, \mathrm{d}x }\leqslant 4\pi \sum_{n=1}^{N-1}{\sup_{\xi \in[n,n+1]}{\lvert g^{\prime}(\xi) \rvert }}
\end{align}
$$
and
$$
\int_{1}^{N} e^{2\pi i g(x)} \, \mathrm{d}x =\int_{g(1)}^{g(N)} \frac{e^{2\pi i t}}{g^{\prime}(g^{-1}(t))} \, \mathrm{d}t = \frac{1}{g^{\prime}(N)}\int_{\gamma}^{g(N)} e^{2\pi i t} \, \mathrm{d}t
$$
(using mean value theorem for integrals).
Hence
$$
\begin{align}
\lim_{ N \to \infty } \frac{1}{N}\left\lvert  \sum_{n=1}^{N-1}{e^{2\pi i g(n)}}-\int_{1}^{N} e^{2\pi i g(x)} \, \mathrm{d}x   \right\rvert \leqslant \lim_{ N \to \infty } \frac{4\pi}{N}\sum_{n=1}^{N-1}{\sup_{\xi \in[n,n+1]}{\lvert g^{\prime}(\xi) \rvert }}=0\text{ (Cesaro sum)}
\end{align}
$$
and
$$
\frac{1}{N}\left\lvert  \int_{1}^{N} e^{2\pi i g(x)} \, \mathrm{d}x   \right\rvert \leqslant \frac{1}{2Ng^{\prime}(N)}\to 0.
$$
#### E7) Suppose $\theta>0$, then the sequence $\{ \langle n\theta \rangle\}_{n\geqslant 1}$ is equidistributed on $[0,1]$ iff $\theta$ is irrational.
Proof: Note that 
$$
\frac{1}{N}\sum_{n=1}^{N}{e^{2\pi i p n\theta}}=\frac{e^{2\pi i p \theta}}{N} \frac{1-e^{2\pi i p N \theta}}{1-e^{2\pi i p \theta}}\to 0.
$$
Hence by Weyl’s Theorem $\{ \langle n\theta \rangle \}_{n\geqslant 1}$ is equidistributed.
#### E8) Prove that the sequence $\{ \xi_{n}=\langle \sqrt{ n } \rangle \}_{n\geqslant 1}$ is equidistributed on $[0,1]$.
Proof: See E8).
#### E9) For an arbitrary $a\neq 0$, $\sigma \in(0,1)$, prove that the sequence $\{ \xi_{n}=\langle an^{\sigma}\rangle \}_{n\geqslant 1}$ is equidistributed on $[0,1]$.
Proof: Use Fejér’s theorem above.
Note: Using Van Der Corput, we can prove the statement for any $\sigma \in \mathbb{R}_{>0}-\mathbb{Z}$, by considering $\Delta ^{k}(an^{\sigma})$.
#### E10) Prove that for any $a\in \mathbb{R}$, the sequence $\{ \xi_{n}=\langle a\log n\rangle \}_{n\geqslant 1}$ is not equidistributed on $[0,1]$.
Proof: Let $f(x)=a\log x$, then $\lim_{ x \to \infty }f^{\prime}(x)=0$. Consider
$$
\left\lvert  \sum_{n=1}^{N-1}{e^{2\pi i f(n)}}-\int_{1}^{N} e^{2\pi i f(x)} \, \mathrm{d}x   \right\rvert \leqslant 4\pi\sum_{n=1}^{N-1}\sup_{\xi \in[n,n+1]}{\lvert g^{\prime}(\xi) \rvert }= o(N)
$$
and 
$$
\frac{1}{N}\left\lvert  \int_{1}^{N} e^{2\pi i f(x)} \, \mathrm{d}x   \right\rvert =\frac{1}{N} \left\lvert  \int_{0}^{\log N} e^{(2\pi i a+1)t} \, \mathrm{d}t   \right\rvert =\left\lvert  \frac{e^{2\pi i \log N}-N^{-1}}{2\pi i a+1 } \right\rvert \to \frac{1}{\lvert 2\pi i a +1 \rvert }\neq 0 .
$$
Hence $\{ \xi_{n} \}$ is not equidistributed on $[0,1]$.

## F: Winding Number of Closed Curve
Let $E=\{ f:\mathbb{R}\to \mathbb{C}^{\times}:f\in C^{1},f(x+2\pi)=f(x) \}$, where $\mathbb{C}^{\times}=\mathbb{C}-\{ 0 \}$. For $f\in E$, $f\vert_{[0,2\pi]}$ represents a closed curve on $\mathbb{C}$ that does not contain $0$.
For any $f\in E$, define
$$
d(f)=\frac{1}{2\pi i}\int_{0}^{2\pi} \frac{f^{\prime}(t)}{f(t)} \, \mathrm{d}t. 
$$
#### F1) Prove that $d(f)$ is well-defined and calculate $d(f_{n})$ where
$$
f_{n}:\mathbb{R}\to \mathbb{C}^{\times},\,x\mapsto f_{n}(x)=e^{inx}.
$$
Proof: Since $f_{n}^{\prime}(x)=in e^{inx}$, then
$$
d(f_{n})=\frac{1}{2\pi i} \int_{0}^{2\pi } \frac{f_{n}^{\prime}(t)}{f_{n}(t)} \, \mathrm{d}t =\frac{1}{2\pi i }\int_{0}^{2\pi} in \, \mathrm{d}t=n. 
$$
#### F2) Represent $d(f)$ in polar coordinates.
Suppose $f(t)=\rho(t)e^{i\theta(t)}$ where $\rho(t),\theta(t) \in \mathbb{R}$, then $f^{\prime}(t)=\rho^{\prime}(t)e^{i\theta(t)}+i\rho(t)\theta^{\prime}(t)e^{i\theta(t)}$, hence
$$
\begin{align}
d(f)&= \frac{1}{2\pi i} \int_{0}^{2\pi} \frac{\rho^{\prime}(t)}{\rho(t)} \, \mathrm{d}t +\frac{1}{2\pi i}\int_{0}^{2\pi } \theta^{\prime}(t) \, \mathrm{d}t  = \frac{\log\rho(2\pi) -\log\rho(0)}{2\pi i}+\frac{\theta(2\pi)-\theta(0)}{2\pi} \\
&= \frac{\theta(2\pi)-\theta(0)}{2\pi}.
\end{align}
$$
Which is the number of times $f$ circles around $0$, counterclockwise.
#### F3) Use the function
$$
\psi(t)=\exp \int_{0}^{t} \frac{f^{\prime}(s)}{f(s)} \, \mathrm{d}s 
$$
to show that $d(f)\in \mathbb{Z}$.
Proof: Note that
$$
\psi^{\prime}(t)=\psi(t)\cdot \frac{f^{\prime}(t)}{f(t)}.
$$
Hence let $g(t)=\psi(t) /f(t)$, then $g^{\prime}(t)=(\psi^{\prime}(t)f(t)-\psi(t)f^{\prime}(t)) /f^{2}(t)=0$, so $\psi(t)=Cf(t)$ for all $t\in[0,2\pi]$. Therefore
$$
1=\psi(0)=Cf(0)=Cf(2\pi)=\psi(2\pi)=e^{2\pi i d(f)},
$$
i.e. $d(f)\in \mathbb{Z}$.
#### F4) Prove that for any $f\in E$, there exists $\varepsilon>0$ such that for any $g\in E$, if $\|f-g\|_{\infty}<\varepsilon$, then $d(g)=d(f)$.
Proof: Suppose $f=\rho_{1}e^{i\theta_{1}}$ and $g=\rho_{2}e^{i\theta_{2}}$. Note that for any $z=\rho e^{i\theta}$ and $w=re^{it}$, $\lvert z-w \rvert\geqslant \sup_{r>0}{\lvert z-re^{it} \rvert}=\rho\lvert \sin(\theta-t) \rvert$. Hence $\|f-g\|_{\infty}<\varepsilon$ implies $\|\sin(\theta_{1}-\theta_{2})\|_{\infty}<\delta=\varepsilon /\inf_{}{\rho_{1}}$. Let $\theta(t)=\theta_{1}(t)-\theta_{2}(t)$, then when $\delta<1$, $\theta(t)$ lies in $\bigcup(2k\pi-\alpha,2k\pi+\alpha)$ for some $\alpha<\pi$. Since $\theta(t)$ is continuous, it must stay in the same interval, hence $\lvert \theta(0)-\theta(2\pi) \rvert<2\pi$, i.e. $\lvert d(f)-d(g) \rvert<1$ so $d(f)=d(g)$. Hence $\varepsilon=\inf_{}{\min\rho_{1} } /2$ is sufficient.
#### F5) Try to define $d(f)$ for $f\in E$ using F4) and Weierstrass-Stone for trigonometric polynomials.
Solution: For $f_{n}(x)=e^{i n x}$, let $d(f)=n$. For a trigonometric polynomial $P(x)=\sum_{k=-n}^{n}{c_{k}f_{k}(x)}$, let $Q(x)=\sum_{k=0}^{2n}{c_{k-n}x^{k}}$ and $d(P)$ be the number of roots of $Q$ on the unit circle.
For an arbitrary $f\in E$, take a sequence of trigonometric polynomials $\{ P_{n} \}_{n\geqslant 1}$ uniformly convergent to $f$. The sequence $\{ P_{n} \}_{n\geqslant 1}$ is Cauchy, so by F4) $d(P_{n})$ is eventually constant, and let $d(f)=\lim_{ n \to \infty }d(P_{n})$. From F4) this definition is the same as the original one.
#### F6) Prove invariance under homotopy: Suppose $F(t,\tau):\mathbb{R}\times[0,1]\to \mathbb{C}^{\times}$ is continuous and for any $\tau \in[0,1]$, $F(\cdot,\tau)\in E$, then
$$
d(F(x,0))=d(F(x,1)).
$$
Proof: Let $S=\{ \tau\in[0,1]:d(F(x,0))=d(F(x,\tau))\}$, and $s=\sup_{}{S}$. ($0\in S$ so $S$ is non-empty). Using F4), there is an $\varepsilon>0$ such that for any $g\in E$, if $\|F(\cdot,s)-g\|_{\infty}<\varepsilon$, then $d(F(\cdot,s))=d(g)$. Since $F(t,\tau)$ is continuous, there exists $\delta>0$ such that $r\in(s-\delta,s+\delta)$ implies $\|F(\cdot,s)-F(\cdot,r)\|_{\infty}<\varepsilon$ so $d(F(\cdot,s))=d(F(\cdot,r))$. Hence we can obtain $s \in S$ and $s=1$, i.e.
$$
d(F(x,0))=d(F(x,1)).
$$
#### F7) Suppose $P(x)=x^{n}+c_{n-1}x^{n-1}+\cdots+c_{1}x+c_{0}$ is a complex polynomial, and $P(0)\neq 0$. Prove that there exists $\varepsilon_{0}>0$, such that for any $\varepsilon \in(0,\varepsilon_{0})$, the function $f_{\varepsilon}(x)=P(\varepsilon e^{ix})\in E$ and calculate $d(f_{\varepsilon})$.
Proof: Note that $\|f_{\varepsilon}-c_{0}\|_{\infty}\to 0$ so by F4) such $\varepsilon_{0}$ exists and $d(f_{\varepsilon})=0$.
#### F8) Following F7), prove that there exists $R_{0}>0$ such that for any $R\in(R_{0},\infty)$, $f_{R}(x)=P(R e^{ ix})\in E$ and calculate $d(f_{R})$.
Proof: Let $g_{R}(x)=f_{R}(x)/R^{n}$, then $d(f_{R})=d(g_{R})$ and $\|g_{R}-e^{n i x}\|_{\infty}\to 0$, hence $d(f_{R})=d(g_{R})=n$.
#### F9) Prove that every complex polynomial of degree $n$ has at least one root.
Proof: Let $F(x,t)=P(Rte^{ix})$ where $F:\mathbb{R}\times[0,1]\to \mathbb{C}^{\times}$ and $R$ as in F7). If $P$ has no roots, then $F(\cdot,t)\in E$ for any $t\in[0,1]$, but for some $\varepsilon>0$, $d(F(\cdot,\varepsilon))=0$ while $d(F(\cdot,1))=n$, leading to contradiction with F6).
## G: Bolzano Curve
Define the sequence of functions on $[0,1]$ $\{ f_{n} \}_{n\geqslant 0}$ inductively, where $f_{0}(x)=x$, and for $n\geqslant 0$, $0\leqslant k\leqslant 3^{m}$,
$$
\begin{cases}
f_{n+1}(k 3^{-n}) & =f_{n}(k 3^{-n}), \\
f_{n+1}(k 3^{-n}+3^{-n-1}) & =f_{n}(k 3^{-n}+2\cdot 3^{-n-1}), \\
f_{n+1}(k 3^{-n}+2 \cdot 3^{-n-1}) & =f_{n}(k 3^{-n}+3^{-n-1}).
\end{cases}
$$
and $f_{n+1}$ is linear on every interval $[k 3^{-n-1},(k+1)3^{-n-1}]$.
#### G1) Prove that for any $n\geqslant 0$, and any $0\leqslant x,y\leqslant 1$,
$$
\lvert f_{n}(x)-f_{n}(y) \rvert \leqslant 2^{n}\lvert x-y \rvert .
$$
Proof: We can assume that $x=k\cdot 3^{-n}$ and $y=(k+1)\cdot 3^{-n}$, then $\lvert x-y \rvert=3^{-n}$. Suppose $f_{n}(x)=f_{n-1}(v)$ and $f_{n}(y)=f_{n-1}(u)$, we obtain $\lvert f_{n}(x)-f_{n}(y) \rvert\leqslant 2^{n-1}\lvert u-v \rvert\leqslant 2^{n}\cdot 3^{-n}=2^{n}\lvert x-y \rvert$.
#### G2) Prove that for any $n\geqslant 0$ and any $x\in[0,1]$,
$$
\lvert f_{n+1}(x)-f_{n}(x) \rvert \leqslant \frac{2^{n}}{3^{n+1}}.
$$
Proof: The function $f_{n+1}(x)-f_{n}(x)$ is linear on every interval $[k 3^{-n-1},(k+1)3^{-n-1}]$, so we can assume that $x=k\cdot 3^{-n}+r\cdot3^{-n-1}$ for some $k\leqslant 3^{m}$ and $r\in \{ 0,1,2 \}$. By G1), in all three cases $\lvert f_{n+1}(x)-f_{n}(x) \rvert\leqslant 2^{n}\cdot 3^{-n-1}$.
#### G3) Prove that $\{ f_{n} \}_{n\geqslant 1}$ converges uniformly to some $f\in C([0,1])$.
Proof: For any $N$, any $x\in[0,1]$ and $n>m>N$,
$$
\lvert f_{n}(x)-f_{m}(x) \rvert \leqslant \frac{1}{3}\sum_{n=N}^{\infty}{\left( \frac{2}{3} \right)^{n}}=\frac{2^{N-1}}{3^{N}} \to 0.
$$
Hence $\{ f_{n} \}_{n\geqslant 1}$ converges uniformly to $f$, and $f\in C([0,1])$ since $f_{n}$ are all continuous.
#### G4) Prove that for any $n\geqslant 1$, and any $0\leqslant k\leqslant 3^{n}$, $f(k 3^{-n})=f_{n}(k 3^{-n})$.
Proof: Trivial since for any $m>n$, $f_{m}(k\cdot 3^{-n})=f_{m-1}(k\cdot 3^{-n})=f_{n}(k\cdot 3^{-n})$.
#### G5) Prove that for any $n\geqslant 1$ and any $0\leqslant k\leqslant 3^{n}$, $f$ is not differentiable at $k 3^{-n}$.
Proof: As in G1), we can show by induction that for any $m>k$, $\lvert f(k\cdot 3^{-n})-f(k\cdot 3^{-n}+3^{-m}) \rvert=2^{m}3^{-m}$ so $f^{\prime}(k\cdot 3^{-n})$ does not exist. (Same for $f^{\prime}(1)$).
#### G6) Prove that $f$ is nowhere differentiable on $[0,1]$.
Proof: If $f$ is differentiable at $x$, then for any $\{ h_{n} \}$ and $\{ k_{n} \}$ such that $h_{n},k_{n}>0$ and $\lim_{ n \to \infty }h_{n}=\lim_{ n \to \infty }k_{n}=0$, 
$$
\lim_{ n \to \infty } \frac{f(x+h_{n})-f(x-k_{n})}{h_{n}+k_{n}}=f^{\prime}(x).
$$
Define $h_{n}$ and $k_{n}$ such that $x+h_{n}$ and $x-k_{n}$ are in the form $\{ (k+1)\cdot 3^{-n},k\cdot 3^{-n} \}$, then we infer $f$ is not differentiable at $x$.


## Problem W: $e$ is Transcendental
Suppose $P(x)$ is a real polynomial of degree $n$. Let
$$
I(t)=\int_{0}^{t} e^{t-x}P(x) \, \mathrm{d}x. 
$$
#### W1) Prove that $I(t)=e^{t}\sum_{i=0}^{n}{P^{(i)}(0)}-\sum_{i=0}^{n}{P^{(i)}(t)}$.
Proof: Note that $(e^{t-x})^{(n)}=(-1)^{n}e^{t-x}$, then using integration by part we obtain 
$$
I(t)=(-1)^{n}\sum_{i=0}^{n}{(-1)^{i}(e^{t-x})^{(n-i+1)}P^{(i)}(x)\Big\vert_{0}^{t}}=e^{t}\sum_{i=0}^{n}{P^{(i)}(0)}-\sum_{i=0}^{n}{P^{(i)}(t)}.
$$
#### W2) Suppose there exist integers $a_{0},a_{1},\cdots,a_{n}$, where $a_{0}\neq 0$ such that
$$
a_{0}+a_{1}e+a_{2}e^{2}+..+a_{n}e^{n}=0.
$$
For $p\in \mathbb{Z}_{\geqslant 0}$, let
$$
P(x)=x^{p-1}(x-1)^{p}(x-2)^{p}\cdots(x-n)^{p}
$$
and define
$$
J=a_{0}I(0)+a_{1}I(1)+\cdots+a_{n}I(n).
$$
Prove that $J\in \mathbb{Z}$ and $(p-1)!|J$.
Proof: Denote $C=\sum_{i=0}^{\infty}{P^{(i)}(0)}$, then from W1),
$$
J=\sum_{k=0}^{n}{a_{k}I(k)}=\sum_{k=0}^{n}{a_{k}\left( e^{k}C-\sum_{i=0}^{\infty}{P^{(i)}(k)} \right)}=-\sum_{k=0}^{n}{\sum_{i=0}^{\infty}{}a_{k}P^{(i)}(k)}\in \mathbb{Z},
$$
Denote $F(k)=\sum_{i=0}^{\infty}{P^{(i)}(k)} /(p-1)!$, we show that $F(k)\in \mathbb{Z}$ for any $0\leqslant k\leqslant n$.
When $k=0$, let $u(x)=x^{p-1} /(p-1)!$ and $v(x)=(x-1)^{p}\cdots(x-n)^{p}$, then 
$$
P^{(m)}(0)=\sum_{j=0}^{m}{u ^{(j)}(0)v^{(m-j)}(0)\binom{m}{j}}
$$
so 
$$
F(0)=\sum_{j=p-1}^{\infty}{v^{(j-p+1)}(0)\binom{j}{p-1}}\in \mathbb{Z}.
$$
If $p$ is a prime greater then $n$, then $F(0)=v(0)+p(\cdots)\in \mathbb{Z}-p\mathbb{Z}$.
When $1\leqslant k\leqslant n$, let $u(x)=(x-k)^{ p} /(p-1)!$ and $v(x)=P(x) /(x-k)^{p}$, then
$$
P^{(m)}(k)=\sum_{j=0}^{m}{u ^{(j)}(k)v^{(m-j)}(0)\binom{m}{j}}
$$
so
$$
F(k)=\sum_{j=p}^{\infty}{pv^{(j-p)}(0)\binom{j}{p}}\in p\mathbb{Z}.
$$
Therefore $(p-1)!|J$.
#### W3) Prove that if $p$ is a prime greater than $n$ then $J\neq 0$ hence $\lvert J \rvert\geqslant (p-1)!$.
Proof: From W2) we know that $F(0) \not \equiv 0 \pmod p$, and $p|F(k)$ for any $1\leqslant k\leqslant n$. hence $J\not\equiv 0 \pmod p$ so $J\neq 0$.
#### W4) Prove that there exists $C>0$ such that for any $p\in \mathbb{Z}_{\geqslant 1}$, $\lvert J \rvert\leqslant C^{p}$.
Proof: For any $0\leqslant k\leqslant n$, 
$$
\lvert I(k) \rvert \leqslant \int_{0}^{k} \lvert e^{k-x}P(x) \rvert  \, \mathrm{d}x \leqslant e^{n}\cdot n^{(n+1)p},
$$
hence 
$$
\lvert J \rvert \leqslant e^{n}\cdot n^{(n+1)p}\cdot \sum_{j=0}^{n}{\lvert a_{n} \rvert }<C^{p}.
$$
where $C=n^{n+1}\cdot e\cdot (1+\sum_{j=0}^{n}{\lvert a_{n} \rvert})$.
#### W5) Prove that $e$ is transcendental.
Proof: Otherwise by W3) and W4), there exists $C>0$ such that for any prime $p>n$, $C^{p}\leqslant (p-1)!$ which contradicts with the infinity of primes.
### Ex: $\pi$ is also transcendental
Consider the identity $e^{i\pi}+1=0$. Suppose $\pi i$ is algebraic (with degree $n$), then
$$
0=\prod_{i=1}^{n}{(1+e^{\gamma_{i}})}=\sum_{\varepsilon_{i}\in \{ 0,1 \}}^{}{e^{\sum_{i}^{}{\varepsilon_{i}\gamma_{i}}}}=a+\sum_{i=1}^{m}{e^{\alpha_{i}}}.
$$
where $\gamma_{i}$ are the conjugates of $\pi i$, $a=2^{n}-m\geqslant 1$ are the number of zero exponents in the first sum, and $\alpha_{i}$ are all the non-zero exponents. Note that
$$
\phi(x)=\prod_{\varepsilon \in \{ 0,1 \}}^{}{\left( x-\sum_{i=1}^{n}{\varepsilon_{i}\gamma_{i}} \right)}\in \mathbb{Q}[x].
$$
Let
$$
\psi(x)=C\frac{\phi(x)}{x^{a}}=\sum_{i=0}^{m}{b_{i}x^{i}}\in \mathbb{Z}[x],b_{m}>0,b_{0}\neq 0,
$$
whose roots are exactly $\alpha_{i}$. Furthermore, $b_{m}\alpha_{i}$ are all algebraic integers. 
Apply the identity W1) to the polynomial
$$
f(x)=\frac{b_{m}^{(m-1)p}}{(p-1)!}x^{p-1}\psi ^{p}(x)=\frac{b_{m}^{mp}}{(p-1)!}x^{p-1}\prod_{i=1}^{m}{(x-\alpha_{i})^{p}}.
$$
Plug in $x=\alpha_{i}$ and sum over $i$, we obtain
$$
-aF(0)-\sum_{i=1}^{m}{F(\alpha_{i})}=\sum_{i=1}^{m}{e^{\alpha_{i}}\int_{0}^{\alpha_{i}} f(t)e^{-t} \, \mathrm{d}t }.\tag{1}
$$
Note that
$$
F(0)=(-1)^{mp}b_{m}^{mp}\left( \prod_{i}^{}{\alpha_{i}} \right)^{p}\in \mathbb{Z}-p\mathbb{Z}.
$$
Also
$$
\sum_{i=1}^{m}{F(\alpha_{i})}=pb_{m}^{mp}\sum_{i}^{}{\alpha_{i}^{p-1}}\prod_{j\neq i}^{}{(\alpha_{i}-\alpha_{j})^{p}}\in p\mathbb{Z}
$$
for large $p$ since it is symmetric in $\alpha_{i}$ and the denominator is cleared by $b_{m}^{mp}$. Therefore the LHS of $(1)$ is a non-zero integer.
We estimate the integral:
$$
\left\lvert  e^{\alpha_{i}}\int_{0}^{\alpha_{i}} f(t)e^{-t} \, \mathrm{d}t  \right\rvert \leqslant (\lvert \alpha_{i}b_{m}^{m-1}\psi(\alpha_{i}) \rvert )^{p} /(p-1)!\to 0
$$
as $p\to \infty$, reaching contradiction.
#### Further Theorems:
1. Hilbert’s 7th question: For any algebraic number $a \not\in \{ 0,1 \}$, and irrational number $b$, $a^{b}$ is transcendental.
2. Hermite-Lindemann: $e^{\alpha}$ is transcendental for any $\alpha \in \mathbb{\bar{Q}}-\{ 0 \}$.

