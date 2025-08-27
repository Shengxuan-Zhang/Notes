## PSA
Assume $I=[a,b]\subset \mathbb{R}$, $V$ is a normed linear space.
#### A1) $\sigma_{1},\sigma_{2}\in \mathcal{S}$ are two partitions. Prove that for any $\varepsilon>0$, there exists a partition $\sigma$ such that $\sigma \prec \sigma_{1},\sigma\prec\sigma_{2}$ and $\lvert \sigma \rvert<\varepsilon$.
Proof: Take $n>1 /\varepsilon$, and let
$$
\sigma=\sigma_{1}\cup\sigma_{2}\cup \left\{  \frac{k}{n}a+\frac{n-k}{n}b:0\leqslant k\leqslant n  \right\}.
$$
#### A2) Consider the space of simple functions $\mathcal{E}(I)$ with range $V$. Prove that it is a linear space on $\mathbb{R}$, and the integration operator $\int_{a}^{b} : \mathcal{E}(I)\to V$ is well-defined and is linear. Use this to define Riemann integrable functions with range $V$.
Proof: For any simple function $f=\sum_{i=1}^{n}{c_{i}\mathbf{1}_{A_{i}}}$ (where $A_{i}$ are disjoint), let 
$$
\int_{a}^{b} f=\sum_{i=1}^{n}{c_{i}\mu(A_{i})}
$$
For any function $f:I\to V$, partition $\mathcal{C}=\{ x_{0},x_{1},\cdots,x_{n} \}$ and $\xi_{i}\in[x_{i-1},x_{i}]$, define 
$$
\mathcal{R}(f;\mathcal{C},\xi)=\sum_{k=0}^{n}{f(\xi_{i})(x_{i}-x_{i-1})}.
$$
Then $f$ is Riemann integrable iff $\lim_{ \lvert \mathcal{C} \rvert \to 0 }\mathcal{R}(f;\mathcal{C},\xi)$ exists.
#### A3) Suppose $f:I\to \mathbb{R}^n$ and $f_{i}$ be the components of $f$, then $f\in \mathcal{R}(I)$ iff for every $i$, $f_{i} \in \mathcal{R}(I)$. 
Proof: Note that
$$
\max \{ \lvert x_{k} \rvert  \} \leqslant\lvert (x_{1},\cdots,x_{n}) \rvert_{\mathbb{R}^n}\leqslant \lvert x_{1} \rvert +\cdots+\lvert x_{n} \rvert .
$$
Hence the limit $\lvert \underline{S}(f;\sigma)-\overline{S}(f;\sigma) \rvert=0$ iff the components of $f$ are all Riemenn integrable.
#### A4) Assume $a<c<b$, then for any $f\in \mathcal{R}(I)$, $f\vert_{[a,c]}$ and $f\vert_{[c,b]}$ are both Riemann integrable, and
$$
\int_{a}^b f= \int_{a}^{c} f+ \int_{c}^{b} f.
$$
Proof: They are both obviously Riemann integrable, and for any partition $\sigma$, let $\sigma^{\prime}=\sigma\cup \{ c \}=\sigma_{1}\cup\sigma_{2}$, where $\sigma_{1}$ and $\sigma_{2}$ are partitions of $[a,c]$ and $[c,b]$, then 
$$
\underline{S}(f;\sigma)\leqslant \underline{S}(f;\sigma^{\prime})=\underline{S}(f\vert_{[a,c]};\sigma_{1})+\underline{S}(f\vert_{[c,b]};\sigma_{2}),
$$
and the other side is the same. Hence
$$
\int_{a}^{b} f=\int_{a}^{c}f+\int_{c}^{b}f.
$$
#### A5) Prove that for any two partition $\sigma$ and $\sigma^{\prime}$, $\underline{S}(f;\sigma)\leqslant \overline{S}(f;\sigma^{\prime})$. Use this to prove that if $f\in \mathcal{R}(I)$, then $\lim_{ \lvert \sigma \rvert \to 0 }\lvert \underline{S}(f;\sigma)-\overline{S}(f;\sigma) \rvert=0$.
Proof: Let $\sigma^{\prime\prime}=\sigma\cup\sigma^{\prime}$, then
$$
\underline{S}(f;\sigma)\leqslant \underline{S}(f;\sigma^{\prime\prime})\leqslant \overline{S}(f;\sigma^{\prime\prime})\leqslant \overline{S}(f;\sigma^{\prime}).
$$
If $f\in \mathcal{R}(I)$, then $\sup_{\sigma}{\underline{S}(f;\sigma)}=\inf_{\sigma}\overline{S}(f;\sigma)$ hence 
$$
\lim_{ \lvert \sigma \rvert  \to 0 } \lvert \underline{S}(f;\sigma)-\overline{S}(f;\sigma) \rvert =0.
$$
#### A6) $f\in \mathcal{R}(I)$. Prove that if we change the value of $f$ at a finite number of points to $g$, then $g$ is Riemann integrable and $\int_{I}g=\int_{I}f$.
Proof: We can assume that $f$ and $g$ differ only at the point $c\in (a,b)$. Let $M=\sup_{x\in I}{\lvert f(x) \rvert}$. For any $\varepsilon>0$, and any partition $\sigma$, let $\sigma^{\prime}=\sigma\cup \{ c-\varepsilon,c+\varepsilon \}$, then $\lvert \underline{S}(f;\sigma^{\prime})-\underline{S}(f;\sigma) \rvert\leqslant 4\varepsilon M\to 0$.
#### A7) $f\in C([a,b])$. Assume for any $x\in I$, $f(x)\geqslant 0$ and there exists $x_{0}\in I$ such that $f(x_{0})>0$. Prove that $\int_{a}^{b}f>0$.
Proof: Since $f$ is continuous and $f(x_{0})>0$, there is an $\varepsilon>0$ such that for all $y\in(x_{0}-\varepsilon,x_{0}+\varepsilon)$, $f(y)>0$. Hence for any partition $\sigma=\{ x_{0},x_{1},\cdots,x_{n} \}$ such that $\lvert \sigma \rvert<\varepsilon /2$, there is a $k\in \{ 1,\cdots,n \}$ such that $(x_{k-1},x_{k})\subset (x_{0}-\varepsilon,x_{0}+\varepsilon)$. Hence $\mathcal{R}(f;\sigma,\xi)>0$ whenever $\lvert \sigma \rvert< \varepsilon /2$, so $\int_{a}^{b} f(x) \, \mathrm{d}x>0$.
#### A8) Suppose $f,g \in C^1(I)$, then
$$
\int f^{\prime}\cdot g=f\cdot g - \int f\cdot g^{\prime}.
$$
Proof: 
$$
d(f\cdot g)=df\cdot g+f\cdot dg.
$$
#### A9) Suppose $\Phi:\mathbb{R}\to \mathbb{R}$ is differentiable, $f$ is a continuous function, then
$$
\int (f\circ \Phi)\Phi^{\prime}=\int f.
$$
Proof:
$$
(f(\Phi(x)))^{\prime}=f^{\prime}(\Phi(x))\Phi^{\prime}(x).
$$
## PSB: Calculating Integrals
#### (1)
$$
\begin{align}
\int \frac{x^5}{1+x} \, \mathrm{d}x &= \int_{}^{} x^4-x^3+x^{2}-x+1-\frac{1}{1+x} \, \mathrm{d}x \\
&= \frac{x^5}{5}-\frac{x^4}{4}+\frac{x^3}{3}-\frac{x^{2}}{2}+x-\log(x+1)+C.
\end{align}
$$
#### (2)
$$
\int_{}^{} \sqrt{ x\sqrt{ x\sqrt{ x } } } \, \mathrm{d}x =\int_{}^{} x^{7/8} \, \mathrm{d}x =\frac{8}{15}x^{15/8}.
$$
#### (3)
$$
\begin{align}
\int_{}^{} \left( \frac{1+x}{1-x}+\frac{1-x}{1+x} \right) \, \mathrm{d}x & = \int_{}^{} \left( \frac{2}{1-x}+\frac{2}{1+x}-2 \right) \, \mathrm{d}x  \\
&= -2x+2\log \frac{1+x}{1-x}+C.
\end{align}
$$
#### (4)
$$
\int_{}^{} \frac{e^{3x}+1}{1+e^x} \, \mathrm{d}x =\int_{}^{} 1-e^x+e^{2x} \, \mathrm{d}x =x-e^x+\frac{e^{2x}}{2}+C.
$$
#### (5)
$$
\int_{}^{} \sqrt{ 1-\sin(2x) } \, \mathrm{d}x =\int_{}^{} \sqrt{ 2 }\sin\left( x-\frac{\pi}{4} \right) \, \mathrm{d}x =-\sqrt{ 2 }\cos\left( x-\frac{\pi}{4} \right)+C.
$$
#### (6)
$$
\int_{}^{} \frac{\cos(2x)}{\cos x-\sin x} \, \mathrm{d}x =\int_{}^{} \cos x+\sin x \, \mathrm{d}x =\sin x-\cos x+C.
$$
#### (7)
$$
\int_{}^{} \tan ^{2}x \, \mathrm{d}x =-x+\tan x+C.
$$
#### (8)
$$
\int_{}^{} \lvert x \rvert  \, \mathrm{d}x=\frac{x\lvert x \rvert }{2}+C.
$$
#### (9)
$$
\int_{} e^{-\lvert x \rvert } \, \mathrm{d}x =-\mathrm{sgn}(x)e^{-\lvert x \rvert }+C.
$$
#### (10)
$$
\int_{} \frac{x^{2}}{(1-x)^{2018}} \, \mathrm{d}x =\frac{1}{2017(1-x)^{2017}}-\frac{1}{1013(1-x)^{2016}}+\frac{1}{2015(1-x)^{2015}}.
$$
#### (11)
$$
\int_{}^{} \lvert x-1 \rvert  \, \mathrm{d}x = \frac{(x-1)\lvert x-1 \rvert }{2}+C.
$$
#### (12)
$$
\int_{}^{} \frac{1}{\sqrt{ b^{2}+x^{2} }} \, \mathrm{d}x =\frac{1}{b} \log \frac{1+\tan \frac{\arctan \frac{x}{b}}{2}}{1-\tan \frac{\arctan \frac{x}{b}}{2}}+C.
$$
#### (13)
Let $x=t^{2}$, then
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{\sqrt{ x }(1+x)}=2\arctan \sqrt{ x }+C.
$$
#### (14)
$$
\int_{}^{} \frac{x^4}{(1-x^5)^4} \, \mathrm{d}x =\frac{1}{5}\int_{}^{}  \, \frac{\mathrm{d}x^5}{(1-x^5)^4}=\frac{1}{15(1-x^5)^3}+C. 
$$
#### (15)
$$
\int_{}^{} \left( \frac{1}{\sqrt{ 3-x^{2} }}+\frac{1}{1-3x^{2}} \right) \, \mathrm{d}x = \arcsin \frac{x}{\sqrt{ 3 }}+\frac{1}{2\sqrt{ 3 }}\log \frac{1+\sqrt{ 3 }x}{1-\sqrt{ 3 }x}+C.
$$
#### (16) 
$$
\int_{}^{} \frac{2x-3}{x^{2}-3x+8} \, \mathrm{d}x= \log(x^{2}-3x+8)+C. 
$$
#### (17)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{\sin ^{2}\left( 2x+\frac{\pi}{4} \right)} = \frac{\tan(2x- \pi /4)}{2}+C.
$$
#### (18)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{1+\cos x}=\tan \frac{x}{2}+C. 
$$
#### (19) 
$$
\int_{}^{} \frac{1}{x^{2}} \sin \frac{1}{x} \, \mathrm{d}x =\cos \frac{1}{x}+C.
$$
#### (20)
$$
\int_{}^{} \cos ^5x \, \mathrm{d}x = \frac{\sin^5x}{5}-\frac{2\sin^3x}{3}+\sin x+C.
$$
#### (21) 
$$
\int_{}^{} \cos(ax)\sin(bx) \, \mathrm{d}x =\frac{\cos(a-b)x}{2(a-b)}-\frac{\cos(a+b)x}{2(a+b)}+C.
$$
#### (22)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{a\cos x+b\sin x} =\frac{2}{\sqrt{ a^{2}+b^{2} }} \tanh^{-1} \frac{a\tan (x /2)-b}{\sqrt{ a^{2}+b^{2} }}+C.
$$
#### (23)
$$
\int \frac{\sin(2x)}{a^{2}\cos ^{2}x+b^{2}\sin ^{2}x} \, \mathrm{d}x = \frac{\log((b^{2}-a^{2})\sin ^{2}x+a^{2})}{b^{2}-a^{2}}+C.
$$
#### (24)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{2-\sin ^{2}x}= \frac{1}{\sqrt{ 2 }} \arctan\left( \frac{\tan x}{\sqrt{ 2 }} \right)+C.
$$
#### (25)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{x\ln x\ln \ln x}=\ln \ln \ln x+C. 
$$
#### (26)
$$
\int_{}^{} \frac{\log x}{x\sqrt{ 1+\log x }} \, \mathrm{d}x = \frac{2}{3} (1+\log x)^{3/2}-2\sqrt{ 1+\log x }+C.
$$
#### (27)
$$
\int_{}^{} \frac{\cos x+\sin x}{(\sin x-\cos x)^{1/3}} \, \mathrm{d}x =\frac{3}{2}(\sin x-\cos x)^{2/3}+C.
$$
#### (28)
$$
\int_{}^{} e^{\sqrt{ x }} \, \mathrm{d}x =2\sqrt{ x }e^{\sqrt{ x }}-2e^{\sqrt{ x }}+C.
$$
#### (29)
$$
\int_{}^{} \frac{x^{n/2}}{1+x^{n+2}} \, \mathrm{d}x =\frac{2}{n+2}\arctan x^{n/2+1}+C.
$$
#### (30)
$$
\int_{}^{} \frac{\sqrt{ x }}{1-x^{1/3}} \, \mathrm{d}x = 6\arctan x^{1/6}-\frac{6}{5}x^{5/6}-\frac{6}{7}x^{7/6}-2x^{1/2}-6x^{1/6}+C.
$$
#### (31)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{(x^{2}+a^{2})^{3/2}}= \frac{x}{a^{2}\sqrt{ a^{2}+x^{2} }}+C.
$$
#### (32)
$$
\int_{}^{}  \, \frac{\mathrm{d}x}{\cos^4x}= \frac{\sin x }{2\cos^3x}+\frac{\sin(3x)}{6\cos^3x}+C. 
$$
#### (33)
$$
\int \arcsin ^{2}x \, \mathrm{d}x =x\arcsin ^{2}x+2\sqrt{ 1-x^{2} }\arcsin x-2x+C.
$$
#### (34)
$$
\int_{}^{} x\arcsin x \, \mathrm{d}x = \frac{x\sqrt{ 1-x^{2} }}{4}-\frac{1}{4}\arcsin x (1-2x^{2})+C.
$$
#### (35)
$$
\int x\arctan x= \frac{1}{2} (x^{2}+1)\arctan x-\frac{1}{2}x+C.
$$
#### (36)
$$
\int \frac{\arctan x}{x^{2}}= \log x- \frac{\arctan x}{x}-\frac{1}{2}\log(1+x^{2})+C.
$$
#### (37)
$$
\int x^{2}\sin x =-x^{2}\cos x+2x\sin x+2\cos x+C.
$$
#### (38)
$$
\int \frac{x}{\cos ^{2}x} = x\tan x+\log \cos x +C.
$$
#### (39)
$$
\int \log(x+\sqrt{ 1+x^{2} }) =x\log(x+\sqrt{ 1+x^{2} })-\sqrt{ 1+x^{2} }+C.
$$
#### (40)
$$
\int \sin \log x= \frac{x}{2}(\sin \log x-\cos \log x)+C.
$$
#### (41)
$$
\int \sqrt{ x^{2}+a^{2} } =\frac{1}{2}x\sqrt{ a^{2}+x^{2} } +\frac{a^{2}}{4} \log \frac{x+\sqrt{ a^{2}+x^{2} }}{\sqrt{ a^{2}+x^{2} }-x^{2}}+C.
$$
#### (42)
$$
\int \frac{x^{2}}{\sqrt{ x^{2}-a^{2} }}= \frac{1}{2}x\sqrt{ x^{2}-a^{2} }+\frac{a^{2}}{4} \log \frac{x+\sqrt{ x^{2}-a^{2} }}{x-\sqrt{ x^{2}-a^{2} }}+C.
$$
#### (43)
$$
\int \frac{x\log(x+\sqrt{ 1+x^{2} })}{\sqrt{ 1+x^{2} }} = \sqrt{ x^{2}+1} \log(x+\sqrt{ 1+x^{2} })-x+C.
$$
Let $u=\sqrt{ x^{2}+1 }+x$ then $\mathrm{d}u /\mathrm{d}x=1+x /\sqrt{ 1+x^{2} }$, so it becomes
$$
\int_{}^{} \frac{(u^{2}-1)\log{u}}{2u^{2}} \, \mathrm{d}x =-\frac{u}{2}+\frac{1}{2u}+\frac{1}{2}u\log u+\frac{\log u}{2u}+C.
$$
#### (44)
$$
\int \frac{1}{\sqrt{ x^{2}+a^{2} }}= \log \frac{\sin t+\cos t}{\sin t-\cos t}+C= \tanh^{-1} \frac{x}{\sqrt{ x^{2}+a^{2} }}+C.
$$
where $t=\frac{1}{2}\arctan (x /a)$.
#### (45)
$$
\int \frac{xe^x}{(1+x)^{2}} =\frac{e^x}{1+x}+C.
$$
#### (46)
$$
\int \arctan(1+\sqrt{ x }) = x\arctan(1+\sqrt{ x })-\sqrt{ x }+\log(2+2\sqrt{ x }+x)+C.
$$
#### (47)
$$
\int \left( 1-\frac{2}{x} \right)^{2}e^x = e^x -\frac{4e^x}{x}+C.
$$
since $\int_{}^{} e^x /x^{2} \, \mathrm{d}x=-e^x /x+\int_{}^{} e^x /x \, \mathrm{d}x$.
#### (48)
$$
\int \sqrt{ 2+\tan ^{2}x } =\theta+ \log \frac{\sin\theta+\cos \theta}{\sin\theta-\cos\theta}+C.
$$
where $\theta=\arcsin (\sin x /\sqrt{ 2 })$.
#### (49)
$$
\int \frac{1}{1+x^3} = -\frac{1}{6}\log(x^{2}-x+1)+\frac{1}{3}\log(x+1)+\frac{1}{\sqrt{ 3 }}\arctan \frac{2x-1}{\sqrt{ 3 }}+C.
$$
#### (50)
$$
\int \frac{x^7}{x^4+2} = \frac{x^4}{4}-\frac{1}{2}\log(2+x^4).
$$
#### (51)
$$
\int \frac{2x^{2}+1}{(x+3)(x-1)(x-4)} = -\frac{1}{4}\log(1-x)+\frac{11}{7}\log(4-x)+\frac{19}{28}\log(x+3)+C.
$$
#### (52)
$$
\int \frac{1+x^{2}}{1+x^4} = \frac{1}{\sqrt{ 2 }}(\arctan(\sqrt{ 2 }x+1)-\arctan(1-\sqrt{ 2 }x))+C.
$$
Note that 
$$
\frac{1+x^{2}}{1+x^{4}}=\frac{1}{2(x^{2}+\sqrt{ 2 }x+1)}-\frac{1}{2(-x^{2}+\sqrt{ 2 }x+1)}.
$$
#### (53)
Let $x=y^6-1$ then
$$
\begin{align}
& \int \frac{x}{\sqrt{ x+1 }+(x+1)^{1/3}} =\int (y^3-1)(1-y+y^{2})6y^3\mathrm{d}y \\
= & \frac{2x\sqrt{ x+1 }}{3}- \frac{3x(x+1)^{1/3}}{4}+\frac{6x(x+1)^{1/6}}{7}-x+\frac{6}{5}(x+1)^{5/6} \\
& -\frac{3}{2}(x+1)^{2/3}+\frac{2\sqrt{ x+1 }}{3}-\frac{3(x+1)^{1/3}}{4}+ \frac{6(x+1)^{1/6}}{7}+C.
\end{align}
$$
#### (54)
Let $x=y^{2}$, then 
$$
\int \frac{1}{\sqrt{ x+x^{2} }} = \int \frac{\mathrm{d}y}{\sqrt{ y^{2}+1 }}=\tanh^{-1}\left( \sqrt{ \frac{x}{x+1} } \right)+C.
$$
#### (55)
The Poisson kernel
$$
\int \frac{1-r^{2}}{1-2r\cos x+r^{2}}= 2\arctan (\frac{1+r}{1-r}\tan \frac{x}{2})+C.
$$
#### (56)
Let $x=\tan\theta$ then
$$
\int \frac{1}{x\sqrt{ 1+x^{2} }}= \int \frac{d\theta}{\sin\theta}=\log \tan \frac{\arctan x}{2}+C.
$$
#### (57)
Let $t=\tan x /2$ then
$$
\int \frac{1}{5-3\cos x} =\frac{1}{2} \arctan \left( 2\tan \frac{x}{2} \right)+C.
$$
#### (58)
Let $t=\tan x$, then
$$
\int \frac{1}{2+\sin ^{2}x} = \frac{1}{\sqrt{ 6 }} \arctan (\sqrt{ \frac{3}{2} }\tan x)+C.
$$
#### (59)
$$
\int \frac{\sin^3x}{\cos^4x}= \frac{1}{3\cos^3x}-\frac{1}{\cos x}+C.
$$
#### (60)
Let $t=\cos x$ then
$$
\int \frac{1}{\sin x\cos^4x} = -\int t^{-4}+t^{-2}+\frac{1}{1-t^{2}}=\frac{1}{3\cos^3x}+\frac{1}{\cos x}+\frac{1}{2}\log \frac{1+\cos x}{1-\cos x}+C.
$$

