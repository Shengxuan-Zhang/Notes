## Exercises
### Exercise6.1
Prove that
$$
\Gamma(s)=\lim_{ n \to \infty } \frac{n^{s}n!}{s(s+1)\cdots(s+n)}.
$$
For $s\neq 0,-1,\cdots$.
**Proof**: By the product formula for $1 /\Gamma$:
$$
\begin{align}
\frac{1}{\Gamma(s)} & =se^{\gamma s}\prod_{n=1}^{\infty}{\left( 1+\frac{s}{n} \right)e^{-s/n}} =\lim_{ n \to \infty } se^{\sum_{k=1}^{n}{s/k-s\log(1+n)}}\prod_{k=1}^{n}{\left( 1+\frac{s}{k} \right)e^{-s/k}} \\
 & =\lim_{ n \to \infty } s \exp \left( \sum_{k=1}^{n}{\log\left( 1+\frac{s}{k} \right)-s\log(1+n)} \right) \\
  & =\lim_{ n \to \infty } \frac{s(s+1)\cdots(s+n)}{(n+1)^{s}n!}.
\end{align}
$$
Therefore
$$
\Gamma(s)=\lim_{ n \to \infty } \frac{n^{s}n!}{s(s+1)\cdots(s+n)}.
$$
### Exercise6.2
Prove that
$$
\prod_{n=1}^{\infty}{\frac{n(a+b+n)}{(a+n)(b+n)}}=\frac{\Gamma(a+1)\Gamma(b+1)}{\Gamma(a+b+1)}.
$$
For $a,b>0$. Using the product formula for $\sin \pi s$, give another proof of $\Gamma(s)\Gamma(1-s)=\pi /\sin\pi s$.
Proof: Apply Exercise6.1 to $s=1,a+1,b+1,a+b+1$, we obtain
$$
\begin{align}
\frac{\Gamma(a+1)\Gamma(b+1)}{\Gamma(a+b+1)\Gamma(1)} & =\lim_{ n \to \infty } \frac{n^{a+1}n^{b+1}(n!)^{2}}{n^{a+b+1}n^{1}(n!)^{2}} \prod_{k=0}^{n}{\frac{(a+b+1+k)(1+k)}{(a+1+k)(b+1+k)}} \\
 & =\lim_{ n \to \infty } \prod_{k=1}^{n+1}{\frac{k(a+b+k)}{(a+k)(b+k)}}.
\end{align}
$$
Recall the product formula of $\sin \pi s$:
$$
\sin\pi s=\pi s\prod_{n=1}^{\infty}{\left( 1-\frac{s^{2}}{n^{2}} \right)}.
$$
Then for $0<s<1$, let $a=s$ and $b=1-s$, we obtain
$$
s(1-s)\Gamma(s)\Gamma(1-s)=\frac{\Gamma(s+1)\Gamma(2-s)}{\Gamma(2)}=\prod_{n=1}^{\infty}{\frac{n(n+1)}{(s+n)(1-s+n)}}.
$$
Hence
$$
\Gamma(s)\Gamma(1-s)= \frac{1}{s}\prod_{n=1}^{\infty}{\frac{n^{2}}{n^{2}-s^{2}}}=\frac{\pi}{\sin\pi s} \forall 0<s<1.
$$
### Exercise6.3
Show that Wallis's product formula can be written as
$$
\sqrt{\frac{\pi}{2}} = \lim_{n \to \infty} \frac{2^{2n} (n!)^2}{(2n + 1)!} (2n + 1)^{1/2}.
$$
As a result, prove the following identity:
$$
\Gamma(s)\Gamma(s + 1/2) = \sqrt{\pi} 2^{1-2s} \Gamma(2s).
$$
Proof: Recall
$$
\sqrt{ \frac{\pi}{2} }=\lim_{ n \to \infty } \frac{(2n)!!}{(2n-1)!!\sqrt{ 2n-1 }}=\lim_{ n \to \infty } \frac{2^{2n}(n!)^{2}}{(2n)!\sqrt{ 2n-1 }}=\lim_{ n \to \infty } \frac{2^{2n}(n!)^{2}}{(2n+1)!}\sqrt{ 2n+1 }.
$$
Now by Exercise6.1,
$$
\begin{align}
\frac{\Gamma(s)\Gamma(s+1 /2)2^{2s}}{\Gamma(2s)} & =\lim_{ n \to \infty } 2^{2s}\frac{n^{s}n!}{s\cdots(s+n)} \frac{n^{s+1/2}n!}{\left( s+\frac{1}{2} \right)\cdots\left( s+\frac{1}{2}+n \right)} \frac{(2s)\cdots(2s+2n+1)}{(2n+1)^{2s}(2n+1)!} \\
 & =\lim_{ n \to \infty }  \frac{2^{2n+2}(n!)^{2}\sqrt{ n }}{(2n+1)!}=2\sqrt{ \pi }.
