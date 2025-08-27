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
