## PSA
#### A1) $\{ x_{n} \}_{n\geqslant 1}$ is a bounded real sequence. Prove that there is a subsequence $\{ x_{n_{i}} \}_{i\geqslant 1}$ such that $\lim_{ i \to \infty }x_{n_{i}}$ exists and 
$$
\lim_{ i \to \infty } x_{n_{i}}=\limsup_{ n \to \infty } {x_{n}}.
$$
Proof: Let $M=\limsup_{ n \to \infty }x_{n}<\infty$, then for any $\varepsilon=1 /i>0$ there exists $N\geqslant n_{i-1}$ such that $M\leqslant \sup_{k\geqslant N}{x_{k}}<M+\varepsilon$. Hence there exists $n_{i}\geqslant N$ such that $x_{n_{i}}\in(M-\varepsilon,M+\varepsilon)$. Take the sequence $\{ x_{n_{i}} \}_{i\geqslant 1}$ then $\lim_{ i \to \infty }x_{n_{i}}=\limsup_{ n \to \infty }x_{n}$. 
#### A2) $\{ x_{n} \}_{n\geqslant 1}$ is a real sequence. Prove that $\{ x_{n} \}_{n\geqslant 1}$ converges iff $\limsup_{ n \to \infty }x_{n}=\liminf_{ n \to \infty }x_{n}$.
Proof: Since a sub-sequence of a Cauchy sequence converge to the same value as the original sequence, ==> is trivial by A1). 
<== $\lim_{ n \to \infty }\sup_{k\geqslant n}{x_{k}}-\inf_{k\geqslant n}{x_{k}}=0$ implies $x_{n}$ is Cauchy, hence convergent.
#### A3) $\{ x^{(k)} \}_{k\geqslant 1}\subset \mathbb{R}^{n}$, where $x^{(k)}=(x_{1}^{(k)},x_{2}^{(k)},\cdots,x_{n}^{(k)})$. Then $\{ x^{(k)} \}_{k\geqslant 1}$ converges in $\mathbb{R}^{n}$ iff for any $i=1,2,\cdots,n$, $\{ x_{i}^{(k)} \}_{k\geqslant 1}$ converges.
Proof: Use Cauchy sequences and the fact that for $x=(x_{1},x_{2},\cdots,x_{n})$, 
$$
\max\{ \lvert x_{k} \rvert :1\leqslant k\leqslant n \}\leqslant\|x\|\leqslant \sum_{k=1}^{n}{\lvert x_{k} \rvert }.
$$
#### A4) Suppose $\{ z_{n} \}_{n\geqslant 1},\{ w_{n} \}_{n\geqslant 1}$ are two convergent complex sequences. Prove that if $\lim_{ n \to \infty }w_{n}\neq 0$, then the sequence $\{ z_{n} /w_{n} \}_{n\geqslant 1}$ converges.
Proof: Suppose $z=\lim_{ n \to \infty }z_{n}$ and $w=\lim_{ n \to \infty }w_{n}$, then
$$
\left\lvert  \frac{z_{n}}{w_{n}}-\frac{z}{w}  \right\rvert\leqslant \frac{\lvert w \rvert \cdot \lvert z_{n}-z \rvert }{\lvert w\cdot w_{n} \rvert }+\frac{\lvert z \rvert \cdot \lvert w_{n}-w \rvert }{\lvert w\cdot w_{n} \rvert }.
$$
Hence $\left\lvert  \frac{z_{n}}{w_{n}}-\frac{z}{w}  \right\rvert\to 0$, so $\lim_{ n \to \infty }z_{n} /w_{n}=z /w$.
#### A5) Suppose $\{ a_{n} \}_{n\geqslant 1}$ is a monotonically decreasing sequence of positive reals, and $\lim_{ n \to \infty }a_{n}=0$. Prove that the series
$$
a_{1}-a_{2}+a_{3}-a_{4}+\cdots+(-1)^{n-1}a_{n}+\cdots
$$
converges.
Proof: Suppose $a_{n}=a_{1}-\sum_{k=1}^{n}{b_{k}}$, then $b_{k}\geqslant 0$ and $\sum_{k=1}^{\infty}{b_{k}}=a_{1}$. The series
$$
\sum_{n=1}^{\infty}{(-1)^{n-1}a_{n}}=\sum_{n=1}^{\infty}{b_{2n}}<a_{1}
$$
clearly converges.
#### A6) $\{ a_{n} \}_{n\geqslant 1} \subset \mathbb{C}$. Prove that if $\sum_{k=1}^{\infty}{\lvert a_{k} \rvert}$ converges, then $\sum_{k=1}^{\infty}{a_{k}}$ converges.
Proof: $\sum_{k=1}^{\infty}{\lvert a_{k} \rvert}$ converges implies for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $p\geqslant 0$, $\sum_{k=n}^{n+p}{\lvert a_{k} \rvert}<\varepsilon$. Note that $\left\lvert  \sum_{k=n}^{n+p}{a_{k}}  \right\rvert\leqslant \sum_{k=n}^{n+p}{\lvert a_{k} \rvert}$, so $\sum_{k=1}^{\infty}{a_{k}}$ converges.
#### A7) Prove that we can define the exponential function on $\mathbb{C}$:
$$
\exp:\mathbb{C}\to \mathbb{C},\,z\mapsto \exp(z)=e^{z}=\sum_{n=0}^{\infty}{\frac{z^{n}}{n!}}.
$$
Proof: Use A6).
#### A8) $\{ a_{n} \}\subset \mathbb{C}$. Suppose for any $n\in \mathbb{N}$, $a_{n}\neq 0$. Let $P_{n}=a_{1}\cdot a_{2}\cdots a_{n}$. If $\lim_{ n \to \infty }P_{n}$ exists and is not $0$, we call $\prod_{n=1}^{\infty}{a_{n}}$ convergent and let $\prod_{n=1}^{\infty}{a_{n}}=\lim_{ n \to \infty }P_{n}$. Prove that $\prod_{n=1}^{\infty}{a_{n}}$ converges iff for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $p\geqslant 0$, 
$$
\lvert a_{n}\cdot a_{n+1}\cdots a_{n+p}-1 \rvert <\varepsilon.
$$
Proof: If $\lim_{ n \to \infty }P_{n}=P$ exists and is non-zero, then for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $\lvert P_{n}-P \rvert<\varepsilon P /4$ and $\lvert P_{n} \rvert>P /2$. Then for any $n\geqslant N$, $p\geqslant 0$, $\lvert P_{n+p} /P_{n}-1 \rvert<\varepsilon$.
If for any $\varepsilon>0$, there exists $N$ such that for any $n\geqslant N$, $p\geqslant 0$, $\lvert P_{n+p}-P_{n} \rvert<\varepsilon \lvert P_{n} \rvert$, then let $\varepsilon=1$ we infer that $P_{n}$ is bounded by some constant $M$. Hence the sequence $\{ P_{n} \}$ is Cauchy, and $P=\lim_{ n \to \infty }P_{n}$ cannot be zero, otherwise there is no such $N$ for $\varepsilon =1 /2$.
#### A9) Prove that $\exp(x)$ is monotonically increasing on $\mathbb{R}$.
Proof: For $x,y\in \mathbb{R}$, 
$$
\exp(x)\cdot \exp(y)=\sum_{n=0}^{\infty}{\frac{x^{n}}{n!}}\cdot \sum_{m=0}^{\infty}{\frac{y^{m}}{m!}}=\sum_{k=0}^{\infty}{\sum_{n+m=k}^{}{\frac{x^{n}y^{n}\binom{k}{n}}{k!}}}=\sum_{k=0}^{\infty}{\frac{(x+y)^{k}}{k!}}=\exp(x+y).
$$
$\exp(x)\cdot \exp(-x)=\exp(0)=1$ implies $\exp(x)>0$ for all $x\in \mathbb{R}$, so if $x>y$, $\exp(x) /\exp(y)=\exp(x-y)>1\implies \exp(x)>\exp(y)$.
#### A10) Suppose $P(x)$ and $Q(x)$ are polynomials of degree $n,m$, where $m>n$. Prove that
$$
\lim_{ n \to \infty } \frac{Q(n)}{P(n)}=0,\,\lim_{ n \to \infty } \frac{Q(n)}{e^{n}}=0.
$$
Proof: Suppose $P(x)=\sum_{k=0}^{n}{a_{k}x^{k}}$ and $Q(x)=\sum_{k=0}^{m}{b_{k}x^{k}}$, then there exists $N$ such that for any $x\geqslant N$, $\lvert P(x) \rvert>\lvert a_{n} \rvert x^{n} /2$, $\lvert Q(x) \rvert\leqslant \sum_{k=0}^{m}{\lvert b_{k} \rvert \cdot x^{m}}$, and $e^{x}\geqslant x^{m+1} /(m+1)!$, hence
$$
\left\lvert  \frac{Q(x)}{P(x)}  \right\rvert \leqslant \frac{2\sum_{k=0}^{m}{\lvert b_{k} \rvert }}{\lvert a_{n} \rvert }\cdot x^{m-n}\to 0,\, \left\lvert  \frac{Q(x)}{e^{x}}  \right\rvert \leqslant (m+1)!\sum_{k=0}^{m}{\lvert b_{k} \rvert }\cdot x^{-1}\to 0.
$$
## PSB: Calculation of Limits
#### B1)
$$
\lim_{ n \to \infty } \frac{n+10}{2n-1}=\frac{1}{2}.
$$