\end{align}
$$
### Exercise6.4
Prove that if we take
$$
f(z) = \frac{1}{(1 - z)^\alpha}, \quad \text{for } |z| < 1
$$
(defined in terms of the principal branch of the logarithm), where $\alpha$ is a fixed complex number, then
$$
f(z) = \sum_{n=0}^{\infty} a_n(\alpha)z^n\text{ where }
a_n(\alpha) \sim \frac{1}{\Gamma(\alpha)} n^{\alpha - 1} \quad \text{as } n \to \infty.
$$
Proof: Recall that
$$
a_{n}(\alpha)=(-1)^{n}\binom{-\alpha}{n}=\frac{\alpha\cdots(\alpha+n-1)}{n!}.
$$
Hence
$$
\lim_{ n \to \infty } \frac{\Gamma(\alpha)a_{n}(\alpha)}{n^{\alpha-1}}=\lim_{ n \to \infty } \frac{n}{\alpha+n}=1.
$$
### Exercise6.5
Use the fact that $\Gamma(s)\Gamma(1 - s) = \pi/\sin \pi s$ to prove that
$$
|\Gamma(1/2 + it)| = \sqrt{\frac{2\pi}{e^{\pi t} + e^{-\pi t}}}, \quad \text{whenever } t \in \mathbb{R}.
$$
Proof: Let $s=\frac{1}{2}+it$, then
$$
\Gamma(1/2+it)\Gamma(1/2-it)=\frac{\pi}{\sin\pi s}= \frac{2\pi}{(e^{\pi t}+e^{-\pi t})}.
$$
Note that
$$
\Gamma(s)=se^{\gamma s}\prod_{n=1}^{\infty}{\left( 1+\frac{s}{n} \right)}e^{-s/n}\implies \Gamma(\bar{s})=\overline{\Gamma(s)}.
$$
Hence $\lvert \Gamma(1 /2+it )\rvert=\sqrt{ 2\pi /(e^{\pi t}+e^{-\pi t}) }$.
### Exercise6.6
Show that
$$
1 + \frac{1}{3} + \frac{1}{5} + \cdots + \frac{1}{2n - 1} - \frac{1}{2} \log n \to \frac{\gamma}{2} + \log 2,
$$
where $\gamma$ is Euler's constant.
Proof: Let $H_{n}=\sum_{k=1}^{n}{\frac{1}{k}}$, then $H_{n}-\log (n+1)\to\gamma$. Hence
$$
\lim_{ n \to \infty } \sum_{k=1}^{n}{\frac{1}{2k-1}}-\frac{1}{2}\log n=\lim_{ n \to \infty } (H_{2n}-\log 2n)-\frac{1}{2}(H_{n}-\log n)+\log 2=\frac{\gamma}{2}+\log 2.
$$
### Exercise6.7
The **Beta function** is defined for $\mathrm{Re}\alpha>0$ and $\mathrm{Re}\beta>0$ by 
$$
B(\alpha,\beta)=\int_{0}^{1} (1-t)^{\alpha-1}t^{\beta-1} \, \mathrm{d}t. 
$$
(a) Prove that $B(\alpha,\beta)=\frac{\Gamma(\alpha)\Gamma(\beta)}{\Gamma(\alpha+\beta)}$.
(b) Show that $B(\alpha,\beta)=\int_{0}^{\infty} \frac{u^{\alpha-1}}{(1+u)^{\alpha+\beta}} \, \mathrm{d}u$.
Proof: (a) Let $u=\frac{t}{1-t}$ then $t=\frac{u}{1+u}$ so 
$$
B(\alpha,\beta)=\int_{0}^{1} (1-t)^{\alpha-1}t^{\beta-1} \, \mathrm{d}t =\int_{0}^{\infty} (1+u)^{-\alpha-\beta}u ^{\beta-1} \, \mathrm{d}u.\tag{1}
$$
Hence
$$
\begin{align}
B(\alpha,\beta)\Gamma(\alpha+\beta) & =\int_{0}^{\infty} e^{-t}t^{\alpha+\beta-1}\int_{0}^{\infty} (1+u)^{-\alpha-\beta}u ^{\beta-1} \, \mathrm{d}u  \, \mathrm{d}t  \\
 (t=(1+u)v)& =\int_{0}^{\infty} u ^{\beta-1} \int_{0}^{\infty} e^{-(1+u)v} v^{\alpha+\beta-1}\, \mathrm{d}v \, \mathrm{d}u  \\
  & =\int_{0}^{\infty} e^{-v}v^{\alpha-1} \int_{0}^{\infty} e^{-uv}(uv)^{\beta-1} \, \mathrm{d}(uv) \, \mathrm{d}v  \\
   & =\Gamma(\alpha)\Gamma(\beta).
