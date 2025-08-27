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