## Problem W: Stone-Weierstraß Theorem
### Part 1: Approximating $\lvert x \rvert$
#### W1) (Dini) Suppose $K\subset \mathbb{R}^{n}$ is compact, $f_{n}:K\to \mathbb{R}$ is a sequence of continuous functions, which converges point-wise to $f:K\to \mathbb{R}$. If $f$ is continuous and $f_{n}\leqslant f_{n+1}$, then $f_{n}$ converges uniformly to $f$.
Proof: For any $\varepsilon>0$, and any $x\in K$, there is an integer $n_{x}>0$ such that $\lvert f_{n_{x}}(x)-f(x) \rvert<\varepsilon /4$. There exists $\delta>0$, such that $\forall y\in \mathrm{B}(x,\delta)\cap K$, $\lvert f(x)-f(y) \rvert<\varepsilon /4$ and $\lvert f_{n_{x}}(x)-f_{n_{x}}(y) \rvert<\varepsilon /4$, then $\lvert f_{n_{x}}(y)-f(y) \rvert< \varepsilon /4$. Note that $K\subset\bigcup_{x\in K}\mathrm{B}(x,\delta_{x})$ hence we can choose a finite set of $x_{1},x_{2},\cdots,x_{N}$ such that $K\subset \bigcup_{i=1}^{N}\mathrm{B}(x_{i},\delta_{x_{i}})$. Let $M=\max\{ n_{x_{i}} :i=1,2,\cdots,N\}$ then for any $m\geqslant M$ and $x\in K$, $\lvert f_{m}(x)-f(x) \rvert<\varepsilon$. Hence $f_{n}$ converges uniformly to $f$.

