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
