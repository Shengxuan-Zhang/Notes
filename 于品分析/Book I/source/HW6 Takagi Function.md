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
