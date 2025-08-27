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

