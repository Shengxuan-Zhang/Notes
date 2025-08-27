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

