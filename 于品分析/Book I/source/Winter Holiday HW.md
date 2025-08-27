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
## 