\end{align}
$$
(b) Use $(1)$ and $B(\alpha,\beta)=B(\beta,\alpha)$ (obvious from (a)).
### Exercise6.8
The Bessel functions arise in the study of spherical symmetries and the Fourier transform. Prove that the following power series identity holds for Bessel functions of real order $\nu>-1 /2$:
$$
J_{\nu}(x)=\frac{(x /2)^{\nu}}{\Gamma(\nu+1 /2)\sqrt{ \pi }}\int_{-1}^{1} e^{ixt}(1-t^{2})^{\nu-1 /2} \, \mathrm{d}t=\left( \frac{x}{2} \right)^{\nu}\sum_{m=0}^{\infty}{\frac{(-1)^{m}\left( \frac{x^{2}}{4} \right)^{m}}{m!\Gamma(\nu+m+1)}}
$$
whenever $x>0$. In particular, the Bessel function $J_{\nu}$ satisfies the ODE
$$
\frac{d^{2}J_{\nu}}{dx^{2}}+\frac{1}{x} \frac{dJ_{\nu}}{dx}+\left( 1-\frac{\nu^{2}}{x^{2}} \right)J_{\nu}=0.
$$
Proof: Note that
$$
\begin{align}
\int_{-1}^{1} e^{ixt}(1-t^{2})^{\nu -1/2} \, \mathrm{d}t & = \int_{-1}^{1} \sum_{m=0}^{\infty}{\frac{(ixt)^{m}}{m!}(1-t^{2})^{\nu-1/2}} \, \mathrm{d}t=\sum_{m=0}^{\infty}{\frac{(-1)^{m}x^{2m}}{(2m)!}\int_{-1}^{1} t^{2m}(1-t^{2})^{\nu-1/2} \, \mathrm{d}t }  \\
 & =\sum_{m=0}^{\infty}{\frac{(-1)^{m}x^{2m}}{(2m)!}\int_{0}^{1} u ^{m-1/2}(1-u)^{\nu-1/2}\,\mathrm{d}u} \\
  & =\sum_{m=0}^{\infty}{\frac{(-1)^{m}x^{2m}}{(2m)!}B(m+1 /2,\nu+1 /2)} \\
   & =\Gamma(\nu+1 /2)\sum_{m=0}^{\infty}{\frac{(-1)^{m}x^{2m}\Gamma(m+1 /2)}{(2m)!\Gamma(\nu+m+1)}} \\
    & =\Gamma(\nu+1 /2)\sqrt{ \pi }\sum_{m=0}^{\infty}{\frac{(-1)^{m}x^{2m}}{2^{2m}m!\Gamma(\nu+m+1)}}.