#### W2) Consider the interval $[-1,1]$. Define inductively a sequence of polynomials:
$$
P_{0}(x)=0,\, P_{n+1}(x)=P_{n}(x)+ \frac{1}{2}(x^{2}-P_{n}^{2}(x)).
$$
Prove that for any $n,x$, $0\leqslant P_{n}(x)\leqslant P_{n+1}(x)\leqslant \lvert x \rvert$.
Proof: Assume $x>0$, we prove by induction. If $t=P_{n}(x)\in[0,x]$, then
$$
P_{n+1}(x)=\frac{1}{2}x^{2}-\frac{1}{2}(t-1)^{2}+\frac{1}{2}\leqslant \frac{1}{2}(x^{2}-(1-x)^{2}+1)=x,
$$
and $P_{n+1}(x)\geqslant P_{n}(x)=t$, hence $P_{n+1}(x)\in[0,x]$.
#### W3) Prove that $\lvert x \rvert$ can be uniformly approximated by polynomials on the interval $[-1,1]$, i.e. for any $\varepsilon>0$, there exists a polynomial $P_{\varepsilon}(x)$ such that $\sup_{x\in[-1,1]}{\lvert \lvert x \rvert-P_{\varepsilon}(x) \rvert}<\varepsilon$.
Proof: By W2), the sequence of polynomials $\{ P_{n} \}$ converge point-wise to $\lvert x \rvert$, hence by W1) $P_{n}$ converge uniformly to $\lvert x \rvert$.
### Part 3: Bernstein Polynomial
Assume $I=[0,1]$, and $n$ is an integer.
#### W4) For any $0\leqslant k\leqslant n$, define $p_{n,k}(x)=\binom{n}{k}x^k(1-x)^{n-k}$. Prove that 
$$
\sum_{0\leqslant k\leqslant n}^{}{p_{n,k}(x)\left( x-\frac{k}{n} \right)^{2}}= \frac{x(1-x)}{n}.
$$
Proof:
Note that 
$$
\sum_{k=0}^{n}{\binom{n}{k}x^k(1-x)^{n-k}x^{2}}=x^{2},
$$
$$
\begin{align}
& \sum_{k=0}^{n}{\binom{n}{k}x^k(1-x)^{n-k} \frac{k}{n} }= \sum_{k=1}^{n}{\binom{n-1}{k-1}x^{k}(1-x)^{n-k}} =x,
\end{align}
$$
$$
\sum_{k=0}^{n}{p_{n,k}(x)k(k-1)}=n(n-1) \sum_{k=2}^{n}{\binom{n-2}{k-2}x^k(1-x)^{n-k}}=n(n-1)x^{2}.
$$
Therefore
$$
\sum_{k=0}^{n}{p_{n,k}(x)\left( x- \frac{k}{n} \right)^{2}}= \frac{x(1-x)}{n}.
$$
#### W5) For any $f\in C([0,1])$, define 
$$
B_{f,n}=\sum_{k=0}^{n}{f\left( \frac{k}{n} \right)\binom{n}{k}x^k(1-x)^{n-k}}.
$$
For $x\in[0,1]$, prove that
$$
\lvert f(x)-B_{f,n}(x) \rvert \leqslant \sum_{k=0}^{n}{\left\lvert  f(x)-f\left( \frac{k}{n} \right)  \right\rvert p_{n,k}(x) }.
$$
Proof: Note that
$$
\sum_{k=0}^{n}{f(x)\binom{n}{k}x^k(1-x)^{n-k}}=f(x).
$$
#### W6) For any $f\in C([0,1])$, prove that for any $\varepsilon>0$, there exists $n$ such that $\|f-B_{f,n}\|_{\infty}<\varepsilon$.
Proof:
Let 
$$
\begin{align}
\mathrm{I} &= \sum_{\lvert m-nx \rvert <n^{3/4}}^{}{\left( f(x)-f\left( \frac{m}{n} \right) \right)p_{n,m}(x)}, \\
\mathrm{II} &= \sum_{\lvert m-nx \rvert >n^{3/4}}^{}{\left( f(x)-f\left( \frac{m}{n} \right) \right)p_{n,m}(x)}.
\end{align}
$$
Then $\lvert f-B_{f,n} \rvert\leqslant \lvert \mathrm{I} \rvert+\lvert  \mathrm{II} \rvert$.
For any $\varepsilon>0$, $\exists N\in \mathbb{N}$ such that $\forall x\in[0,1]$, $n\geqslant N\implies \lvert \mathrm{I} \rvert<\varepsilon$, since
$$
\lvert \mathrm{I} \rvert \leqslant \sup_{\lvert x-m /n \rvert <n^{-1/4}}{\lvert f(x)-f(m /n) \rvert }\to 0.
$$
Suppose $M=\sup_{x\in[0,1]}{\lvert f(x) \rvert}$, then
$$
\lvert \mathrm{II} \rvert \leqslant 2M \sum_{\lvert m-nx \rvert >n^{3/4}}^{}{p_{n,m}(x)}\leqslant 2M\sqrt{ n }\sum_{m=0}^{n}{(x-m /n)^{2}p_{n,m}(x)}=\frac{2Mx(1-x)}{\sqrt{ n }}.
$$
Hence $\|f-B_{f,n}\|_{\infty}\to 0$.

