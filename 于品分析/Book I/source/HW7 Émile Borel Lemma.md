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