\end{align}
$$
Hence the identity holds for all $\nu>1 /2$.
Verify the ODE by differentiating the power series.
### Exercise6.9
The hypergeometric series $F(\alpha,\beta,\gamma;z)$ was defined in Exercise16 of Chapter1. Show that
$$
F(\alpha,\beta,\gamma;z)=\frac{\Gamma(\gamma)}{\Gamma(\beta)\Gamma(\gamma-\beta)}\int_{0}^{1} t^{\beta-1}(1-t)^{\gamma-\beta-1}(1-zt)^{-\alpha} \, \mathrm{d}t.
$$
Here $\alpha>0,\beta>0,\gamma>\beta$ and $\lvert z \rvert<1$.
Show as a result that the hypergeometric function, initially defined by a power series convergent in the unit disc, can be continued analytically to the complex plane slit along the half-line $[1,\infty)$.
Note that $\log(1-z)=-zF(1,1,2;z)$, $e^{z}=\lim_{ \beta \to \infty }F(1,\beta,1;z /\beta)$, $(1-z)^{-\alpha}=F(\alpha,1,1;z)$.
Proof: Recall
$$
F(\alpha,\beta,\gamma;z)=1+\sum_{n=1}^{\infty}{\frac{\alpha\cdots(\alpha+n-1)\beta\cdots(\beta+n-1)}{n!\gamma\cdots(\gamma+n-1)}z^{n}}.
$$
Then
$$
\begin{align}
 & \int_{0}^{1} t^{\beta-1}(1-t)^{\gamma-\beta-1}(1-zt)^{-\alpha} \, \mathrm{d}t= \int_{0}^{1} t^{\beta-1}(1-t)^{\gamma-\beta-1}\sum_{n=0}^{\infty}{(-zt)^{n}\binom{-\alpha}{n}} \, \mathrm{d}t  \\
 = & \sum_{n=0}^{\infty}{(-z)^{n}\binom{-\alpha}{n}B(n+\beta,\gamma-\beta)}=\sum_{n=0}^{\infty}{(-z)^{n}\binom{-\alpha}{n} \Gamma(n+\beta)\Gamma(\gamma-\beta) /\Gamma(n+\gamma)}.
