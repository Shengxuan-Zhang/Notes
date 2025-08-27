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