#### B2)

$$
\lim_{ n \to \infty } \frac{\sqrt{ n }+10}{2\sqrt{ n }-1}=\frac{1}{2}.
$$

#### B3)
$$
\lim_{ n \to \infty } 0.\underbrace{99\cdots 9}_{n\text{ times}}=1.
$$
#### B4)
$$
\lim_{ n \to \infty } \frac{1}{n(n+3)}=0.
$$
#### B5)
$$
\lim_{ n \to \infty } \frac{\cos n}{n}=0.
$$
#### B6) 
$$
\lim_{ n \to \infty } \frac{2^{n}}{n!}=0.
$$
#### B7)
$$
\lim_{ n \to \infty } \frac{n!}{n^{n}}=0.
$$
#### B8)
$$
\lim_{ n \to \infty } \sqrt{ n+10 }-\sqrt{ n+1 }=0.
$$
#### B9)
$$
\lim_{ n \to \infty } \frac{1+2+\cdots+n}{n^{2}}=\frac{1}{2}.
$$
#### B10)
$$
\lim_{ n \to \infty } \frac{1^{2}+2^{2}+\cdots+n^{2}}{n^{3}}=\frac{1}{3}.
$$
#### B11) $a>0$
$$
\lim_{ n \to \infty } a^{1/n}=1.
$$
#### B12) $a>1$
$$
\lim_{ n \to \infty } \frac{n^{10000}}{a^{n}}=0.
$$
#### B13)
$$
\lim_{ n \to \infty } \frac{2^{n}+n}{3^{n}+n^{2}}=0.
$$
#### B14)
$$
\lim_{ n \to \infty } \frac{3^{n}+2^{n}}{3^{n}+n^{2}}=1.
$$
#### B15)
$$
\lim_{ n \to \infty } \sqrt{ n }(\sqrt{ n+1 }-\sqrt{ n })=\frac{1}{2}.
$$
#### B16) same as B12)
#### B17)
$$
\lim_{ n \to \infty } \left( 1-\frac{1}{n} \right)^{n}=e^{-1}.
$$
#### B18)
$$
\lim_{ n \to \infty } \left( 1-\frac{1}{5n} \right)^{n+2019}=e^{-1/5}.
$$
#### B19)
$$
\lim_{ n \to \infty } (n^{3}+n^{2}+9n+1)^{1/n}=1.
$$
#### B20)
$$
\lim_{ n \to \infty } (2018^{n}+2019^{n})^{1/n}=2019.
$$
## PSC: Riemann Rearrangement Theorem
Suppose $\sum_{n=1}^{\infty}{a_{n}}$ is conditionally convergent, we will prove that for and $\alpha \in \mathbb{R}\cup \{ -\infty,\infty \}$, we can rearrange the sequence such that the new series sums to $\alpha$. Suppose $\varphi:\mathbb{Z}_{\geqslant 1}\to \mathbb{Z}_{\geqslant 1}$ is a bijection, let $b_{k}=a_{\varphi(k)}$, then the sequence $\{ b_{k} \}_{k\geqslant 1}$ is called a rearrangement of $\{ a_{n} \}_{n\geqslant 1}$. 
Let all non-negative terms of $\{ a_{n} \}_{n\geqslant 1}$, listed in the same order as in $\{ a_{n} \}$ be $c_{1},c_{2},\cdots$, and the negative terms be $d_{1},d_{2},\cdots$.
#### C1) Prove that $\lim_{ n \to \infty }c_{n}=\lim_{ n \to \infty }d_{n}=0$.
Proof: Since $\sum_{n=1}^{\infty}{a_{n}}$ is conditionally convergent, $c_{n},d_{n}$ both have infinite terms and $\lim_{ n \to \infty }a_{n}=0$. Therefore $\lim_{ n \to \infty }c_{n}=\lim_{ n \to \infty }d_{n}=0$.
#### C2) Prove that $\sum_{n=1}^{\infty}{c_{n}}=\sum_{n=1}^{\infty}{b_{n}}=\infty$.
Proof: Since $\sum_{n=1}^{\infty }{a_{n}}$ is not absolutely convergent, the two series can not be both convergent. If one converges and the other doesn’t, then $\sum_{n=1}^{\infty}{a_{n}}$ will diverge. Hence they both diverge.
#### C3) Prove that for any $\alpha \in \mathbb{R}$, there exists a rearrangement $\{ b_{n} \}$ of $\{ a_{n} \}$ such that $\sum_{k=1}^{\infty}{b_{k}}=\alpha$.
Proof: Suppose $\alpha\geqslant 0$. Inductively define the indices $u_{i}$ and $v_{i}$ as follows ($u_{0}=v_{0}=0$): For $i\geqslant 1$, let $u_{i}$ be the least index such that $u_{i}>u_{i-1}$ and 
$$
\sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i-1}}{d_{j}}\geqslant \alpha,
$$
and $v_{i}$ be the least index such that $v_{i}>v_{i-1}$ and
$$
\sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i}}{d_{j}}\leqslant \alpha.
$$
Let $\varphi$ be the permutation such that
$$
b_{1}=c_{1},b_{2}=c_{2},\cdots,b_{u_{1}}=c_{u_{1}},b_{u_{1}+1}=-d_{1},\cdots,b_{u_{1}+v_{1}}=-d_{u_{1}},\cdots
$$
Since $\sum_{n=1}^{\infty}{c_{n}}=\sum_{n=1}^{\infty}{d_{n}}=\infty$, $u_{i}$ and $v_{i}$ all exists, so $\varphi$ is indeed a bijection. By definition we know that
$$
\left\lvert  \sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i-1}}{d_{j}}-\alpha  \right\rvert \leqslant c_{u_{i}-1},
$$
and
$$
\left\lvert  \sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i}}{d_{j}}-\alpha  \right\rvert \leqslant d_{v_{i}-1}.
$$
Since $\lim_{ n \to \infty }c_{n}=\lim_{ n \to \infty }d_{n}=0$, the two values above both tend to $0$. Note that the series $\sum_{n=1}^{\infty}{b_{n}}$ is monotonic between these indices, hence $\sum_{n=1}^{\infty}{b_{n}}=\alpha$.
#### C4) Prove that there exists a rearrangement $\{ x_{k} \}$ of $\{ a_{n} \}$ such that $\sum_{k=1}^{\infty}{x_{k}}=\infty$.
Proof: Define $u_{i}$ and $v_{i}$ as in C3), such that
$$
\sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i-1}}{d_{j}}\geqslant i\geqslant \sum_{j=1}^{u_{i}}{c_{j}}-\sum_{j=1}^{v_{i}}{d_{j}}.
$$
Same as C3) define the sequence $x_{k}$ and clearly $\sum_{n=1}^{\infty }{x_{k}}=\infty$.
## PSD: Cesàro Sum
For a real sequence $\{ a_{n} \}_{n\geqslant 1}$, let $\sigma_{n}=\frac{a_{1}+a_{2}+\cdots+a_{n}}{n}$.
#### D1) Suppose $\lim_{ n \to \infty }a_{n}=a$, prove that $\lim_{ n \to \infty }\sigma_{n}=a$.
Proof: For any $n>0$,
$$
\lvert \sigma_{n}-a \rvert \leqslant \sum_{i=1}^{N}{\frac{\lvert a_{i}-a \rvert }{n}}+\sum_{i=N+1}^{n}{\frac{\lvert a_{i}-a \rvert }{n}}\leqslant \frac{MN}{n}+\varepsilon(N),
$$
where $M=\lvert a \rvert+\sup_{i\leqslant N}{\lvert a_{i} \rvert}$, and $\varepsilon(N)=\sup_{i>N}{\lvert a_{i}-a \rvert}$. By $\lim_{ n \to \infty }a_{n}=a$ we know $\varepsilon(N)\to 0$, hence $\lim_{ n \to \infty }\sigma_{n}=a$.
#### D2) Construct a divergent sequence $\{ a_{n} \}$ such that $\lim_{ n \to \infty }\sigma_{n}=0$.
Solution: $a_{n}=(-1)^{n-1}$, $\sigma_{n}\in[0,1 /n]$.
#### D3) Determine whether there exists $\{ a_{n} \}_{n\geqslant 1}$ such that for any $n\geqslant 1$, $a_{n}>0$ and $\limsup_{ n \to \infty }a_{n}=\infty$ but $\lim_{ n \to \infty }\sigma_{n}=0$.
Solution: Let
$$
a_{n}=\begin{cases}
2^{-n}, & n\neq 2^{k}, \\
k, & n=2^{k}.
\end{cases}
$$
Then $\limsup_{ n \to \infty }a_{n}=\infty$ and $a_{n}>0$, but for any $n$, suppose $n\in[2^{k-1},2^{k}]$, then
$$
\sigma_{n}\leqslant \frac{1}{n}\cdot\left( 1+\frac{k(k+1)}{2} \right)\leqslant \frac{k(k+1)}{2^{k-1}}.
$$
Hence $\lim_{ n \to \infty }\sigma_{n}=0$.
#### D4) For $k\geqslant 1$, denote $b_{k}=a_{k+1}-a_{k}$. Prove that for any $n\geqslant 2$, $a_{n}-\sigma_{n}=\sum_{k=1}^{n-1}{kb_{k} /n}$.
Proof: 
$$
\sum_{k=1}^{n-1}{kb_{k}}=\sum_{k=1 }^{n-1}{k(a_{k+1}-a_{k})}=(n-1)a_{n}-\sum_{k=1}^{n-1}{a_{k}}=n(a_{n}-\sigma_{n}).
$$
#### D5) Suppose $\lim_{ k \to \infty }kb_{k}=0$ and $\{ \sigma_{n} \}_{n\geqslant 1}$ converges. Prove that $\{ a_{n} \}_{n\geqslant 1}$ also converges.
Proof: By D1), $\lim_{ k \to \infty }kb_{k}=0$ implies
$$
\lim_{ n \to \infty } a_{n}-\sigma_{n}=\lim_{ n \to \infty } \frac{\sum_{k=1}^{n-1}{kb_{k}}}{n}=\lim_{ k \to \infty } kb_{k}=0.
$$
Therefore $\lim_{ n \to \infty }a_{n}=\lim_{ n \to \infty }\sigma_{n}$ exists.
#### D6) Suppose $\{ kb_{k} \}_{k\geqslant 1}$ is bounded, i.e. $b_{k}=O(k^{-1})$, and $\lim_{ n \to \infty }\sigma_{n}=\sigma$. Prove that $\lim_{ n \to \infty }a_{n}=\sigma$.
Proof: Note that for $m<n$,
$$
a_{n}-\sigma_{n}= \frac{m}{n-m}(\sigma_{n}-\sigma_{m})+\frac{1}{n-m}\sum_{k=m+1}^{n}{a_{n}-a_{k}}.
$$
Therefore since $\sigma_{n}$ is a Cauchy sequence, and $\lvert a_{n}-a_{k} \rvert\leqslant M(n-k) /k$, we can choose $n,m$ to show that $\lim_{ n \to \infty }a_{n}-\sigma_{n}=0$.
## PSE: Definition of $\sqrt[n]{ x }$ and $b^{x}$
#### E1) Given $n\in \mathbb{N}$ and $x>0$, prove that if $y_{1},y_{2}>0$ satisfy $y_{1}^{n}=x=y_{2}^{n}$, then $y_{1}=y_{2}$.
Proof: Note that $y_{1}^{n-1}+y_{1}^{n-2}y_{2}+\cdots+y_{2}^{n-1}>0$, and 
$$
0=y_{1}^{n}-y_{2}^{n}=(y_{1}-y_{2})\cdot(y_{1}^{n-1}+y_{1}^{n-2}y_{2}+\cdots+y_{2}^{n-1}).
$$
Hence $y_{1}=y_{2}$.
#### E2) Prove that if $x>0$, then the set $E(x)=\{ t\in \mathbb{R}: t^{n}<x \}$ is non-empty and has an upper-bound.
Proof: Note that $0\in E(x)$ and $E(x)$ has the upper-bound $\max\{ 1,x \}$.
#### E3) Prove that $y=\sup_{}{E(x)}$ satisfy $y^{n}=x$ and $y>0$.
Proof: $y=\sup_{}{E(x)}\implies y^{n}=x$ since $t^{n}$ is continuous on $\mathbb{R}$, and $y^{n}=x$ and $0\in E(x)$ implies $y>0$.
#### E4) Prove that the mapping $\sqrt[n]{ \cdot }:\mathbb{R}_{>0}\to \mathbb{R}_{>0},x\mapsto \sqrt[n]{ x }=y$ is well-defined. Denote $\sqrt[n]{ x }$ as $x^{1/n}$.
Proof: Use E3).
#### E5) Prove the $\sqrt[n]{ \cdot }:\mathbb{R}_{>0}\to \mathbb{R}_{>0}$ is a bijection.
Proof: By E1) it is injective, and $\sqrt[n]{ y^{n} }=y$ implies it is surjective. Hence it is a bijection.
#### E6) $a,b>0$, $n\in \mathbb{N}$, prove that $(ab)^{1/n}=a^{1/n}b^{1/n}$.
Proof: Use E5) and $(xy)^{n}=x^{n}y^{n}$.
#### E7) Suppose $b>1$, $m,n,p,q\in \mathbb{Z}$ where $n,q>0$. Let $r=\frac{m}{n}=\frac{p}{q}$, prove that
$$
(b^{m})^{1/n}=(b^{p})^{1/q}.
$$
Proof: Use $(b^{m})^{q}=(b^{p})^{n}$ and E5).
#### E8) Prove that for any $r\in \mathbb{Q}$, $r\mapsto b^{r}$ is well-defined.
Proof: For $r=p /q$, where $q>0,\gcd(p,q)=1$, let $b^{r}=(b^{p})^{1/q}$, then for any $r=m /n$, $b^{r}=(b^{m})^{1 /n}$. 
#### E9) Prove that for $r,s \in \mathbb{Q}$, $b^{r+s}=b^{r}b^{s}$.
Proof: Suppose $r=p /q,s=m /n$, where $n,q>0$, then
$$
b^{r+s}=b^{(mq+np)/nq}=(b^{mq}\cdot b^{np})^{1/nq}=(b^{m})^{1/n}\cdot(b^{p})^{1/q}=b^{r}b^{s}.
$$
#### E10) For $x\in \mathbb{R}$, let $B(x)=\{ b^{t}:t\in \mathbb{Q},t\leqslant x \}$. Prove that $B(x)$ is non-empty and has an upper-bound. Define $b^{x}=\sup_{}{B(x)}$. 
Proof: $B(x)$ is clearly non-empty and bounded by $b^{\lfloor x \rfloor+1}$.
#### E11) Prove that if $r\in \mathbb{Q}$, then
$$
b^{r}=\sup_{}{B(r)},\,\forall r\in \mathbb{Q}.
$$
Proof: $b^{r}\in B(r)$ and since $b^{t}$ is monotonically increasing, $b^{r}\geqslant \sup_{}{}B(r)$, hence $b^{r}=\sup_{}{B(r)}$.
#### E12) Prove that for any $x,y\in \mathbb{R}$, $b^{x+y}=b^{x}b^{y}$.
Proof: For any $b^{t}\in B(x)$, $b^{s}\in B(y)$, $t\leqslant x$ and $s\leqslant y$, so $t+s\leqslant x+y$ and $b^{t+s}\in B(x+y)$, hence $b^{x+y}\geqslant b^{x}b^{y}$. For any $b^{t}\in B(x+y)$, $t$ can be written in the form $t=u+v$ where $b^{u}\in B(x)$, $b^{v}\in B(y)$, so $b^{x+y}\leqslant b^{x}b^{y}$.
#### E13\*) Prove that when $b=e$, the function derived from E10) (denoted as $e^{x}$) is the same as $\exp(x)=\sum_{n=0}^{\infty}{x^{n} /n!}$.
Proof: From $\exp(1)=e$, $\exp(0)=1$ and $\exp(x+y)=\exp(x)\cdot \exp(y)$ we know that for $n\in \mathbb{Z}$, $\exp(n)=e^{n}$. For $r=p /q\in \mathbb{Q}$, 
$$
(e^{r})^{q}=e^{p}=\exp(p)=\exp(r)^{q},
$$
so by E5) $e^{r}=\exp(r)$. Since $\exp$ is continuous, for any $x\in \mathbb{R}$, $e^{x}=\exp(x)$.
## PSF
Given $\alpha>0$ and $x_{1}>\sqrt{ \alpha }$, we define inductively $\{ x_{n} \}_{n\geqslant 1}$:
$$
x_{n+1}=\frac{1}{2}\left( x_{n}+\frac{\alpha}{x_{n}} \right),n\geqslant 1.
$$
#### F1) Prove that $\{ x_{n} \}$ is monotonically decreasing and $\lim_{ n \to \infty }x_{n}=\sqrt{ \alpha }$ (which is defined in E).
Proof: Note that
$$
x_{n+1}-x_{n}=\frac{\alpha-x_{n}^{2}}{2x_{n}}.
$$
Hence we can prove by induction that $x_{n}>\sqrt{ \alpha }$ and $x_{n}>x_{n+1}$. $x_{n}$ is decreasing and bounded, so $\lim_{ n \to \infty }x_{n}=A$ exists, and $A=(A+\alpha /A) /2$. Therefore $\lim_{ n \to \infty }x_{n}=A=\sqrt{ \alpha }$.
#### F2) Let $\varepsilon_{n}=x_{n}-\sqrt{ \alpha }$. Prove that $\varepsilon_{n+1}=\frac{\varepsilon_{n}^{2}}{2x_{n}}<\frac{\varepsilon_{n}^{2}}{2\sqrt{ \alpha }}$.
Proof: 
$$
\frac{\varepsilon_{n}^{2}}{2x_{n}}=\frac{x_{n}^{2}+\alpha-2x_{n}\sqrt{ \alpha }}{2x_{n}}=\frac{1}{2}\left( x_{n}+\frac{\alpha}{x_{n}} \right)-\sqrt{ \alpha }=x_{n+1}-\sqrt{ \alpha }=\varepsilon_{n+1}.
$$
#### F3) Prove that if $\beta=2\sqrt{ \alpha }$, then $\varepsilon_{n+1}<\beta(\varepsilon_{1} /\beta)^{2^{n}}$.
Proof: $\varepsilon_{n+1} /\beta< (\varepsilon_{n} /\beta)^{2}$, hence $\varepsilon_{n+1}<\beta(\varepsilon_{1} /\beta)^{2^{n}}$.
#### F4) Let $\alpha=3,x_{1}=2$. Verify that $\varepsilon_{1} /\beta<0.1$, $\varepsilon_{5}<4\cdot 10^{-16}$, $\varepsilon_{6}<4\cdot 10^{-32}$.