### Part 3: Stone-Weierstrass Theorem
#### W7-14): 
Let $X$ be a compact Hausdorff space, $\mathcal{A}\subset C(X,\mathbb{R})$ satisfy the following properties:
(a) $\forall c \in \mathbb{R}$, $c \cdot 1_{X}\in \mathcal{A}$, (b) $\forall f,g\in\mathcal{A},$ $f+g,f-g,fg\in\mathcal{A}$,
(c) $\mathcal{A}$ can separate any pair of points in $X$.
Then $\bar{\mathcal{A}}=C(X,\mathbb{R})$.
#### Lemma 1
There is a list of polynomials $\left\{ P_{n}(x) \right\}$ that converges uniformly to $|x|$ on $[-1,1]$.
#### Lemma 2
If $\mathcal{A}$ is a subspace of $C(X,\mathbb{R})$, such that (a) $\mathcal{A}$ is a lattice, (b) $1_{X}\in\mathcal{A}$, and (c) $\mathcal{A}$ can separate any pair of points, then $\bar{\mathcal{A}}=C(X,\mathbb{R})$.
#### Proof of main theorem
Assume WLOG $\mathcal{A}$ is closed, then by Lemma 1, $\forall f\in\mathcal{A}$, $P_{n}(f)\in\mathcal{A}$, hence $|f|\in\mathcal{A}$.(Since $X$ is compact, $|f|$ is bounded.) Note that 
$$
\max \left\{ f,g \right\} =\dfrac{1}{2}(|f+g|+|f-g|),\min \left\{  f,g\right\} =\dfrac{1}{2}(|f+g|-|f-g|).
$$
Hence $\mathcal{A}$ is a lattice, by Lemma 2 $\mathcal{A}=C(X,\mathbb{R})$.
#### Proof of Lemma 1
Proof 1: Let 
$$
\begin{align}
Q_{n}(x) &= \int_{0}^{x} (1-t^2)^{n} \, dt / \int_{0}^{1} (1-t^2)^n \, dt. \\
P_{n}(x) &= \int_{0}^{x} Q_{n}(t) \, dt. 
\end{align}
$$
Note that
$$
\int_{\varepsilon}^{1} (1-t^2)^n\, dt \leqslant (1-\varepsilon^2)^n(1-\varepsilon)\to 0   
$$
Hence (combined with Wallis’s formula), $P_{n}(x)$ converges uniformly to $|x|$ on $[a,b]$.
Proof 2: WLOG change the interval to $\left[ -1 /2, 1 /2 \right]$. The series
$$
(1-t)^{1/2}=1+\sum_{n=1}^{\infty}{(-t)^n \binom{\frac{1}{2}}{n}}=1-\sum_{n=1}^{\infty}{c_{n}t^n}.
$$
converges when $|t|<1$. Hence $\forall \varepsilon>0,$ there exists $Q \in \mathbb{R}[x]$ such that $\sup_{|t|\leqslant 1 / 2}{|Q(t)-(1-t)^{1/2}|}<\varepsilon/2$.
Let $t=1-x^{2}$, then $|Q(1-x^{2})-|x||<\varepsilon /2$, so $P(x)=Q(1-x^2)-Q(1)$ converges to $|x|$ uniformly on $[-1 /2, 1/2]$.
#### Proof of Lemme 2
Step 1: Take any $f\in C(X,\mathbb{R})$, and any $x,y \in X$, we can find $g_{x y}\in \mathcal{A}$, such that $g_{xy}(x)=f(x),g_{xy}(y)=f(y)$. Since there exists $u\in \mathcal{A}$ such that $u(x)\neq u(y)$,
$$
\begin{pmatrix}
u(x), 1  \\
u(y), 1 \\
\end{pmatrix}
\begin{pmatrix}
\lambda \\
\mu \\
\end{pmatrix}
=\begin{pmatrix}
f(x) \\
f(y) \\