\end{align}
$$
Hence
$$
F(\alpha,\beta,\gamma;z)=\frac{\Gamma(\gamma)}{\Gamma(\beta)\Gamma(\gamma-\beta)}\int_{0}^{1} t^{\beta-1}(1-t)^{\gamma-\beta-1}(1-zt)^{-\alpha} \, \mathrm{d}t.
$$
### Exercise6.10
An integral of the form
$$
F(z)=\int_{0}^{1} f(t)t^{z-1} \, \mathrm{d}t 
$$
is called a **Mellin transform**, and we shall write $\mathcal{M}(f)(z)=F(z)$, e.g. $\mathcal{M}(e^{-t})=\Gamma$.
(a) Prove that
$$
\mathcal{M}(\cos)(z)=\int_{0}^{\infty} \cos(t)t^{z-1} \, \mathrm{d}t=\Gamma(z)\cos\left( \frac{\pi z}{2} \right) ,\text{ for }0<\mathrm{Re} z<1,
$$
and
$$
\mathcal{M}(\sin)(z)=\int_{0}^{\infty} \sin(t)t^{z-1} \, \mathrm{d}t=\Gamma(z)\sin\left( \frac{\pi z}{2} \right) ,\text{ for }0<\mathrm{Re}z<1.
$$
(b) Show that the second of the above identities is valid in the larger strip $-1<\mathrm{Re}z<1$, and as a consequence, one has
$$
\int_{0}^{\infty} \frac{\sin x}{x} \, \mathrm{d}x =\frac{\pi}{2},\text{ and }\int_{0}^{\infty} \frac{\sin x}{x^{3/2}} \, \mathrm{d}x =\sqrt{ 2\pi }.
$$
This generalizes the calculation in Exercise2.2.
Proof: (a) Note that
$$
\mathcal{M}(\cos)(z)+i\mathcal{M}(\sin)(z)=\int_{0}^{\infty} e^{it}t^{z-1} \, \mathrm{d}t. 
$$
Consider $f(\omega)=e^{-\omega}\omega ^{z-1}$, which is well-defined and holomorphic for $H=\{ x+iy:x>0,y<0 \}$. Integrate along the contour $\gamma_{1}=[\varepsilon,R]$, $\gamma_{2}=\{ z \in H:\lvert z \rvert=R\}$, $\gamma_{3}:-iR\to -i\varepsilon$, $\gamma_{4}=\{ z\in H:\lvert z \rvert=\varepsilon \}$. Then
$$
\left\lvert  \int_{\gamma_{4}}^{} f \, \mathrm{d}\omega   \right\rvert =\left\lvert  \int_{0}^{\pi/2} e^{-\varepsilon e^{i\theta}}\varepsilon ^{z-1}e^{i\theta(z-1)}\varepsilon e^{i\theta} \, \mathrm{d}\theta   \right\rvert \leqslant \lvert \varepsilon ^{z} \rvert ⋅ \pi e^{\pi}\to 0, \text{ as }\varepsilon\to 0,
$$
and
$$
\left\lvert  \int_{\gamma_{2}}f \, \mathrm{d}\omega   \right\rvert \leqslant e^{\pi}\lvert R^{z} \rvert \cdot  \int_{0}^{\pi/2} e^{-R\cos\theta}  \, \mathrm{d}\theta \to 0, \text{ as }R\to \infty.
$$
Hence
$$
\int_{0}^{\infty} e^{it}(-it)^{z-1} \, \mathrm{d}(-it)=\int_{0}^{\infty} e^{-t}t^{z-1} \, \mathrm{d}t=\Gamma(z) .
$$
Therefore
$$
\mathcal{M}(\cos)(z)+i\mathcal{M}(\sin)(z)=e^{i\pi z/2}\Gamma(z).
$$
(b) If $-\sigma=\mathrm{Re}z\in [0,1)$, then
$$
\lvert \sin t\cdot t^{z-1} \rvert \leqslant t\cdot t^{-\sigma-1}=t^{-\sigma}.
$$
Hence $\mathcal{M}(\sin)(z)=\int_{0}^{\infty} \sin t \cdot t^{z-1} \, \mathrm{d}t$ is well-defined, and holomorphic, since the integral converges uniformly. Therefore $\mathcal{M}(\sin)(z)$ and $\Gamma(z)\sin\left( \frac{\pi z}{2} \right)$ are equal on the strip $-1<\mathrm{Re}z<1$.($\Gamma(z)\sin\left( \frac{\pi z}{2} \right)$ is well-defined at zero since $\sin \frac{\pi z}{2}$ has a simple zero at $0$.)
### Exercise6.11
Let $f(z)=e^{az}e^{-e^{z}}$ where $a>0$. Observe that in the strip $\{ x+iy:\lvert y \rvert<\pi/2 \}$, the function $f(x+iy)$ is exponentially decreasing as $\lvert x \rvert$ tends to infinity. Prove that $\hat{f}(\xi)=\Gamma(a-2\pi i\xi)$ for all $\xi \in \mathbb{R}$.
Proof: Clearly $\lvert f(z) \rvert=\exp(ax-e^{x}\cos y)$ so it tends to zero as $\lvert x \rvert\to \infty$, in the strip $\lvert y \rvert<\pi /2$. Let $t=e^{x}$, we obtain
$$
\hat{f}(\xi)=\int_{\mathbb{R}}^{} e^{ax}e^{-e^{x}}e^{-2\pi ix\xi} \, \mathrm{d}x =\int_{0}^{\infty} t^{a-1-2\pi i\xi}e^{-t} \, \mathrm{d}t=\Gamma(a-2\pi i\xi) .
$$
### Exercise6.12
This exercise gives two simple observations about $1 /\Gamma$:
(a) Show that $1 /\lvert \Gamma(s) \rvert$ is not $O(e^{c\lvert s \rvert})$ for any $c>0$;
(b) Show that there is no entire function $F(s)$ with $F(s)=O(e^{c\lvert s \rvert})$ that has simple zeros at $s=0,-1,-2,\cdots$ and vanishes nowhere else.
Proof: (a) Consider $s=\frac{1}{2}+2n$, then $\Gamma(1-s)\Gamma(s)=\pi /\sin\pi s=\pi$, so
$$
\lvert 1 /\Gamma(-1 /2-2n)  \rvert =\frac{\Gamma(1 /2)}{\pi} \frac{1}{2}\cdots \left( \frac{1}{2} +2n-1\right)\geqslant \frac{1}{\pi} (2n-1)!\sim \frac{1}{\pi}\left( \frac{2n}{e} \right)^{2n}\sqrt{ 4\pi n }.
$$
Hence $\lvert 1 /\Gamma(s) \rvert>O(e^{c\lvert s \rvert})$ for any $c>0$.
(b) By Hadamard's factorization theorem, 
$$
F(s)=se^{As+B}\prod_{n=1}^{\infty}{(1+s /n)e^{-s /n}}=e^{Cs+D} /\Gamma(s)
$$
so by (a) it cannot have order $O(e^{c\lvert s \rvert})$.
### Exercise6.13
Prove that
$$
\frac{d^{2}\log\Gamma(s)}{ds^{2}}=\sum_{n=0}^{\infty}{\frac{1}{(s+n)^{2}}}
$$
whenever $s>0$. Show that if the LHS is interpreted as $(\Gamma^{\prime} /\Gamma)^{\prime}$, then the above formula also holds for all complex numbers $s$ with $s\neq 0,-1,-2,\cdots$.
Proof: For $s>0$,
$$
\log\Gamma(s)=-\log se^{\gamma s}\prod_{n=1}^{\infty}{(1+s /n)e^{-s /n}}=-\log s-\gamma s+\sum_{n=1}^{\infty}{\log\left( 1+\frac{s}{n} \right)}-\frac{s}{n}.
$$
Since $\lvert \log(1+s /n)-s /n \rvert\leqslant \frac{2s^{2}}{n^{2}}$, the series converges uniformly on compact sets, hence 
$$
\frac{d^{2}\log\Gamma(s)}{ds^{2}}=\sum_{n=0}^{\infty}{\frac{1}{(s+n)^{2}}}.
$$