Now we consider $\alpha>1$ and $y_{1}>\sqrt{ \alpha }$, and define 
$$
y_{n+1}=\frac{\alpha+y_{n}}{1+y_{n}}=y_{n}+\frac{\alpha-y_{n}^{2}}{1+y_{n}},n\geqslant 1
$$
#### F6) Prove that $\{ y_{2k-1} \}$ is monotonically decreasing.
Proof: Note that
$$
y_{n+2}=\frac{\alpha+y_{n+1}}{1+y_{n+1}}= \frac{\alpha+\frac{\alpha+y_{n}}{1+y_{n}}}{1+\frac{\alpha+y_{n}}{1+y_{n}}}=\frac{2\alpha+(\alpha+1)y_{n}}{(\alpha+1)+2y_{n}}，
$$
hence
$$
y_{n+2}-y_{n}= \frac{2(\alpha-y_{n}^{2})}{(\alpha+1)+2y_{n}}, \, y_{n+2}-\sqrt{ \alpha }= \frac{(\sqrt{ \alpha }-1)^{2}}{(\alpha+1)+2y_{n}}(y_{n}-\sqrt{ \alpha }).
$$
Therefore $y_{1}>\sqrt{ \alpha }$ implies $\sqrt{ \alpha }<y_{2n+1}<y_{2n-1}$.
#### F7) Prove that $\{ y_{2k} \}$ is monotonically increasing.
Proof: $y_{2}=(\alpha+y_{1}) /(1+y_{1})<\sqrt{ \alpha }$, so same as F6), $y_{2k}>y_{2k-2}$ and $y_{2k}<\sqrt{ \alpha }$.
#### F8) Prove that $\lim_{ n \to \infty }y_{n}=\sqrt{ \alpha }$.
Proof: $\{ y_{2n-1} \}$ is decreasing and bounded by $\sqrt{ \alpha }$, so $\lim_{ n \to \infty }y_{2n-1}=A$ exists and $A=(2\alpha+(\alpha+1)A) /((\alpha+1) +2A)$, so $A=\sqrt{ \alpha }$. Likewise $\lim_{ n \to \infty }y_{2n}=\sqrt{ \alpha }$, hence $\lim_{ n \to \infty }y_{n}=\sqrt{ \alpha }$.
#### F9) Compare the rates of convergence between $x_{n}$ and $y_{n}$.
Solution: Let $\delta_{n}=\lvert y_{n}-\sqrt{ \alpha } \rvert$, then $\delta_{n}\sim c^{n}\delta_{1}$, hence $x_{n}$ converges faster then $y_{n}$.
## PSG: Banach-Mazur Game
Alice and Bob are playing a game: Alice selects a closed interval $W_{1}$ first, then Bob choose a subinterval $L_{1}$ of $W_{1}$, such that the length of $L_{1}$ is less than half of the length of $W_{1}$; they take turns choosing intervals $W_{n}$ and $L_{n}$, such that $L_{n}\subset W_{n}\subset L_{n-1}$ and $\lvert L_{n} \rvert< \lvert W_{n} \rvert /2<\lvert L_{n-1} \rvert /4$, obtaining 
$$
W_{1}\supset L_{1} \supset W_{2} \supset L_{2} \supset\cdots \supset W_{n}\supset L_{n} \supset \cdots
$$
Alice and Bob find that 
$$
\bigcap_{n\geqslant 1}W_{n}=\bigcap_{n\geqslant 1}L_{n}=\{ x \}
$$
is a real number. If $x\in \mathbb{Q}$ then Alice wins, otherwise Bob wins. Who has a winning strategy?
**Solution:** Bob will win. We show that if $\mathbb{Q}$ is replaced with any set $M$ that is of first category, Bob can still win.
$M$ can be written as the union of a countable number of nowhere dense sets. Then in every move of Bob, he can choose $L_{n}$ such that it does not intersect the $n$th such nowhere dense set. Hence the final number $x$ is not in $M$.
## Problem H
Consider the set $\mathcal{P}=\{ \{ p_{n} \}_{n\geqslant 1}:p_{n}\in \mathbb{Z},p_{1}\geqslant 2,p_{n+1}\geqslant p_{n}^{2} \}$.
#### H1) For any $p=\{ p_{n} \}_{n\geqslant 1}\in \mathcal{P}$, define the sequence
$$
a_{n}=\prod_{k=1}^{n}{\left( 1+\frac{1}{p_{k}} \right)}.
$$
Prove that $f(p)=\lim_{ n \to \infty }a_{n}$ exists and $f(p)\in(1,2]$.
Proof: Note that $p_{n}\geqslant p_{1}^{2^{n-1}}$, then
$$
a_{n}\leqslant \prod_{k=1}^{n}{\left( 1+\frac{1}{p_{1}^{2^{k-1}}} \right)=\frac{1-p_{1}^{-2^{n}}}{1-p_{1}^{-1}}}< \frac{1}{1-p_{1}^{-1}}.
$$
So the sequence $\{ a_{n} \}$ is monotonic and bounded, hence $f(p)=\lim_{ n \to \infty }a_{n}$ exists. Since $a_{n}\in (1+1 /p_{1},\frac{1}{1-p_{1}^{-1}})$, we obtain $f(p)\in [1+1 /p_{1},\frac{1}{1-p_{1}^{-1}}]\subset(1,2]$.
#### H2) Prove that $f:\mathcal{P}\to(1,2]$ is a bijection.
Proof: For any $p=\{ p_{n} \},q=\{ q_{n} \}\in \mathcal{P}$, if $p\neq q$, take the least $k$ such that $p_{k}\neq q_{k}$ and suppose $q_{k}\geqslant p_{k}+1$, then for any $n>k$,
$$
\begin{align}
a_{n}&=\prod_{t=1}^{n}{\left( 1+\frac{1}{p_{t}} \right)}\geqslant \prod_{t=1}^{k}{\left( 1+\frac{1}{p_{t}} \right)}\cdot \left( 1+\frac{1}{p_{k+1}} \right) \\
b_{n}&=\prod_{t=1}^{n}{\left( 1+\frac{1}{q_{t}} \right)}\leqslant \prod_{i=1}^{k-1}{\left( 1+\frac{1}{p_{t}} \right)}\cdot \frac{1-q_{k}^{-2^{n-k}}}{1-q_{k}^{-1}}
\end{align}
$$
Therefore
$$
b_{n}\leqslant \prod_{t=1}^{k}{\left( 1+\frac{1}{p_{t}} \right)}\leqslant (1+C)a_{n}
$$
for all $n>k$ where $C=p_{k+1}^{-1}>0$, hence $f(q)\leqslant (1+C)f(p)<f(p)$, hence $f$ is injective.
For any $x\in(1,2]$, inductively define $p=\{ p_{n} \}\in \mathcal{P}$ as follows: For any $n\geqslant 1$, Let $t$ be the least integer such that $a_{n}\leqslant x$ and $t\geqslant p_{n-1}^{2}$ (clearly such $t$ exists). If $a_{n}=x$, then let $p_{n}=t-1$, $p_{m}=p_{n}^{2^{m-n}}$ for all $m>n$, then $f(p)=x$. Otherwise let $p_{n}=t$. Note that for any $n$ such that $p_{n}>p_{n-1}^{2}$, 
$$
\lvert x-a_{n} \rvert \leqslant 2^{-2^{n}},
$$
therefore $f(p)=x$, and $f$ is surjective.
#### H3) Prove that $\mathcal{P}$ is uncountable.
Proof: By H2) and the fact that $(1,2]$ is uncountable.
## Problem I: Binary Expansion
Consider the set $\mathcal{S}=\{ \{ s_{n} \}_{n\geqslant 0}:s_{n}\in \{ -1,1 \} \}$.
#### I1) For any $s=\{ s_{n} \}_{n\geqslant 0}\in \mathcal{S}$, define the sequence
$$
c_{n}=\sum_{k=0}^{n}{\frac{s_{0}s_{1}\cdots s_{k}}{2^{k}}}.
$$
Prove that $h(s)=\lim_{ n \to \infty }c_{n}$ exists and $h(s)\in[-2,2]$.
Proof: $h(s)$ exists since $c_{n}$ is clearly a Cauchy sequence, and $c_{n}\in[-2,2]$ hence $h(s)\in[-2,2]$.
#### I2) Prove that $h:\mathcal{S}\to[-2,2]$ is surjective. Determine whether is is injective.
Proof: Consider any $x\in[-2,2]$, we can choose $s_{n}$ such that $\lvert c_{n}-x \rvert\leqslant 2^{-n}$. Hence there exists $s=\{ s_{n} \}\in \mathcal{S}$ such that $h(s)=\lim_{ n \to \infty }c_{n}=x$, so $h$ is surjective.
Consider $s=\{ 1,-1,1,1,1,\cdots \}\in \mathcal{S}$ and $s^{\prime}=\{ -1,-1,1,1,\cdots \}$, then $h(s)=h(s^{\prime})=0$, hence $h$ is not injective.
#### I3) For $s=\{ s_{n} \}_{n\geqslant 0}\in \mathcal{S}$, prove that
$$
2\sin\left(  \frac{\pi}{4}c_{n} \right)=s_{0}\sqrt{ 2+s_{1}\sqrt{ 2+\cdots+s_{n}\sqrt{ 2 } } }.
$$
Proof: We prove by induction on $n$. The base $n=0$ is trivial. If the statement holds for $n-1$, then let $s^{\prime}=\{ s_{n+1} \}_{n\geqslant 0}\in \mathcal{S}$, we have
$$
2\sin \left( \frac{\pi}{4}c_{n} \right)=2\sin s_{0}\left( \frac{\pi}{4}+\frac{1}{2}\cdot \frac{\pi}{4}c_{n-1}^{\prime} \right)=s_{0} \sqrt{ 2+\sin\left( \frac{\pi}{4}c_{n-1}^{\prime} \right) }.
$$
By the induction hypothesis, the statement also holds for $n$.
#### I4) Calculate the limit
$$
\lim_{ n \to \infty } \sqrt{ 2+\sqrt{ 2+\cdots+\sqrt{ 2 } } }
$$
Solution: Consider $s=\{ s_{n}=1 \}_{n\geqslant 0} \in \mathcal{S}$, then $c_{n}=2-2^{n}$ hence $\lim_{ n \to \infty }2\sin(\pi c_{n} /4)=2$.
## Problem J
#### Problem: $k\geqslant 2$ is a given integer. Define the sequence $\{ a_{n} \}$ as follows:
$$
a_{0}>0 \text{ already given},a_{n+1}=a_{n}+a_{n}^{-1/k},n\geqslant 0.
$$
Calculate $\lim_{ n \to \infty }a_{n}^{k+1}/n^k$.
Solution: It is easy to see that $a_{n}\to \infty$, hence
$$
\begin{align}
\lim_{ n \to \infty } \frac{a_{n}^{\frac{k+1}{k}}}{n} &= \lim_{ n \to \infty } a_{n+1}^{\frac{k+1}{k}} - a_{n}^{\frac{k+1}{k}}=\lim_{ n \to \infty } a_{n}^{\frac{k+1}{k}} \left({\left( 1+\frac{a_{n+1}-a_{n}}{a_{n}} \right) ^{\frac{k+1}{k}}-1} \right) \\
&= \lim_{ n \to \infty } a_{n}^{\frac{k+1}{k}} \left( \left( 1+a_{n}^{-\frac{k+1}{k}} \right) ^{\frac{k+1}{k}}-1 \right)  = \frac{k+1}{k}.
\end{align}
$$
Therefore 
$$
\lim_{ n \to \infty } \frac{a_{n}^{k+1}}{n^k}= \left( 1+\frac{1}{k} \right)^k.
$$