\end{pmatrix}
$$
has a solution. (If $x=y$ it is trivial.)
Step 2:
For all $\varepsilon>0$, $x,y\in X,$ there is an open neighborhood $O_{x,y}$ of $y$, such that $\forall z \in O_{x,y}$, $f(z)-g_{xy}(z)\leqslant\varepsilon$. Note that $\bigcup_{y\in X}O_{x,y}=X,$ so by $X$ is compact, there is a list $y_{1},\cdots,y_{N}$ such that $\bigcup_{k\leqslant N}O_{x,y_{k}}=X$. Let $h_{x}=\max \left\{ g_{xy_{k}}: k\leqslant N\right\}$, then $h_{x}(y)-f(y)\geqslant-\varepsilon,$ and $f(x)=h_{x}(x)$.
Step 3:
For all $x\in X$, there is an open neighborhood $G_{x}$ of $x$, such that $\forall z \in G_{x}$, $h_{x}(z)-f(z)\leqslant\varepsilon.$ Note that $\bigcup_{x\in X}G_{x}=X,$ so by $X$ is compact, there is a list $x_{1},\cdots,x_{M}$ such that $\bigcup_{k\leqslant M}G_{x}=X$. Let $F=\min \left\{ h_{x_{k}}:k\leqslant M \right\}$, then $|F(x)-f(x)|\leqslant\varepsilon, \forall x\in X$.
Therefore $\bar{\mathcal{A}}=C(X,\mathbb{R})$.

For complex numbers, there is an additional requirement: for any $f\in \mathcal{A}$, $\bar{f}\in \mathcal{A}$.

#### W15-16):
It is easy to see that polynomials and trigonometric polynomials both satisfy the requirements of the theorem.