For arbitrary $s \in \mathbb{C}$, note that $\Gamma^{\prime}(s)=\frac{1}{s}+\gamma+\sum_{n=1}^{\infty}{\frac{1}{s+n}-\frac{1}{n}}$ so likewise we have $(\Gamma^{\prime} /\Gamma)^{\prime}=\sum_{n=0}^{\infty}{\frac{1}{(s+n)^{2}}}$.
### Exercise6.14
This exercise gives an asymptotic formula for $\log n!$. A more refined asymptotic formula for $\Gamma(s)$ as $s\to \infty$ is given in Appendix A.
(a) Show that
$$
\frac{d}{dx}\int_{x}^{x+1} \log\Gamma(t) \, \mathrm{d}t=\log x,\text{ for } x>0,
$$
and as a result
$$
\int_{x}^{x+1} \log\Gamma(t) \, \mathrm{d}t=x\log x-x+c. 
$$
(b) Show as a consequence that $\log\Gamma(n)\sim n\log n$ as $n\to \infty$. In fact, prove that $\log\Gamma(n)\sim n\log n+O(n)$ as $n\to \infty$.
Proof: (a) is trivial. In fact,
$$
c=\int_{0}^{1} \log\Gamma(t) \, \mathrm{d}t=\frac{1}{2}\int_{0}^{1} \log\Gamma(t)+\log\Gamma(1-t) \, \mathrm{d}t=\frac{1}{2}\int_{0}^{1} \log \frac{\pi}{\sin\pi t} \, \mathrm{d}t=\log \sqrt{ 2\pi },
$$
where 
$$
I=\int_{0}^{1} \log \sin\pi t \, \mathrm{d}t=\log 2+\int_{0}^{1} \log \sin \frac{\pi t}{2}\cos \frac{\pi t}{2} \, \mathrm{d}t=\log 2+2I=-\log 2. 
$$
(b) Note that $\Gamma(s)=\int_{0}^{\infty} t^{s-1}e^{-t} \, \mathrm{d}t$ is strictly increasing, so
$$
\log\Gamma(t)\leqslant x\log x-x+c=\int_{x}^{x+1} \log\Gamma(t) \, \mathrm{d}t\leqslant \log\Gamma(x+1) .
$$
Hence $\log\Gamma(n)\leqslant n\log n-n+c$ and $\log\Gamma(n)\geqslant (n-1)\log(n-1)-(n-1)+c$, so $\log\Gamma(n)\sim n\log n+O(n)$ as $n\to \infty$.
### Exercise6.15
Prove that for $\mathrm{Re}s>1$,
$$
\zeta(s)=\frac{1}{\Gamma(s)}\int_{0}^{\infty}  \frac{x^{s-1}}{e^{x}-1} \, \mathrm{d}x .
$$
Proof: Note that
$$
\begin{align}
\int_{0}^{\infty} \frac{x^{s-1}}{e^{x}-1} \, \mathrm{d}x & =\int_{0}^{\infty} x^{s-1}\sum_{n=1}^{\infty}{e^{-nx}} \, \mathrm{d}x  = \sum_{n=1}^{\infty}{n^{-s}\int_{0}^{\infty} (nx)^{s-1}e^{-nx} \, \mathrm{d}nx } \\
 & =\sum_{n=1}^{\infty}{n^{-s}\Gamma(s)}=\zeta(s)\Gamma(s).
