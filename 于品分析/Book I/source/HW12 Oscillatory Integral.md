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