\end{align}
$$
Since the series converges absolutely for $\mathrm{Re}s>1$.
### Exercise6.16
Use the previous exercise to give another proof that $\zeta(s)$ is continuable in the complex plane with only singularity a simple pole at $s=1$.
Proof: Let 
$$
\zeta(s)=\frac{1}{\Gamma(s)}\int_{0}^{1} \frac{x^{s-1}}{e^{x}-1} \, \mathrm{d}x +\frac{1}{\Gamma(s)}\int_{1}^{\infty} \frac{x^{s-1}}{e^{x}-1}  \, \mathrm{d}x .
$$
The second integral defines an entire function.
Recall the Bernoulli number is defined by $\frac{x}{e^{x}-1}=\sum_{m=0}^{\infty}{\frac{B_{m}}{m!}x^{m}}$, hence
$$
\int_{0}^{1} \frac{x^{s-1}}{e^{x}-1} \, \mathrm{d}x =\int_{0}^{1} \sum_{m=0}^{\infty}{}\frac{B_{m}}{m!}x^{m+s-2} \, \mathrm{d}x =\sum_{m=0}^{\infty}{\frac{B_{m}}{m!(m+s-1)}}.
$$
Since $1/\Gamma$ has simple zeros at $s=0,-1,\cdots$, the first integral defines a meromorphic function with a simple pole at $s=1$.
### Exercise6.17
Let $f\in C_{c}^{\infty}(\mathbb{R})$, or more generally, let $f\in \mathcal{S}$ be in the Schwartz space. Consider
$$
I(s)=\frac{1}{\Gamma(s)}\int_{0}^{\infty} f(x)x^{-1+s} \, \mathrm{d}x .
$$
(a) Observe that $I(s)$ is holomorphic for $\mathrm{Re}s>0$. Prove that $I$ has an analytic continuation as an entire function in the complex plane.
(b) Prove that $I(0)=0$, and more generally
$$
I(-n)=(-1)^{n}f^{(n)}(0) \text{ for all }n\geqslant 0.
$$
(a) Suppose $\mathrm{supp}f\subset[-N,N]$, and $\lvert f \rvert\leqslant M$, then $\sigma=\mathrm{Re}s>0$ implies $\lvert I(s) \rvert\leqslant \frac{1}{\lvert \Gamma(s) \rvert}M\int_{0}^{N} x^{-1+\sigma} \, \mathrm{d}x<\infty$, and the integral converges uniformly. Hence it defines a holomorphic function for $\mathrm{Re}s>0$.
Consider 
$$
I_{n}(s)=\frac{(-1)^{n}}{\Gamma(s+n)}\int_{0}^{\infty} f^{(n)}(x)x^{s+n-1} \, \mathrm{d}x ,
$$
then likewise $I_{n}$ is holomorphic for $\mathrm{Re}s>-n$. Integration by parts imply $I_{n}=I_{n+1}$ for all $\mathrm{Re}s>-n$, so analogous to the construction of $\Gamma$, we obtain an entire function $I(x)=I_{n}(x)$.
(b) By definition,
$$
I(-n)=I_{n+1}(-n)=(-1)^{n+1}\int_{0}^{\infty} f^{(n+1)}(x) \, \mathrm{d}x =(-1)^{n}f^{(n)}(0).
$$
## Problems
### Problem6.1
This problem provides further estimates for $\zeta$ and $\zeta^{\prime}$ near $\mathrm{Re}s=1$.
(a) Use Proposition6.2.5 and its corollary to prove
$$
\zeta(s)=\sum_{1\leqslant n<N}^{}{n^{-s}}-\frac{N^{1-s}}{1-s}+\sum_{n\geqslant N}^{}{\delta_{n}(s)}
$$
for every integer $N\geqslant 2$, whenever $\mathrm{Re}s>0$.
(b) Show that $\lvert \zeta(1+it) \rvert=O(\log \lvert t \rvert)$, as $\lvert t \rvert\to \infty$.
(c) The second conclusion of Proposition6.2.7 can be similarly refined.
(d) Show that if $t\neq 0$ is fixed, then the partial sums of the series $\sum_{n=1}^{\infty}{1 /n^{1+it}}$ are bounded, but the series does not converge.
