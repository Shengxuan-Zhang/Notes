## Section 3.1 Rings and Homomorphisms
### 3.1.1
(a) Let $G$ be an (additive) abelian group. Define an operation of multiplication in $G$ by $ab=0$ (for all $a,b\in G$). Then $G$ is a ring.
(b) Let $S$ be the set of all subsets of some fixed set $U$. For $A,B\in S$, define $A+B=(A-B)\cup(B-A)$ and $AB=A\cap B$. Then $S$ is a ring. Is $S$ commutative? Does it have an identity?
Proof: (a) $(ab)c=0=a(bc)$, $(a+b)c=0=ac+bc$ and $a(b+c)=0=ab+ac$ so $G$ is a ring.
(b) Clearly addition and multiplication are commutative. $(A+B)+C=\{ x\in U:x \text{ belongs to 1 or 3 sets in }A,B,C \}=A+(B+C)$, $(S,+)$ has zero element $\emptyset$ and inverse $(-A)=A$, so $(S,+)$ is an abelian group.
$(AB)C=A\cap B\cap C=A(BC)$, $(A+B)C=(A-B)\cup(B-A)\cap C=AC+BC$ so $S$ is a commutative ring. The identity is $U$.
### 3.1.2
Let $\{R_i\mid i\in I\}$ be a family of rings with identity. Make the direct sum of abelian groups $\sum_{i\in I}R_i$ into a ring by defining multiplication coordinatewise. Does $\sum_{i\in I}R_i$ have an identity?
Solution: No, if $I$ is infinite. If $\sum_{i\in I}^{}{r_{i}}$ is an identity, let $J=\{ i\in I:r_{i}\neq 0 \}$ then $J$ is finite. If $I$ is infinite, take $j\in I\backslash J$, then $\iota_{j}(1_{R_{j}})\cdot \sum_{i\in I}^{}{r_{i}}=0$, a contradiction.
### 3.1.3
A ring $R$ such that $a^2=a$ for all $a\in R$ is called a **Boolean ring**. Prove that every Boolean ring $R$ is commutative and $a+a=0$ for all $a\in R$. 
Proof: Note that $a+b=(a+b)^{2}=a^{2}+b^{2}+ab+ba=a+b+ab+ba$ so $ab+ba=0\forall a,b\in R$. Let $a=b$ then $0=a^{2}+a^{2}=2a\forall a\in R$, and $ab=-ba=ba$ so $R$ is commutative.
### 3.1.4
Let $R$ be a ring and $S$ a nonempty set. Then the group $M(S,R)$ (Exercise I.1.2) is a ring with multiplication defined as follows: the product of $f,g\in M(S,R)$ is the function $S\to R$ given by $s\mapsto f(s)g(s)$.
Proof: $(f\cdot g)h(s)=f(s)g(s)h(s)=f(g\cdot h)(s)$, $f(g+h)(s)=f(s)(g(s)+h(s))=(fg+fh)(s)$ and $(f+g)h(s)=f(s)h(s)+g(s)h(s)=(fh+gh)(s)$ so $M(S,R)$ is a ring.
### 3.1.5
If $A$ is the abelian group $\mathbb{Z}\oplus\mathbb{Z}$, then End $A$ is a noncommutative ring (see page 116).
Proof: We already know $\mathrm{End}A$ is an abelian group. Clearly $(f\circ g)\circ h=f\circ (g\circ h)$ and $(f+g)\circ h=f\circ h+g\circ h$. $f(g(x)+h(x))=f(g(x))+f(h(x))$ so $f\circ(g+h)=f\circ g+f∘ h$, hence $\mathrm{End}A$ is a ring.
For $f:(x,y)\mapsto(x,0)$ and $g:(x,y)\mapsto(0,x)$, $f\circ g=0$ while $g\circ f=g\neq 0$, so $\mathrm{End}A$is non-commutative.
### 3.1.6
A finite ring with more than one element and no zero divisors is a division ring. (Special case: a finite integral domain is a field.)
Proof: $R\backslash\{ 0 \}$ is a finite semigroup that satisfy left and right cancellation laws. By Exercise1.1.15 it is a group.
### 3.1.7
Let $R$ be a ring with more than one element such that for each nonzero $a\in R$ there is a unique $b\in R$ such that $aba=a$. Prove:
(a) $R$ has no zero divisors.
(b) $bab=b$.
(c) $R$ has an identity.
(d) $R$ is a division ring.
Proof: (a) If $ar=0$ for $a,r\neq 0$, suppose $aba=a$, then $a(b+r)a=a$, contradicting the uniqueness of $b$.
(b) $(bab-b)a=baba-ba=0$ and $a\neq 0$ implies $bab=b$.
(c) $a(ba-ab)a=aaba-abaa=a^{2}-a^{2}=0$ and $a\neq 0$ implies $ab=ba$.
For $c\neq 0$, suppose $cdc=c$, then $a(ba-cd)c=abac-acdc=ac-ac=0$ so $ba=cd$. Hence $1=ab$ is the identity of $R$.
(d) For any $a\in R\backslash\{ 0 \}$, take $b\in R$ such that $aba=a$, then the inverse of $a$ is $b$, since $1_{R}=ba=ab$.
### 3.1.8
Let $R$ be the set of all $2\times 2$ matrices over the complex field $\mathbb{C}$ of the form
$$
\begin{pmatrix} z & w \\ -\bar{w} & \bar{z} \end{pmatrix},
$$
where $\bar{z},\bar{w}$ are the complex conjugates of $z$ and $w$ respectively (that is, $c=a+b\sqrt{-1}\Leftrightarrow\bar{c}=a-b\sqrt{-1}$). Then $R$ is a division ring that is isomorphic to the division ring $K$ of real quaternions. 
Proof: There is an isomorphism $\varphi:K\to R$,
$$
1\mapsto\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix},i\mapsto \begin{pmatrix} \sqrt{-1} & 0 \\ 0 & -\sqrt{-1} \end{pmatrix}, j\mapsto\begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix},k\mapsto \begin{pmatrix} 0 & \sqrt{-1} \\ \sqrt{-1} & 0 \end{pmatrix}.
$$
### 3.1.9
(a) The subset $G=\{1,-1,i,-i,j,-j,k,-k\}$ of the division ring $K$ of real quaternions forms a group under multiplication.
(b) $G$ is isomorphic to the quaternion group (Exercises I.4.14 and I.2.3).
(c) What is the difference between the ring $K$ and the group ring $\mathbb{R}(G)$ ($\mathbb{R}$ the field of real numbers)?
Solution: (c) In $\mathbb{R}(G)$, $1(-i)$ and $(-1)i$ are different elements, while they are the same in $K$. $K$ is isomorphic to the quotient ring of $\mathbb{R}(G) /I$ where $I=(1+(-1),1i+1(-i),1j+1(-j),1k+1(-k))$.
### 3.1.10
Let $k,n$ be integers such that $0\leqslant k\leqslant n$ and $\binom{n}{k}$ the binomial coefficient $n!/(n-k)!k!$, where $0!=1$ and for $n>0$, $n!=n(n-1)(n-2)\cdots 2\cdot 1$.
(a) $\binom{n}{k} = \binom{n}{n-k}$
(b) $\binom{n}{k} < \binom{n}{k+1}$ for $k+1\leqslant n/2$.
(c) $\binom{n}{k} + \binom{n}{k+1} = \binom{n+1}{k+1}$ for $k<n$.
(d) $\binom{n}{k}$ is an integer.
(e) if $p$ is prime and $1\leqslant k\leqslant p^n-1$, then $\binom{p^n}{k}$ is divisible by $p$.
Trivial.
### 3.1.11
(The Freshman's Dream). Let $R$ be a commutative ring with identity of prime characteristic $p$. If $a,b\in R$, then $(a\pm b)^{p^n} = a^{p^n}\pm b^{p^n}$ for all integers $n\geqslant 0$.
Proof: $(a+b)^{p^{n}}=\sum_{k=0}^{p^{n}}{\binom{p^{n}}{k}a^{k}b^{p^{n}-k}}$ and $p\mid\binom{p^{n}}{k}\forall 0<k<p^{n}$.
### 3.1.12
An element of a ring is **nilpotent** if $a^n=0$ for some $n$. Prove that in a commutative ring $a+b$ is nilpotent if $a$ and $b$ are. Show that this result may be false if $R$ is not commutative.
Proof: If $R$ is commutative and $a^{n}=b^{m}=0$, then
$$
(a+b)^{n+m}=\sum_{k\leqslant n}^{}{\binom{n+m}{k}a^{k}b^{n+m-k}}+\sum_{k>n}^{}{\binom{n+m}{k}a^{k}b^{n+m-k}}=0.
$$
Since $b^{n+m-k}=0\forall k\leqslant n$ and $a^{k}=0\forall k>n$.
If $R$ is not commutative, e.g. $R=\mathbb{R}^{2\times 2}$, consider $A=\begin{pmatrix}0 & 0\\1 & 0\end{pmatrix}$ and $B=\begin{pmatrix}0 & 1\\0 & 0\end{pmatrix}$, then $A^{2}=B^{2}=0$ so $A,B$ are nilpotent, but $A+B\in \mathrm{GL}(2,\mathbb{R})$ so $A+B$ is not nilpotent.
### 3.1.13
In a ring $R$ the following conditions are equivalent.
(a) $R$ has no nonzero nilpotent elements (see Exercise 12).
(b) If $a\in R$ and $a^2=0$, then $a=0$.
Proof: (a)=>(b) is trivial.
(b)=>(a): Otherwise take the smallest $n>1$ such that $a^{n}=0$ for some $a\neq 0$. Let $b=a^{\lceil n /2 \rceil}$, then $b^{2}=0$ implies $b=0$, but $\lceil n /2 \rceil<n$, a contradiction.
### 3.1.14
Let $R$ be a commutative ring with identity and prime characteristic $p$. The map $R\to R$ given by $r\mapsto r^p$ is a homomorphism of rings called the Frobenius homomorphism.
Proof: By Exercise3.1.11 $(r+s)^{p}=r^{p}+s^{p}$ so it is a homomorphism.
### 3.1.15
(a) Give an example of a nonzero homomorphism $f:R\to S$ of rings with identity such that $f(1_R)\neq 1_S$.
(b) If $f:R\to S$ is an epimorphism of rings with identity, then $f(1_R)=1_S$.
(c) If $f:R\to S$ is a homomorphism of rings with identity and $u$ is a unit in $R$ such that $f(u)$ is a unit in $S$, then $f(1_R)=1_S$ and $f(u^{-1})=f(u)^{-1}$. 
Proof: (a) $f:\mathbb{Z}\to \mathbb{Z},n\mapsto 0$.
(b) Take $r\in R$ such that $f(r)=1_{S}$, then $1_{S}=f(r)=f(r 1_{R})=f(r)f(1_{R})=f(1_{R})$ so $f(1_{R})=1_{S}$.
(c) $f(u)=f(1_{R}u)=f(1_{R})f(u)$ and $f(u)$ is invertible so $f(1_R)=1_{S}$.
$1_{S}=f(1_{R})=f(u u ^{-1})=f(u)f(u^{-1})$ so $f(u ^{-1})=f(u)^{-1}$.
### 3.1.16
Let $f:R\to S$ be a homomorphism of rings such that $f(r)\neq 0$ for some nonzero $r\in R$. If $R$ has an identity and $S$ has no zero divisors, then $S$ is a ring with identity $f(1_R)$.
Proof: Note that $f(r)=f(1_{R}r)=f(1_{R})f(r)$ and $f(r)=f(r)f(1_{R})$. For all $s\in S$, $(s-s f(1_{R}))f(r)=s f(r)-s f(1_{R})f(r)=0$ and $f(r)\neq 0$ implies $s=s f(1_{R})$. Likewise $s=f(1_{R})s$ so $f(1_{R})$ is the identity of $S$.
### 3.1.17
(a) If $R$ is a ring, then so is $R^{op}$, where $R^{op}$ is defined as follows. The underlying set of $R^{op}$ is precisely $R$ and addition in $R^{op}$ coincides with addition in $R$. Multiplication in $R^{op}$, denoted $\circ$, is defined by $a\circ b=ba$, where $ba$ is the product in $R$. $R^{op}$ is called the **opposite ring** of $R$.
(b) $R$ has an identity if and only if $R^{op}$ does.
(c) $R$ is a division ring if and only if $R^{op}$ is.
(d) $(R^{op})^{op}=R$.
(e) If $S$ is a ring, then $R\cong S$ if and only if $R^{op}\cong S^{op}$.
Proof: (a) $(a∘ b)∘ c=c b a=a∘ (b∘ c)$, $a\circ(b+c)=ba+ca=a\circ b+a\circ c$ and $(a+b)∘ c=ca+cb=a\circ c+b\circ c$ so $R^{op}$ is a ring.
(d) Trivial.
(b) If $1_{R}$ is the identity of $R$, then $a∘ 1_{R}=1_{R}a=a$ and $1_{R}\circ a=a 1_{R}=a$ so it is the identity of $R^{op}$.
(c) If $R$ is a division ring, then $1_{R}$ is the identity of $R^{op}$ and $a\circ a^{-1}=a^{-1}\circ a=1_{R}$ so $R^{op}$ is a division ring.
(e) If $\varphi:R\cong S$, then $\varphi(a\circ b)=\varphi(ba)=\varphi(b)\varphi(a)=\varphi(b)\circ\varphi(a)$.
### 3.1.18
Let $\mathbb{Q}$ be the field of rational numbers and $R$ any ring. If $f,g:\mathbb{Q}\to R$ are homomorphisms of rings such that $f\mid\mathbb{Z}=g\mid\mathbb{Z}$, then $f=g$.
Proof: $f(1 /n)f(n)=f(1)$ and $g(1 /n)g(n)=g(1)$ so $f(1 /n)=g(1 /n)$. 
$f(m /n)=mf(1 /n)=mg(1 /n)=g(m /n)$, so $f=g$.
## Section 3.2 Ideals
### 3.2.1
The set of all nilpotent elements in a commutative ring forms an ideal.
Proof: Let $R$ be a commutative ring and $I$ the set of nilpotent elements. By Exercise3.1.12, $\forall a,b\in I,a-b\in I$. For any $a\in I,r\in R$, if $a^{n}=0$ then $(ar)^{n}=a^{n}r^{n}=0$ so $ar\in I$. Hence $I$ is an ideal in $R$.
### 3.2.2
Let $I$ be an ideal in a commutative ring $R$ and let $\text{Rad } I = \{ r \in R \mid r^n \in I \text{ for some } n \}$. Show that $\text{Rad } I$ is an ideal.
Proof: If $a,b\in \mathrm{Rad\,}I$, suppose $a^{n},b^{m}\in I$. Then
$$
(a-b)^{n+m}=\sum_{k\leqslant m}^{}{(-1)^{k}\binom{n+m}{k}a^{n+m-k}b^{k}}+\sum_{k>n}^{}{(-1)^{k}\binom{n+m}{k}a^{n+m-k}b^{k}}.
$$
If $k\leqslant m$, then $a^{n+m-k}=a^{n}\cdot a^{m-k}\in I$, and if $k>m$, then $b^{k}=b^{m}b^{k-m}\in I$. In both cases $(-1)^{k}\binom{n+m}{k}a^{n+m-k}b^{k}\in I$, so $(a-b)^{n+m}\in I$ and $a-b\in \mathrm{Rad}\,I$.
If $a\in \mathrm{Rad}\,I$ and $r\in R$, suppose $a^{n}\in I$. Then $(ar)^{n}=a^{n}r^{n}\in I$ so $ar\in \mathrm{Rad}\,I$.
Therefore $\mathrm{Rad}\,I$ is an ideal in $R$.
### 3.2.3
If $R$ is a ring and $a \in R$, then $J = \{ r \in R \mid ra = 0 \}$ is a left ideal and $K = \{ r \in R \mid ar = 0 \}$ is a right ideal in $R$.
Proof: $\forall r,s \in J$, $(r-s)a=ra-sa=0$ so $r-s\in J$. $\forall r\in J,s \in R$, $(sr)a=s(ra)=0$ so $sr\in J$. Hence $J$ is a left ideal, and likewise $K$ is a right ideal in $R$.
### 3.2.4
If $I$ is a left ideal of $R$, then $A(I) = \{ r \in R \mid rx = 0 \text{ for every } x \in I \}$ is an ideal in $R$.
Proof: By Exercise3.2.3 $J_{a}=\{ r\in R:ra=0 \}$ is a left ideal for any $a\in R$, hence $A(I)=\bigcap_{a\in I}J_{a}$ is a left ideal in $R$.
For any $a\in A(I)$ and $r\in I$, $\forall x\in I,rx\in I\implies(ar)x=a(rx)=0$ so $ar\in A(I)$ and $A(I)$ is an ideal in $R$.
### 3.2.5
If $I$ is an ideal in a ring $R$, let $[R : I] = \{ r \in R \mid xr \in I \text{ for every } x \in R \}$. Prove that $[R : I]$ is an ideal of $R$ which contains $I$.
Proof: By definition $I\subset[R: I]$.
If $a,b\in [R:I]$ then $\forall x\in R$, $xa,xb\in I\implies x(a-b)=xa-xb\in I$ so $a-b\in I$.
If $a\in[R:I],r\in R$ then $\forall x\in R,x(ra)=(xr)a\in I$ and $xa\in I\implies x(ar)=(xa)r\in I$. Hence $ra,ar\in I$ so $[R: I]$ is an ideal in $R$.
### 3.2.6
(a) The center of the ring $S$ of all $2 \times 2$ matrices over a field $F$ consists of all matrices of the form $\begin{pmatrix} a & 0 \\ 0 & a \end{pmatrix}$.
(b) The center of $S$ is not an ideal in $S$.
(c) What is the center of the ring of all $n \times n$ matrices over a division ring?
Proof: (a) If $A=\begin{pmatrix}a & b\\c & d\end{pmatrix}$ is in the center of $S=F^{2\times 2}$, 
$$
\begin{align}
\begin{pmatrix}
a & 0\\c & 0
\end{pmatrix}=A\cdot \begin{pmatrix}
1 & 0\\0 & 0
\end{pmatrix}=\begin{pmatrix}
1 & 0\\0 & 0
\end{pmatrix}\cdot A=\begin{pmatrix}
a & b\\0 & 0
\end{pmatrix} & \implies b=c=0. \\
\begin{pmatrix}
0 & a\\0 & 0
\end{pmatrix}=A\begin{pmatrix}
0 & 1\\0 & 0
\end{pmatrix}=\begin{pmatrix}
0 & 1\\ 0 & 0
\end{pmatrix}A=\begin{pmatrix}
0 & d\\0 & 0
\end{pmatrix} & \implies a=d.
\end{align}
$$
Hence the center of $S$ is $\{ aI:a\in F \}$.
(b) The identity matrix $I$ is in the center, but the center is not the whole ring.
(c) Likewise we know the center of $R^{n\times n}$ should be $\{ aI_{n\times n}:a\in C(R)\}$.
### 3.2.7
(a) A ring $R$ with identity is a division ring if and only if $R$ has no proper left ideals.
(b) If $S$ is a ring (possibly without identity) with no proper left ideals, then either $S^2 = 0$ or $S$ is a division ring.
Proof: (a) The “only if” part is trivial. 
If $R$ has no proper left ideals, $\forall a\in R\backslash\{ 0 \}$, $Ra$ is a non-trivial left ideal, so $Ra=R$ and $a$ has a left inverse. Hence $R$ is a division ring.
(b) If $S^{2}\neq 0$, take $a\in S$ such that $Sa\neq \{ 0 \}$, then $Sa=S$ so $\exists e\in S,ea=a$.
Note that $I=\{ x\in S:Sx=0 \}$ is a left ideal in $S$, and $a\not\in I$, so $I=\{ 0 \}$ and $\forall x\in S\backslash\{ 0 \},Sx=S$.
By Exercise3.2.3 $J_{x}=\{ r\in S:rx=0 \}$ is a left ideal, and $Jx\neq R$ (since $Sx=S$), so $Jx=\{ 0 \}$ therefore $S$ has no zero divisors.
For any $a\neq 0$, $Sa=S$ so we can take $e_{a}\neq 0$ such that $e_{a}a=a$. $Se_{a}=S$ so there exists $b\neq 0,be_{a}=a$. Note that $(a-b)a=a^{2}-ba=be_{a}a-be_{a}a=0$, hence $a=b$ and $e_{a}a=ae_{a}=a$. Therefore $S$ has an identity, and by (a) $S$ is a division ring.
### 3.2.8
Let $R$ be a ring with identity and $S$ the ring of all $n \times n$ matrices over $R$. $J$ is an ideal of $S$ if and only if $J$ is the ring of all $n \times n$ matrices over $I$ for some ideal $I$ in $R$.
Proof: The “if” part is trivial.
Let $I=\{ A_{1,1}:A\in J \}$, then $\forall A_{1,1},B_{1,1}\in I$, $A-B\in J$ so $A_{1,1}-B_{1,1}\in I$.
For any $A_{1,1}\in I$ and $r\in R$, $A(r 1_{n\times n}),(r 1_{n\times n})A\in J$ so $rA_{1,1},A_{1,1}r\in I$. Hence $I$ is an ideal in $R$.
Let $E_{i,j}$ be the $n\times n$ matrix with $1_{R}$ at $(i,j)$ and $0$ elsewhere.
For any $A\in J$, $E_{1,i}AE_{j,1}\in J$ so $A_{i,j}=(E_{1,i}AE_{j,1})_{1,1}\in I\implies J\subset I^{n\times n}$.
For any $A\in I^{n\times n}$, suppose $A_{i,j}=B^{(i,j)}_{1,1}$ where $B^{(i,j)}\in J$, then
$$
A=\sum_{i,j}^{}{E_{i,1}B^{(i,j)}E_{j,1}}\in J.
$$
Hence $J=I^{n\times n}$.
### 3.2.9
Let $S$ be the ring of all $n \times n$ matrices over a division ring $D$.
(a) $S$ has no proper ideals (that is, 0 is a maximal ideal).
(b) $S$ has zero divisors. Consequently, (i) $S \cong S/0$ is not a division ring and (ii) 0 is a prime ideal which does not satisfy condition (1) of Theorem 2.15.
Proof: By Exercise3.2.7(a) $D$ has no proper ideals, so by Exercise3.2.8 $S$ has no proper ideals.
(b) Following the notation in Exercise3.2.8, $E_{1,1}E_{2,2}=0$ but $E_{1,1},E_{2,2}\neq 0$.
### 3.2.10
(a) Show that $\mathbb{Z}$ is a principal ideal ring.
(b) Every homomorphic image of a principal ideal ring is also a principal ideal ring.
(c) $\mathbb{Z}_m$ is a principal ideal ring for every $m > 0$.
Proof: (a) Every ideal is a subgroup of $\mathbb{Z}$, which is cyclic. Clearly $\langle m \rangle=(m)$ so every ideal is a principal ideal.
(b) Suppose $\varphi:R\to S$ is an epimorphism and $R$ is a principal ideal ring.
For any ideal $J$ in $S$, $\varphi ^{-1}(J)$ is an ideal in $R$, so $\varphi ^{-1}(J)=(r)$ for some $r\in R$. $(r)=\left\{  nr+ar+br+\sum_{}^{}{s_{i}rt_{i}}  \right\}$, so 
$$
J=\varphi((r))=\left\{  n\varphi(r)+\varphi(a)\varphi(r)+\varphi(r)\varphi(b)+\sum_{}^{}{\varphi(s_{i})\varphi(r)\varphi(t_{i})}  \right\}=(\varphi(r)),
$$
since $\varphi$ is surjective.
(c) $\pi:\mathbb{Z}\to \mathbb{Z}_{m},n\mapsto \bar{n}$ is an epimorphism of rings.
### 3.2.11
If $N$ is the ideal of all nilpotent elements in a commutative ring $R$ (see Exercise 1), then $R/N$ is a ring with no nonzero nilpotent elements.
Proof: If $aN\in R /N$ is nilpotent, then $a^{n}\in N$ for some $n>0$. Suppose $a^{n}=b\in N$ then $b^{m}=0$ for some $m>0$, so $a^{nm}=0$. Hence $a\in N$ and $aN=N$.
### 3.2.12
Let $R$ be a ring without identity and with no zero divisors. Let $S$ be the ring whose additive group is $R \times \mathbb{Z}$ as in the proof of Theorem 1.10. Let $A = \{ (r,n) \in S \mid rx + nx = 0 \text{ for every } x \in R \}$.
(a) $A$ is an ideal in $S$.
(b) $S/A$ has an identity and contains a subring isomorphic to $R$.
(c) $S/A$ has no zero divisors.
[[TODO]]

### 3.2.13
Let $f : R \to S$ be a homomorphism of rings, $I$ an ideal in $R$, and $J$ an ideal in $S$.
(a) $f^{-1}(J)$ is an ideal in $R$ that contains $\text{Ker } f$.
(b) If $f$ is an epimorphism, then $f(I)$ is an ideal in $S$. If $f$ is not surjective, $f(I)$ need not be an ideal in $S$.
Proof: (a) Clearly $\mathrm{Ker}f\subset f^{-1}(J)$.
$\forall a,b\in f^{-1}(J)$, $f(a),f(b)\in J\implies f(a-b)=f(a)-f(b)\in J$.
$\forall a\in f^{-1}(J),r\in R$, $f(a)\in J$ so $f(ar)=f(a)f(r)\in J$ and $f(ra)=f(r)f(a)\in J$.
Hence $f^{-1}(J)$ is an ideal in $R$.
(b) If $f$ is an epimorphism, $f(I)$ is already a subgroup of $S$.
For any $f(a)\in f(I)$ and $s \in S$, take $r\in f^{-1}(s)$, then $ar,ra\in I$ so $f(a)s=f(ar)\in f(I)$ and $sf(a)=f(ra)\in f(I)$. Hence $f(I)$ is an ideal.
If $f$ is not surjective, e.g. $f:\mathbb{Z}\to \mathbb{Q},n\mapsto n$, then $f$ is a homomorphism of rings, but $f(\mathbb{Z})=\mathbb{Z}$ is not an ideal in the field $\mathbb{Q}$.
### 3.2.14
If $P$ is an ideal in a not necessarily commutative ring $R$, then the following conditions are equivalent.
(a) $P$ is a prime ideal.
(b) If $r,s \in R$ are such that $rRs \subset P$, then $r \in P$ or $s \in P$.
(c) If $(r)$ and $(s)$ are principal ideals of $R$ such that $(r)(s) \subset P$, then $r \in P$ or $s \in P$.
(d) If $U$ and $V$ are right ideals in $R$ such that $UV \subset P$, then $U \subset P$ or $V \subset P$.
(e) If $U$ and $V$ are left ideals in $R$ such that $UV \subset P$, then $U \subset P$ or $V \subset P$.
Proof: (a)=>(b): If $rRs\subset P$, then
$$
(RrR)(RsR)\subset R(rRs)R\subset RPR\subset P
$$
so either $RrR\subset P$ or $RsR\subset P$. Suppose $RrR\subset P$, then $(r)^{3}\subset RrR\subset P$ so $(r)\subset P$.
(b)=>(c): If $(r)(s)\subset P$, then $rRs\subset (r)(s)\subset P$ so $r\in P$ or $s\in P$.
(c)=>(d): If $UV\subset P$ where $U,V$ are right ideals, suppose $V\not\subset P$ then take $v\in V\backslash P$. For any $u\in U$, $uRv,uRvR,RuRv,RuRvR\subset UV\subset P$, hence $(u)(v)\subset P$. Since $v\not\in P$, by (c) $u\in P$ so $U\subset P$.
(d)=>(a) is trivial. Likewise (c)=>(e)=>(a).
### 3.2.15
The set consisting of zero and all zero divisors in a commutative ring with identity contains at least one prime ideal.
Proof: Let $S$ be the set of elements that are not zero divisors, then $S$ is multiplicative: if $a,b\in S$, suppose $abr=0$ then $a(br)=0$ implies $br=0$ so $r=0$, and likewise $rab=0$ implies $r=0$, hence $ab\in S$.
Clearly $0\not\in S$, so apply the lemma below to $S$, we obtain a prime ideal $P$ disjoint with $S$.
Lemma: Let $R$ be a commutative ring, and $S\subset R$ be a multiplicative subset such that $0\not\in S$. Then there exists prime ideal $P\subset R$ such that $P\cap S=\emptyset$.
Proof: Let $\mathscr{A}=\{ I\subset R:I\cap S=\emptyset\text{ and } I \text{ is an ideal} \}$. Clearly $0\not\in S$ so $\mathscr{A}$ is non-empty. For any chain $\{ I_{\alpha}:\alpha \in J \}$ in $\mathscr{A}$, let $I=\bigcup_{\alpha \in J}I_{\alpha}$, then $I\cap S=\emptyset$ and $I$ is an ideal in $R$. Hence every chain has an upper bound.
By Zorn’s Lemma there is a maximal element $P\in \mathscr{A}$, we show that $P$ is prime: If $ab\in P$ while $a,b\not\in P$, then $P\subsetneq P+(a),P+(b)$, so by maximality both $P+(a)$ and $P+(b)$ does not belong to $\mathscr{A}$. Take $x\in P+(a)\cap S$ and $y\in P+(b)\cap S$, and suppose $x=p_{1}+r_{1}a,y=p_{2}+r_{2}b$. Note that $xy\in S$, but
$$
xy=(p_{1}+r_{1}a)(p_{2}+r_{2}b)=p_{1}p_{2}+p_{2}(r_{1}a)+p_{1}(r_{2}b)+ab(r_{1}r_{2})\in P.
$$
This contradicts with $P\in \mathscr{A}$. 
Hence $P$ is a prime ideal that is disjoint with $S$.
Another proof can be given by considering the ring of quotients $S^{-1}R$: Take a prime (maximal) ideal $P\subset S^{-1}R$, and consider $\psi=\pi\iota$ where $\iota:R\to S^{-1}R$ and $\pi:S^{-1}R \to S^{-1}R /P$, then $\mathrm{Ker}\psi \subset R$ is a prime ideal (since $S^{-1}R /P$ is an integral domain). Elements of $S$ are units in $S^{-1}R$ so not in $\mathrm{Ker}\pi$. Hence $\mathrm{Ker}\psi$ is a prime ideal disjoint with $S$.
Corollary: Let $R$ be a commutative ring, $I$ an ideal in $R$ and $S\subset R$ a multiplicative subset such that $I\cap S=\emptyset$. Then there exists prime ideal $P\supset I$ such that $P\cap S=\emptyset$. (Just apply the lemma to $R /I$ and $\pi(S)$).
### 3.2.16
Let $R$ be a commutative ring with identity and suppose that the ideal $A$ of $R$ is contained in a finite union of prime ideals $P_1 \cup \dots \cup P_n$. Show that $A \subset P_i$ for some $i$. 
Proof: We prove by induction on $n$. If $A\cap P_{i}\subset \bigcup_{j\neq i}P_{j}$ for some $i$, then $A\subset(A\cap P_{i})\cup \bigcup_{j\neq i}P_{j}=\bigcup_{j\neq i}P_{j}$, so by induction $A\subset P_{j}$ for some $j\neq i$.
Otherwise suppose $A\cap P_{i}\not\subset \bigcup_{j\neq i}P_{j}\forall i\leqslant n$, take $a_{i}\in(A\cap P_{i})\backslash\bigcup_{j\neq i}P_{j}$. Consider $r=a_{1}+a_{2}a_{3}\cdots a_{n}\in A\subset \bigcup P_{i}$. Then $P_{i}$ are prime so $a_{2}a_{3}\cdots a_{n}\in \bigcup_{j\neq i}P_{i}\backslash P_{1}$ and $a_{1}\in P_{1}\backslash\bigcup_{i>1}P_{i}$, a contradiction.
### 3.2.17
Let $f : R \to S$ be an epimorphism of rings with kernel $K$.
(a) If $P$ is a prime ideal in $R$ that contains $K$, then $f(P)$ is a prime ideal in $S$.
(b) If $Q$ is a prime ideal in $S$, then $f^{-1}(Q)$ is a prime ideal in $R$ that contains $K$.
(c) There is a one-to-one correspondence between the set of all prime ideals in $R$ that contain $K$ and the set of all prime ideals in $S$, given by $P \mapsto f(P)$.
(d) If $I$ is an ideal in a ring $R$, then every prime ideal in $R/I$ is of the form $P/I$, where $P$ is a prime ideal in $R$ that contains $I$.
Proof: (a) By Exercise3.2.13, $f(P)$ is already an ideal.
If $AB\subset f(P)$ where $A,B$ are ideals in $S$, $P=f^{-1}(f(P))$ (since $\mathrm{Ker}f\subset P$), so $f^{-1}(A)f^{-1}(B)\subset f^{-1}(AB)\subset P$. $P$ is prime so either $f^{-1}(A)\subset P$ or $f^{-1}(B)\subset P$. $f$ is surjective so either $A\subset f(P)$ or $B\subset f(P)$, hence $f(P)$ is a prime ideal.
(b) If $A,B$ are ideals in $R$ such that $AB\subset f^{-1}(Q)$, then $f(A)f(B)\subset f(AB)\subset f(f^{-1}(Q))=Q$, so $f(A)\subset Q\vee f(B)\subset Q$ which implies $A\subset f^{-1}(Q)\vee B\subset f^{-1}(Q)$. Hence $f^{-1}(Q)$ is a prime ideal.
(c) Combine (a) and (b).
(d) Apply (c) to the projection $\pi:R\to R /I$.
### 3.2.18
An ideal $M \neq R$ in a commutative ring $R$ with identity is maximal if and only if for every $r \in R - M$, there exists $x \in R$ such that $1_R - rx \in M$.
Proof: If $M$ is maximal, then $\forall r\in R\backslash M$, $(M,r)=R\ni 1_{R}$ so $1_{R}-rx\in M$ for some $x\in R$.
If $M$ is not maximal, suppose $M\subsetneq I\subsetneq R$, then $\forall x\in R,1\not\in rx+M\subset I$.
### 3.2.19
The ring $E$ of even integers contains a maximal ideal $M$ such that $E/M$ is _not_ a field.
Proof: $2\mathbb{Z} /4\mathbb{Z}$ does not have an identity.

### 3.2.20
In the ring $\mathbb{Z}$ the following conditions on a nonzero ideal $I$ are equivalent: (i) $I$ is prime; (ii) $I$ is maximal; (iii) $I = (p)$ with $p$ prime.
Proof: (ii)=>(i) See Theorem3.2.19; (iii)=>(ii) By Exercise3.2.18 and Bezout’s theorem; (i)=>(iii) $\mathbb{Z}$ is a PID so if $I=(m)$ is prime and $m=ab$, then $a\in I\vee b\in I$ so $a=m\vee b=m$, hence $m$ is prime.

### 3.2.21
Determine all prime and maximal ideals in the ring $\mathbb{Z}_m$.
Solution: By Exercise3.2.17(d) every prime ideal in $\mathbb{Z} /m\mathbb{Z}$ is of the form $P /m\mathbb{Z}$ where $P$ is a prime ideal containing $m\mathbb{Z}$.
If $m$ is not a prime, the prime (and maximal) ideals of $\mathbb{Z}_{m}$ are $p\mathbb{Z} /m\mathbb{Z}$ where $p$ is a prime divisor of $m$.
If $m$ is a prime, the only prime (and maximal) ideal of $\mathbb{Z}_{m}$ is $(0)$.
### 3.2.22
(a) If $R_1, \dots, R_n$ are rings with identity and $I$ is an ideal in $R_1 \times \dots \times R_n$, then $I = A_1 \times \dots \times A_m$, where each $A_i$ is an ideal in $R_i$.
(b) Show that the conclusion of (a) need not hold if the rings $R_i$ do not have identities.
Proof: (a) Let $\pi_{k}:\prod_{}^{}{R_{i}}\to R_{k}$ be the canonical epimorphism, and $A_{k}=\pi_{k}(I)$, then $I\subset A_{1}\times\cdots\times A_{n}$. Let $e_{k}=(0,\cdots,0,1_{R_{k}},\cdots,0)$. For any $(a_{1},\cdots,a_{n})\in A_{1}\times\cdots\times A_{n}$, suppose $a_{k}=\pi_{k}(r_{k})$ where $r_{k}\in I$, then
$$
(a_{1},\cdots,a_{n})=\sum_{k=1}^{n}{r_{k}e_{k}}\in I.
$$
Hence $I=A_{1}\times\cdots\times A_{n}$.
(b) Consider $R_{1}=R_{2}=2\mathbb{Z}$, then $I=\{ (x,y)\in (2\mathbb{Z})^{2}:x+y\equiv 0\pmod 4\}$ is an ideal of $R_{1}\times R_{2}$ since $xu+yv\equiv 0\pmod 4\forall x,y,u,v\in 2\mathbb{Z}$. However, $(0,0),(2,2)\in I$ but $(2,0)\not\in I$ so $I$ is not in the form $I=A_{1}\times A_{2}$.
### 3.2.23
An element $e$ in a ring $R$ is said to be **idempotent** if $e^2 = e$. An element of the center of the ring $R$ is said to be **central**. If $e$ is a central idempotent in a ring $R$ with identity, then
(a) $1_R - e$ is a central idempotent;
(b) $eR$ and $(1_R - e)R$ are ideals in $R$ such that $R = eR \times (1_R - e)R$.
Proof: (a) $(1_{R}-e)^{2}=1_{R}^{2}-1_{R}e-e 1_{R}+e^{2}=1_{R}-e$ so it is idempotent. The center is a sub-ring so $1_{R}-e$ is central.
(b) If $x=er=(1_{R}-e)s \in eR\cap(1_{R}-e)R$, then $x=eer=e(1_{R}-e)s=0s=0$ so $eR\cap(1_{R}-e)R=(0)$. For any $r\in R$, $r=er+(1_{R}-e)r\in eR+(1_{R}-e)R$, hence $R=eR\times(1_{R}-e)R$.

### 3.2.24
Idempotent elements $e_1, \dots, e_n$ in a ring $R$ are said to be **orthogonal** if $e_ie_j = 0$ for $i \neq j$. If $R, R_1, \dots, R_n$ are rings with identity, then the following conditions are equivalent:
(a) $R \cong R_1 \times \dots \times R_n$.
(b) $R$ contains a set of orthogonal central idempotents $\{e_1, \dots, e_n\}$ such that $e_1 + e_2 + \dots + e_n = 1_R$ and $e_iR \cong R_i$ for each $i$.
(c) $R$ is the internal direct product $R = A_1 \times \dots \times A_n$ where each $A_i$ is an ideal of $R$ such that $A_i \cong R_i$.
Proof: (a)=>(b) Suppose $\varphi:R\cong R_{1}\times\cdots\times R_{n}$ and $\pi_{k}:R_{1}\times \cdots\times R_{n}\to R_{k}$ be the canonical epimorphism. Let $e_{k}=\varphi ^{-1}((0,\cdots,1_{R_{k}},\cdots,0))$, then $\varphi(e_{1}+\cdots+e_{n})=(1,\cdots,1)=\varphi(1_{R})$ so $e_{1}+\cdots+e_{n}=1_{R}$, and $\pi_{k}\varphi|_{e_{k}R}$ is an isomorphism $e_{k}R\cong R_{k}$.
(b)=>(c) Let $A_{k}=e_{k}R=(e)$, then $R=A_{1}+\cdots+A_{n}$. If $x\in A_{k}\cap\left( \bigcup_{j\neq k} \right)A_{j}$, suppose $x=e_{k}a_{k}=\sum_{j\neq k}^{}{e_{j}a_{j}}$, then $x=e_{k}e_{k}a_{j}=\sum_{j\neq k}^{}{e_{k}e_{j}a_{j}}=0$ so $A_{k}\cap\left( \bigcup_{j\neq k}A_{j} \right)=(0)$ and $R=A_{1}\times\cdots\times A_{n}$.
### 3.2.25
If $m \in \mathbb{Z}$ has a prime decomposition $m = p_1^{k_1} \cdots p_t^{k_t}$ ($k_i > 0$; $p_i$ distinct primes), then there is an isomorphism of rings $\mathbb{Z}_m \cong \mathbb{Z}_{p_1^{k_1}} \times \dots \times \mathbb{Z}_{p_t^{k_t}}$. 
Proof: Use Corollary3.2.27 on $\mathbb{Z}$ and its ideals $p_{i}^{k_{i}}\mathbb{Z}$.
### 3.2.26
If $R = \mathbb{Z}$, $A_1 = (6)$ and $A_2 = (4)$, then the map $\theta : R/A_1 \cap A_2 \to R/A_1 \times R/A_2$ of Corollary 2.27 is not surjective.
Proof: $(6)\cap(4)=(12)$, and $\mathbb{Z} /(12)$ has $12$ elements while $\mathbb{Z} /(6)\times \mathbb{Z} /(4)$ has $24$ elements.
## Section 3.3 Factorization in Commutative Rings
### 3.3.1
A nonzero ideal in a principal ideal domain is maximal if and only if it is prime.
Proof: PID is an integral domain, so maximal implies prime. If an ideal $(p)$ is prime, then $p$ is prime so it is irreducible. Hence $(p)$ is maximal in the set of proper principal ideals, so $(p)$ is maximal.
### 3.3.2
Kaplansky’s Theorem: An integral domain $R$ is a unique factorization domain if and only if every nonzero prime ideal in $R$ contains a nonzero principal ideal that is prime.
Proof: $\implies:$ If $R$ is a UFD, then for any nonzero prime ideal $P$, take $a\in P$ then $a$ is nonzero and non-unit. Consider its unique factorization $a=c_{1}\cdots c_{n}$ where $c_{1},\cdots,c_{n}$ are irreducible, then $a\in P$ and $P$ is prime implies $c_{i}\in P$ for some $1\leqslant i\leqslant n$. Hence $(c_{i})\subset P$ is a nonzero prime ideal.
$\impliedby:$ Let $T=\{ u\in R:u\text{ invertible} \}\cup \{ p_{1}\cdots p_{n}:p_{i} \text{ is prime} \}$, then $0\not\in T$ and $T$ is multiplicative.
Note that $ab\in T\implies a,b\in T$: if $ab$ is a unit, then $R=(ab)\subset(a),(b)$ so $a,b$ are units; if $ab=p_{1}\cdots p_{m}$ suppose $p_{1}\cdots p_{k}$ divides $a$ and $p_{k+1}\cdots p_{m}$ divides $b$, then $a=\alpha p_{1}\cdots p_{k}$ and $b=\beta p_{k+1}\cdots p_{m}$. Since $R$ is an integral domain, $\alpha\beta=1$ so $\alpha,\beta$ are units and $a,b\in T$.
If $R$ is not a UFD, then there is a nonzero $x\in R\backslash T$. Note that $(x)\cap T=\emptyset$, since otherwise $rx\in T$ implies $r,x\in T$.
By the lemma in Exercise3.2.15, there is a prime ideal $P\subset R$ such that $(x)\subset P$ (so it is nonzero) and $P\cap T=\emptyset$. This contradicts the assumption that every nonzero prime ideal contains a prime element.
### 3.3.3
Let $R$ be the subring $\{a + b\sqrt{10} \mid a,b \in \mathbb{Z}\}$ of the field of real numbers.
(a) The map $N: R \to \mathbb{Z}$ given by $a + b\sqrt{10} \mapsto (a + b\sqrt{10})(a - b\sqrt{10}) = a^2 - 10b^2$ is such that $N(uv) = N(u)N(v)$ for all $u,v \in R$ and $N(u) = 0$ if and only if $u = 0$.
(b) $u$ is a unit in $R$ if and only if $N(u) = \pm 1$.
(c) $2, 3, 4 + \sqrt{10}$ and $4 - \sqrt{10}$ are irreducible elements of $R$.
(d) $2, 3, 4 + \sqrt{10}$ and $4 - \sqrt{10}$ are not prime elements of $R$.
Proof: (a) If $u=a+b\sqrt{ 10 }$ and $v=c+d\sqrt{ 10 }$ then
$$
\begin{align}
N(uv) & =N(ac+10bd+(ad+bc)\sqrt{ 10 })=(ac+10bd)^{2}-10(ad+bc)^{2} \\
 & =a^{2}c^{2}+100b^{2}d^{2}-10a^{2}d^{2}-10b^{2}c^{2}=(a^{2}-10b^{2})(c^{2}-10d^{2}).
\end{align}
$$
Since $\sqrt{ 10 }$ is irrational, $N(u)=0\iff u=0$.
(b) If $u$ has an inverse $u ^{-1}$, then $1=N(1)=N(u)N(u ^{-1})$. Since $N(u),N(u ^{-1})\in \mathbb{Z}$, $N(u)=\pm 1$.
(c) Note that $a^{2}\equiv 0,1,4,-1,-4,5\pmod {10}$ so $N(u)\neq\pm 2,\pm 3\forall u\in R$.
If $2=uv$ then $N(u)N(v)=4$, but $N(u)\neq\pm 2$ so $N(u)=\pm 1$ or $N(v)=\pm 1$, which implies either $u$ or $v$ is a unit. Hence $2$ is irreducible. Likewise $N(3)=3\times 3,N(4+\sqrt{ 10 })=N(4-\sqrt{ 10 })=2\times 3$ are irreducible.
(d) $3\times 2=6=(4-\sqrt{ 10 })\times(4+\sqrt{ 10 })$, so they are not prime elements.
### 3.3.4
Show that in the integral domain of Exercise 3 every element can be factored into a product of irreducibles, but this factorization need not be unique (in the sense of Definition 3.5 (ii)).
Proof: By 3.3.3(d) the factorization is not unique.
If $u$ is a non-unit then $\lvert N(u) \rvert\geqslant 2$, so if $a$ is a non-zero non-unit, then $a$ cannot be written as the product of more than $\log_{2}\lvert N(a) \rvert+1$ non-units, hence there is a finite factorization.
### 3.3.5
Let $R$ be a principal ideal domain.
(a) Every proper ideal is a product $P_1P_2 \cdots P_n$ of maximal ideals, which are uniquely determined up to order.
(b) An ideal $P$ in $R$ is said to be *primary* if $ab \in P$ and $a \notin P$ imply $b^n \in P$ for some $n$. Show that $P$ is primary if and only if for some $n$, $P = (p^n)$, where $p \in R$ is prime (= irreducible) or $p = 0$.
(c) If $P_1, P_2, \dots, P_n$ are primary ideals such that $P_i=(p_i^{n_i})$ and the $p_i$ are distinct primes, then $P_1P_2 \cdots P_n = P_1 \cap P_2 \cap \cdots \cap P_n$.
(d) Every proper ideal in $R$ can be expressed (uniquely up to order) as the intersection of a finite number of primary ideals.
Proof: (a) If $I=(m)$ is a proper ideal, then $m$ is a nonzero non-unit, so it has a unique factorization $m=p_{1}p_{2}\cdots p_{n}$ where $p_{i}$ are irreducible. Let $P_{i}=(p_{i})$ then $I=P_{1}\cdots P_{n}$ and $P_{i}$ are maximal.
(b) $P=(0)$ is clearly primary. If $P=(p^{n})$ where $p$ is prime, then $ab\in P$ and $a\not\in P$ implies there are fewer than $n$ associates of $p$ in the factorization of $a$, but at least $n$ in that of $ab$, so $p\mid b$. Hence $b^{n}\in P$.
If $P=(m)$ is primary and $m\neq 0$, take an irreducible divisor $p\mid m$. Suppose $m=ap$, then $a\not\in(m)$ since $p$ is a non-unit, hence $p^{n}\in(m)$ for some $n>0$. Let $p^{n}=bm$, then $p^{n}=bm=abp$, so $a=\alpha p^{t}$ where $\alpha$ is a unit, and $(m)=(p^{t+1})$.
(c) Clearly $P_{1}\cdots P_{n}\subset P_{k}$ so $P_{1}\cdots P_{n}\subset \bigcap P_{k}$. If $c\in P_{1}\cap\cdots\cap P_{n}$, we prove by induction that $p_{1}^{n_{1}}\cdots p_{k}^{n_{k}}\mid c$, then $c\in P_{1}\cdots P_{n}$ so $P_{1}\cdots P_{n}=P_{1}\cap\cdots\cap P_{n}$.
If $p_{1}^{n_{1}}\cdots p_{k-1}^{n_{k-1}}\mid c$, suppose $c=rp_{1}^{n_{1}}\cdots p_{k-1}^{n_{k-1}}$ where $r\in R$, then $p_{k}\mid c$ implies $p_{k}\mid r$. Likewise suppose $r=r_{1}p$ and continue the process we obtain $p_{k}^{n_{k}}\mid r$, so $p_{1}^{n_{1}}\cdots p_{k}^{n_{k}}\mid c$.
(d) For every proper ideal $I=(m)$ where $m$ is nonzero non-unit, consider its factorization $m=p_{1}^{n_{1}}p_{2}^{n_{2}}\cdots p_{k}^{n_{k}}$ where $p_{i}$ are distinct primes. Let $P_{i}=(p_{i}^{n_{i}})$ be primary ideals, then by (c) $I=P_{1}\cdots P_{k}=P_{1}\cap\cdots\cap P_{k}$ is the finite intersection of primary ideals.
### 3.3.6
(a) If $a$ and $n$ are integers, $n > 0$, then there exist integers $q$ and $r$ such that $a = qn + r$, where $|r| \leqslant n/2$.
(b) The Gaussian integers $\mathbb{Z}[i]$ form a Euclidean domain with $\varphi(a + bi) = a^2 + b^2$. 
Proof: (a) Trivial.
(b): Note that $\varphi(uv)=\varphi(u)\varphi(v)$ and $\varphi(u)\geqslant 1$, so $\varphi(a)\leqslant \varphi(ab)$ for any $a,b\neq 0$.
For any $x,y\in \mathbb{Z}[i]$, take $q\in \mathbb{Z}[i]$ such that $\varphi(y-qx)$ is minimal. Let $r=y-xq$, we show that $\lvert r \rvert<\lvert x \rvert$:
By minimality of $\varphi(r)$, $\lvert r \rvert\leqslant \lvert r-x \rvert,\lvert r+x \rvert,\lvert r-ix \rvert,\lvert r+ix \rvert$, so 
$$
\pm(x \bar{r}+r\bar{x})\leqslant\lvert x \rvert^{2} ,\pm(-ix\bar{r}+ir\bar{x})\leqslant\lvert x \rvert ^{2}
$$
Hence $2\lvert \mathrm{Re}(x \bar{r}) \rvert\leqslant \lvert x \rvert^{2}$ and $2\lvert \mathrm{Im}(x\bar{r}) \rvert\leqslant \lvert x \rvert^{2}$, and
$$
\lvert x \rvert^{2} \cdot \lvert r \rvert^{2} =\lvert x\bar{r} \rvert^{2} =\mathrm{Re}(x\bar{r})^{2}+\mathrm{Im}(x\bar{r})^{2}\leqslant \frac{1}{2}\lvert x \rvert ^{4}.
$$
Therefore $\lvert r \rvert\leqslant \lvert x \rvert /\sqrt{ 2 }<\lvert x \rvert$, so $\mathbb{Z}[i]$ is indeed a Euclidean domain.
### 3.3.7
What are the units in the ring of Gaussian integers $\mathbb{Z}[i]$?
Solution: Note that $\varphi(uv)=\varphi(u)\varphi(v)$ since
$$
\varphi((a+bi)(c+di))=(ac-bd)^{2}+(ad+bc)^{2}=(a^{2}+b^{2})(c^{2}+d^{2})=\varphi(a+bi)\varphi(c+di).
$$
Hence $u$ has an inverse $u ^{-1}$ implies $\varphi(u)\varphi(u ^{-1})=\varphi(1)=1$ so $\varphi (u)=1$. Therefore the only units of $\mathbb{Z}[i]$ are $\pm1$ and $\pm i$.
### 3.3.8
Let $R$ be the following subring of the complex numbers: $R = \{ a + b(1 + \sqrt{19} i)/2 \mid a,b \in \mathbb{Z} \}$. Then $R$ is a principal ideal domain that is not a Euclidean domain.
Proof: Let $\omega=\frac{1+\sqrt{ 19 }i}{2}$, then $\omega^{2}-\omega+5=0$ so $R=\mathbb{Z}[\omega]$ is indeed a ring.
$R$ is not a Euclidean domain: 
Consider the norm $N(\alpha)=\lvert \alpha \rvert^{2}$, then $N(\alpha\beta)=N(\alpha)N(\beta)$ and $N(\alpha)\geqslant 1$, so $\alpha$ is a unit is equivalent to $N(\alpha)=1$. Hence the only units of $R$ are $\pm 1$.
Note that $\pm 2,\pm 3$ are irreducible in $R$, since the equations
$$
N(a+b\omega)-2=\left( a+\frac{b}{2} \right)^{2}+ \frac{19b^{2}-8}{4}=0,\quad N(a+b\omega)-3=\left( a+\frac{b}{2} \right)^{2}+\frac{10b^{2}-12}{4}=0
$$
have no solutions in $\mathbb{Z}$.
If $R$ is a Euclidean domain with $\varphi:R\backslash\{ 0 \}\to \mathbb{N}$, suppose $m$ is a nonzero non-unit such that $\varphi(m)$ is minimal. Take $q,r\in R$ such that $2=mq+r$, with $r=0$ or $\varphi(r)<\varphi(m)$. The minimality of $\varphi(m)$ implies $r=0,\pm 1$, so $mq=1,2,3$. Since $2,3$ are irreducible, $m=\pm 2,\pm 3$.
Similarly, take $q^{\prime},r^{\prime}\in R$ such that $\omega=mq^{\prime}+r^{\prime}$, then $mq^{\prime}=\omega,\omega+1,\omega-1$, but none of which is divisible by $2$ or $3$, a contradiction.
$R$ is a PID:
Use Dedekind-Hasse norm.
Or see [this site](https://webspace.maths.qmul.ac.uk/r.a.wilson/pubs_files/PIDnotEDv4.pdf) for an elementary proof.
### 3.3.9
Let $R$ be a unique factorization domain and $d$ a nonzero element of $R$. There are only a finite number of distinct principal ideals that contain the ideal $(d)$. 
Proof: Consider the unique factorization $d=c_{1}c_{2}\cdots c_{n}$ where $c_{i}$ are irreducible, then for any principal ideal $(k)$ that contains $(d)$, $k\mid d$ so $k=\alpha c_{i_{1}}\cdots c_{i_{t}}$ for some $1\leqslant i_{1}<\cdots<i_{k}\leqslant n$ and unit $\alpha$. Hence $(k)=(c_{i_{1}}\cdots c_{i_{k}})$ and there are at most $2^{n}$ distinct principal ideals.
### 3.3.10
If $R$ is a unique factorization domain and $a,b \in R$ are relatively prime and $a \mid bc$, then $a \mid c$.
Proof: If $a$ is zero or a unit $a\mid c$ is trivial. Otherwise consider the unique factorization $a=p_{1}p_{2}\cdots p_{n}$ where $p_{i}$ are irreducible (hence prime), we prove by induction that $p_{1}\cdots p_{k}\mid c$:
If $c=rp_{1}\cdots p_{k-1}$ for some $r\in R$, then $p_{k}\cdots p_{n}\mid br$. Since $a,b$ are relatively prime, $p_{k}$ is a non-unit and $p_{k}\mid a$ implies $p_{k}\nmid b$, so $p_{k}\mid r$. Hence $p_{1}\cdots p_{k}\mid c$.
### 3.3.11
Let $R$ be a Euclidean ring and $a \in R$. Then $a$ is a unit in $R$ if and only if $\varphi(a) = \varphi(1_R)$.
Proof: Note that $\varphi(1_{R})\leqslant\varphi(1_{R}a)=\varphi(a)$ for all $a\in R\backslash\{ 0 \}$.
If $\varphi(a)=\varphi(1_{R})$, then there exist $q,r\in R$ such that $1_{R}=aq+r$ with $r=0$ or $\varphi(r)<\varphi(a)=\varphi(1_{R})$. Since $\varphi(r)<\varphi(1_{R})$ is impossible, $r=0$ and $q$ is the inverse of $a$.
If $a$ is a unit in $R$, then $\varphi(a)\leqslant \varphi(a a^{-1})=\varphi(1_{R})$. Combined with $\varphi(1_{R})\leqslant \varphi(a)$ we obtain $\varphi(a)=\varphi(1_{R})$.
### 3.3.12
Every nonempty set of elements (possibly infinite) in a commutative principal ideal ring with identity has a greatest common divisor.
Proof: Given a set of elements $X$ in $R$, consider the ideal $I=(X)$. $R$ is a principal ideal ring so $I=(d)$ for some $d\in R$. For any $a\in X$, $a\in(d)$ implies $d\mid a$. If $c\mid a\forall a\in X$, then $(c)$ contains every element of $X$, so $(c)\subset(X)=(d)$ which implies $c\mid d$. Hence $d$ is the GCD of $X$.
### 3.3.13
(Euclidean algorithm). Let $R$ be a Euclidean domain with associated function $\varphi : R - \{0\} \to \mathbb{N}$. If $a,b \in R$ and $b \neq 0$, here is a method for finding the greatest common divisor of $a$ and $b$. By repeated use of Definition 3.8(ii) we have:
$$
\begin{align}
a = q_0b + r_1, \quad  & \text{with} \quad r_1 = 0 \quad \text{or} \quad \varphi(r_1) < \varphi(b); \\
 b = q_1r_1 + r_2, \quad  & \text{with} \quad r_2 = 0 \quad \text{or} \quad \varphi(r_2) < \varphi(r_1); \\
 r_1 = q_2r_2 + r_3, \quad  & \text{with} \quad r_3 = 0 \quad \text{or} \quad \varphi(r_3) < \varphi(r_2); \\
 \vdots \\
 r_k = q_{k+1}r_{k+1} + r_{k+2}, \quad  & \text{with} \quad r_{k+2} = 0 \quad \text{or} \quad \varphi(r_{k+2}) < \varphi(r_{k+1});  \\
\vdots 
\end{align}
$$
Let $r_0 = b$ and let $n$ be the least integer such that $r_{n+1} = 0$ (such an $n$ exists since the $\varphi(r_k)$ form a strictly decreasing sequence of nonnegative integers). Show that $r_n$ is the greatest common divisor of $a$ and $b$.
Proof: Clearly $r_{n}$ is the GCD of $r_{n}$ and $r_{n+1}$, we show by induction that $r_{n}$ is the GCD of $r_{i}$ and $r_{i+1}$, with $r_{0}=b$ and $r_{-1}=a$:
Suppose $r_{n}=\gcd(r_{i},r_{i+1})$. Since $r_{i-1}=q_{i}r_{i}+r_{i+1}$, $r_{n}\mid r_{i}$ and $r\mid r_{i+1}$ implies $r_{n}\mid r_{i-1}$. If $c\mid r_{i}$ and $c\mid r_{i-1}$, then $c\mid r_{i+1}=r_{i-1}-q_{i}r_{i}$ so $c\mid r_{n}$. Hence $r_{n}$ is the GCD of $r_{i}$ and $r_{i-1}$.
Hence $r_{n}=\gcd(a,b)$.
## Section 3.4 Rings of Quotients and Localization
### 3.4.1
Determine the complete ring of quotients of the ring $Z_n$ for each $n \geqslant 2$.
Solution: The set of non zero divisors $S=\{ m\in \mathbb{Z}_{n}:\gcd(n,m)=1 \}$ consists of units, so by Theorem3.4.4(iii), $S^{-1}\mathbb{Z}_{n} \cong \mathbb{Z}_{n}$.
### 3.4.2
Let $S$ be a multiplicative subset of a commutative ring $R$ with identity and let $T$ be a multiplicative subset of the ring $S^{-1}R$. Let $S_* = \{r \in R \mid r/s \in T \text{ for some } s \in S\}$. Then $S_*$ is a multiplicative subset of $R$ and there is a ring isomorphism $S_*^{-1}R \cong T^{-1}(S^{-1}R)$.
Proof: Let $\varphi_{S}:R\to S^{-1}R$ and $\varphi_{T}:S^{-1}R\to T^{-1}(S^{-1}R)$ be the embeddings, and $\varphi_{*}=\varphi_{T}\varphi_{S}$. Note that for any $r\in S_{*}$, suppose $t=r/s$ where $t\in T$ and $s\in S$, then $\varphi_{*}(r)=(rs /s) t /t=(r^{2} /s) /(r /s)$ has an inverse $(1 /s) /(r /s)$, so $\varphi_{*}$ maps $S_{*}$ to units.
For any commutative ring $U$ with identity and ring homomorphism $f:R\to U$ such that $f(r)$ is a unit in $U$ for all $s\in S$, we find a unique homomorphism $\bar{f}:T^{-1}(S^{-1}R)\to U$ such that $\bar{f}\varphi_{*}=f$:
Take an arbitrary $t_{0}=r_{0} /s_{0}\in T$ then $r_{0}\in S_{*}$ and $s_{0} \in S$. For any $s\in S$, $t=r_{0}s /s_{0}s$ so $r_{0}s \in S_{*}$ and $f(s)f(r_{0})=f(r_{0}s)$. Both $f(r_{0})$ and $f(r_{0}s)$ are units, so $f(s)$ is a unit for all $s\in S$. Hence there is a unique homomorphism $\tilde{f}:S^{-1}R\to U$ such that $\tilde{f}\varphi_{S}=f$.
For any $t=r /s\in T$, $r\in S_{*}$ and $s\in S$. Note that
$$
\tilde{f}(t)f(s)=\tilde{f}(t)\tilde{f}(s ^{2} /s)=\tilde{f}(rs ^{2} /s ^{2})=f(r)
$$
where $f(s),f(r)$ are units, hence $\tilde{f}(t)$ is a unit. So there is a unique homomorphism $\bar{f}:T^{-1}(S^{-1}R)\to U$ such that $\bar{f}\varphi_{T}=\tilde{f}$, which implies $\bar{f}\varphi_{T}\varphi_{S}=f$.
If $g\varphi_{*}=f$ then by uniqueness $g\varphi_{T}=\tilde{f}=\bar{f}\varphi_{T}$ and $g=\bar{f}$, so $\bar{f}$ is unique. By definition $S_{*}^{-1}R\cong T^{-1}(S^{-1}R)$.
### 3.4.3
(a) The set $E$ of positive even integers is a multiplicative subset of $\mathbb{Z}$ such that $E^{-1}(\mathbb{Z})$ is the field of rational numbers.
(b) State and prove condition(s) on a multiplicative subset $S$ of $\mathbb{Z}$ which insure that $S^{-1}\mathbb{Z}$ is the field of rationals.
Solution: (b) For any prime $p$, there exists $n / s \in S^{-1}\mathbb{Z}$ that is the inverse of $\varphi_{S}(p)=ps /s$, so $np /s = \varphi_{S}(1)=s /s$ which implies $np=s$. Hence $S$ must satisfy for all prime $p$, $\exists s_{p} \in S,p\mid s_{p}$.
This condition is sufficient, since every prime $p$ has an inverse $\left( \frac{s_{p}}{p} \right) /s_{p}$ in $S^{-1}\mathbb{Z}$, so $S^{-1}\mathbb{Z}$ contains all rational numbers.
### 3.4.4
If $S = \{2, 4\}$ and $R = Z_6$, then $S^{-1}R$ is isomorphic to the field $Z_3$. Consequently, the converse of Theorem 4.3(ii) is false.
Trivial.
### 3.4.5
Let $R$ be an integral domain with quotient field $F$. If $T$ is an integral domain such that $R \subset T \subset F$, then $F$ is (isomorphic to) the quotient field of $T$.
Proof: Clearly the quotient field of $T$ contains the quotient field of $R$ which is $F$, and is contained in the quotient field of $F$ which is also $F$.
### 3.4.6
Let $S$ be a multiplicative subset of an integral domain $R$ such that $0 \notin S$. If $R$ is a principal ideal domain (resp. unique factorization domain), then so is $S^{-1}R$.
Proof: (1) Suppose $R$ is a PID. For any ideal $J\subset S^{-1}R$, $I=\varphi_{S}^{-1}(J)$ is an ideal in $R$. Then $I=(m)$ for some $m\in R$, and by Lemma3.4.9(ii) $J=S^{-1}I=\{ mr /s:r\in R,s \in S \}$. Take an arbitrary $s_{0}\in S$, then $m /s_{0}\in J$ and $mr /s=(m /s_{0}) /(rs_{0} /s)$ so $J\subset(m /s_{0})$. Therefore $J=(m /s_{0})$ and $S^{-1}R$ is a PID.
(2) Suppose $R$ is a UFD. Recall Exercise3.3.2: UFD iff every nonzero prime ideal contains a nonzero prime principal ideal.
For every nonzero prime ideal $J\subset S^{-1}R$, by Theorem3.4.10, $J=S^{-1}I$ for some nonzero prime ideal $I\subset R$ such that $I\cap S=\emptyset$. $I$ contains a nonzero prime principal ideal $(p)$, then $(p)\cap S=\emptyset$ so $S^{-1}(p)$ is a nonzero prime ideal in $S^{-1}R$, and we already showed $S^{-1}(p)$ is a principal ideal. Hence $S^{-1}R$ is a UFD.
### 3.4.7
Let $R_1$ and $R_2$ be integral domains with quotient fields $F_1$ and $F_2$ respectively. If $f : R_1 \to R_2$ is an isomorphism, then $f$ extends to an isomorphism $F_1 \cong F_2$.
Proof: Let $\varphi_{i}:R_{i}\to F_{i}$ be the embeddings, then by Corollary3.4.6, there exists unique monomorphisms $g:F_{1}\to F_{2}$ and $h:F_{2}\to F_{1}$ such that $g\varphi_{1}=\varphi_{2}f$ and $h\varphi_{2}=\varphi_{1}f$. Hence $gh=id$ and $hg=id$, so $F_{1}\cong F_{2}$.
### 3.4.8
Let $R$ be a commutative ring with identity, $I$ an ideal of $R$ and $\pi : R \to R/I$ the canonical projection.
(a) If $S$ is a multiplicative subset of $R$, then $\pi S = \pi(S)$ is a multiplicative subset of $R/I$.
(b) The mapping $\theta : S^{-1}R \to (\pi S)^{-1}(R/I)$ given by $r/s \mapsto \pi(r)/\pi(s)$ is a well-defined function.
(c) $\theta$ is a ring epimorphism with kernel $S^{-1}I$ and hence induces a ring isomorphism $S^{-1}R/S^{-1}I \cong (\pi S)^{-1}(R/I)$.
Proof: (a) For any $sI,tI\in\pi(S)$, $(sI)(tI)=stI\in\pi(S)$ so $\pi(S)$ is multiplicative.
(b) If $r_{1} /s_{1}=r_{2} /s_{2}$, then $\exists t\in S,t(r_{1}s_{2}-r_{2}s_{1})=0$, hence $\pi(t)(\pi(r_{1})\pi(s_{2})-\pi(s_{1})\pi(r_{2}))=0$ where $\pi(t)\in\pi S$ so $\pi(r_{1}) /\pi(s_{1})=\pi(r_{2}) /\pi(s_{2})$ and $\theta$ is well-defined.
(c) Note that $\theta$ is the unique homomorphism such that $\theta\varphi_{S}=\varphi_{\pi S}\pi$, and clearly $\theta$ is surjective.
If $\pi(r) /\pi(s)=0$ then $\pi(s_{1})\pi(r)=0$ for some $s_{1}\in S$, so $s_{1}r\in I$ and $r /s=(rs_{1}) /(ss_{1})\in S^{-1}I$. Also if $r\in I$ then $\pi(r) /\pi(s)=0 /\pi(s)=0$ so $\mathrm{Ker}\theta=S^{-1}I$.
### 3.4.9
Let $S$ be a multiplicative subset of a commutative ring $R$ with identity. If $I$ is an ideal in $R$, then $S^{-1}(\text{Rad } I) = \text{Rad }(S^{-1}I)$.
Proof: Recall that $\mathrm{Rad}\,I=\{ r\in R:r^{n}\in I\text{ for some }n \}$. If $r /s \in S^{-1}(\mathrm{Rad}\,I)$, suppose $r^{n}\in I$, then $(r /s)^{n}=r^{n} /s^{n}\in S^{-1}I$ so $r /s \in \mathrm{Rad}\,(S^{-1}I)$. 
If $r /s \in \mathrm{Rad}\,(S^{-1}I)$, suppose $r^{n} /s^{n}=a /t\in S^{-1}I$ where $a\in I,t\in S$, then $s_{1}(r^{n}t-s^{n}a)=0$ for some $s_{1}\in S$. Hence $r /s=(rs_{1}t) /(s s_{1}t)$ where $(rs_{1}t)^{n}=s^{n}s_{1}^{n-1}t^{n}a\in I$, so $r /s \in S^{-1}(\mathrm{Rad}\,I)$.
Therefore $S^{-1}(\mathrm{Rad}\,I)=\mathrm{Rad}\,(S^{-1}I)$.
### 3.4.10
Let $R$ be an integral domain and for each maximal ideal $M$ (which is also prime, of course), consider $R_M$ as a subring of the quotient field of $R$. Show that $\bigcap R_M = R$, where the intersection is taken over all maximal ideals $M$ of $R$.
Proof: Clearly $R\subset \bigcap R_{M}$. Suppose $x\in \bigcap R_{M}$ where $S$ is the set of nonzero elements. Let $I=\{ r\in R:(r /1)\cdot x\in R \}$ then $I$ is an ideal.
Note that $I$ is not contained in some maximal ideal $M$, since $x\in R_{M}$ implies $x=u /v$ for some $u\in R,v\not\in  M$, so $(v /1)\cdot x=u /1\in R$. 
Hence $I=R$ and $1\in I$, so $x\in R$ and $\bigcap R_{M}=R$.
### 3.4.11
Let $p$ be a prime in $\mathbb{Z}$; then $(p)$ is a prime ideal. What can be said about the relationship of $\mathbb{Z}_p$ and the localization $\mathbb{Z}_{(p)}$?
Solution: The localization $\mathbb{Z}_{(p)}=\{ n /m:n,m\in \mathbb{Z},\gcd(m,p)=1 \}$. $\mathbb{Z}_{p}$ is the homomorphic image of $\mathbb{Z}_{(p)}$ under $\varphi:n /m\mapsto n m^{-1}$, and the kernel is $\mathrm{Ker}\varphi=p\mathbb{Z}_{(p)}$ which is the unique maximal ideal, so $\mathbb{Z}_{p}\cong \mathbb{Z}_{(p)} /p\mathbb{Z}_{(p)}$.
### 3.4.12
A commutative ring with identity is local if and only if for all $r, s \in R, r + s = 1_R$ implies $r$ or $s$ is a unit.
Proof: If $R$ is local, then by Theorem3.4.13 all non-units are contained in some ideal $M\neq R$, so $r+s=1_{R}$ implies one of $r,s$ is a unit.
If $r+s=1_{R}$ implies one of $r,s$ is a unit, then let $I$ be the set of nonunits. If $x,y\in I$, and $x+y$ has an inverse $u$, then $xu+yu=1_{R}$ implies one of $xu,yu$ is a unit, a contradiction. Hence $I$ is closed under addition, so $I$ is an ideal. Therefore $R$ is a local ring.
### 3.4.13
The ring $R$ consisting of all rational numbers with denominators not divisible by some (fixed) prime $p$ is a local ring.
Proof: This is the ring $\mathbb{Z}_{(p)}$ in Exercise3.4.11.
### 3.4.14
If $M$ is a maximal ideal in a commutative ring $R$ with identity and $n$ is a positive integer, then the ring $R/M^n$ has a unique prime ideal and therefore is local.
Proof: If $P /M^{n}$ is a prime ideal, then for any $m\in M$, $m^{n}+M^{n}=M^{n}\in P /M^{n}$, so $m+M^{n}\in P /M^{n}$. Hence $M\subset P$. Since $M$ is maximal and $P /M^{n}$ is prime, $P=M$.
If $ab+M^{n}\in M /M^{n}$ then $ab\in M+M^{n}=M$ so $a\in M\vee b\in M$ hence $a+M^{n}\in M /M^{n}$ or $b+M^{n}\in M /M^{n}$. Therefore $M /M^{n}$ is indeed the unique prime ideal.
### 3.4.15
In a commutative ring $R$ with identity the following conditions are equivalent:
(i) $R$ has a unique prime ideal; (ii) every nonunit is nilpotent (see Exercise 1.12);
(iii) $R$ has a minimal prime ideal which contains all zero divisors, and all nonunits of $R$ are zero divisors.
Proof: (i)=>(ii): Every maximal ideal is a prime ideal, so $R$ is local. The set of nonunit elements form a maximal ideal, so it is prime, and the set of nilpotent elements is the intersection of all prime ideals. Hence every nonunit is nilpotent.
(ii)=>(iii): If every nonunit is nilpotent, then all nonunits are zero divisors, and the set of nonunits is a maximal (prime) ideal that contains all zero divisors. It is the unique prime ideal so it is minimal.
(iii)=>(i): $R$ has a minimal prime ideal that contains all proper ideals (since a proper ideal consists of nonunits), so it is the unique prime ideal.
Lemma: The set of nilpotent elements is the intersection of all prime ideals.
Proof: If $a^{n}=0$ for $a\in R$, for any prime ideal $P$, $a^{n}=0\in P$ so $a\in P$.
If $a^{n}\neq 0 \forall n>0$, let $S=\{ a^{n}:n>0 \}$ be a multiplicative set that does not contain $0$. By the lemma in Exercise3.2.15, there is a prime ideal $P\subset R$ such that $P\cap S=\emptyset$, so $a$ is not in the intersection of all prime ideals.
### 3.4.16
Every nonzero homomorphic image of a local ring is local.
Proof: If $f:R\to T$ is an epimorphism where $R$ is a local ring. Suppose $R$ has a unique maximal ideal $M$, and consider any maximal ideal $N\subset T$. $I=f^{-1}(N)$ is a proper ideal, so $I\subset M$, and $\mathrm{Ker}f\subset I\subset M$. Hence $N=f(I)\subset f(M)$ where $f(M)$ is a proper ideal, so $f(M)$ is the unique maximal ideal, and $T$ is local.
## Section 3.5 Rings of Polynomials and Formal Power Series
### 3.5.1
(a) If $\varphi: R \rightarrow S$ is a homomorphism of rings, then the map $\bar{\varphi}: R[[x]] \rightarrow S[[x]]$ given by $\bar{\varphi}(\sum a_ix^i) = \sum \varphi(a_i)x^i$ is a homomorphism of rings such that $\bar{\varphi}(R[x]) \subset S[x]$.
(b) $\bar{\varphi}$ is a monomorphism (epimorphism) if and only if $\varphi$ is. In this case $\bar{\varphi}: R[x] \rightarrow S[x]$ is also a monomorphism (epimorphism).
(c) Extend the results of (a) and (b) to the polynomial rings $R[x_1, \dots, x_n]$, $S[x_1, \dots, x_n]$.
Proof: (a) If $f=\sum_{}^{}{a_{i}x^{i}},g=\sum_{}^{}{b_{i}x^{i}}\in R[[x]]$, then $\bar{\varphi}(f+g)=\sum_{}^{}{\varphi(a_{i}+b_{i})x^{i}}=\sum_{}^{}{\varphi(a_{i})x^{i}}+\sum_{}^{}{\varphi(b_{i})x^{i}}=\bar{\varphi}(f)+\bar{\varphi}(g)$, and
$$
\bar{\varphi}(fg)=\sum_{i}^{}{\varphi\left( \sum_{j+k=i}^{}{}a_{j}b_{k} \right)x^{i}=\sum_{i}^{}{\sum_{j+k=i}^{}{\varphi(a_{j})\varphi(b_{k})x^{i}}}}=\bar{\varphi}(f)\bar{\varphi}(g).
$$
Hence $\bar{\varphi}$ is a homomorphism, and if $f=\sum_{}^{}{a_{i}x^{i}}\in R[x]$ has only a finite number of non-zero indices, then $\bar{\varphi}(f)=\sum_{}^{}{\varphi(a_{i})x^{i}}$ also has only finite non-zero indices, so $\bar{\varphi}(R[x])\subset S[x]$.
(b) If $\varphi$ is a monomorphism, then $\bar{\varphi}\left( \sum_{}^{}{a_{i}x^{i}} \right)=0$ implies $\varphi(a_{i})=0\forall i\geqslant 0$ so $\bar{\varphi}$ is a monomorphism. If $\bar{\varphi}$ is a monomorphism, then $\varphi=\bar{\varphi}|_{R}$ and $\bar{\varphi}|_{R[x]}$ are also monomorphisms.
(c) Just view the above proof as using multi-index notation.
### 3.5.2
Let $\text{Mat}_n R$ be the ring of $n \times n$ matrices over a ring $R$. Then for each $n \geqslant 1$:
(a) $(\text{Mat}_n R)[x] \cong \text{Mat}_n R[x]$.
(b) $(\text{Mat}_n R)[[x]] \cong \text{Mat}_n R[[x]]$.
Proof: (a) Consider the mapping
$$
\varphi:(R^{n\times n})[x]\to(R[x])^{n\times n},f=\sum_{}^{}{A^{(i)}x^{i}}\mapsto g=(g_{i,j})_{1\leqslant i,j\leqslant n}\text{ where }g_{i,j}=\sum_{}^{}{A^{(k)}_{i,j}x^{k}}.
$$
Then $\varphi$ is bijective, and $\varphi(f+g)=\varphi(f)+\varphi(g)$. If $f=\sum_{}^{}{A^{(i)}x^{i}}$ and $g=\sum_{}^{}{B^{(i)}x^{i}}$, then $fg=\sum_{}^{}{C^{(i)}x^{i}}$ where $C^{(i)}=\sum_{j+k=i}^{}{A^{(j)}B^{(k)}}$, so
$$
\begin{align}
\varphi(fg)_{i,j} & =\sum_{k}^{}{C^{(k)}_{i,j}x^{k}}=\sum_{k}^{}{\sum_{u+v=k}^{}{(A^{(u)}B^{(v)})_{i,j}}x^{k}}=\sum_{k}^{}{\sum_{u+v=k}^{}{\sum_{t}^{}{A^{(u)}_{i,t}B^{(v)}_{t,j}}}x^{k}}  \\
 & =\sum_{t}^{}{( \sum_{u}^{}{A^{(u)}_{i,t}x^{u}} )(\sum_{v}^{}{B_{t,j}^{(v)}x^{v}})}=\sum_{t}^{}{\varphi(f)_{i,t}\varphi(g)_{t,j}}=(\varphi(f)\varphi(g))_{i,j}.
\end{align}
$$
Hence $\varphi$ is an isomorphism $(R^{n\times n})[x]\cong(R[x])^{n\times n}$.
(b) Repeat the proof above.
### 3.5.3
Let $R$ be a ring and $G$ an infinite multiplicative cyclic group with generator denoted $x$. Is the group ring $R(G)$ isomorphic to the polynomial ring in one indeterminate over $R$?
Solution: Recall the group ring $R(G)$ consists of elements $\sum_{}^{}{r_{g}g}$, which can be written as $\sum_{k\in \mathbb{Z}}^{}{r_{k} x^{k}}$. However, this is not isomorphic to the polynomial ring. e.g., when $R$ is an integral domain, then the only units of $R[x]$ are units of $R$, while $x$ is a unit in $R(G)$.
### 3.5.4
(a) Let $S$ be a nonempty set and let $\mathbb{N}^S$ be the set of all functions $\varphi: S \rightarrow \mathbb{N}$ such that $\varphi(s) \neq 0$ for at most a finite number of elements $s \in S$. Then $\mathbb{N}^S$ is a **multiplicative abelian monoid** with product defined by
$$(\varphi\psi)(s) = \varphi(s) + \psi(s) \; (\varphi, \psi \in \mathbb{N}^S; s \in S).$$
The identity element in $\mathbb{N}^S$ is the zero function.
(b) For each $x \in S$ and $i \in \mathbb{N}$ let $x^i \in \mathbb{N}^S$ be defined by $x^i(x) = i$ and $x^i(s) = 0$ for $s \neq x$. If $\varphi \in \mathbb{N}^S$ and $x_1, \dots, x_n$ are the only elements of $S$ such that $\varphi(x_i) \neq 0$, then in $\mathbb{N}^S$, $\varphi = x_1^{i_1}x_2^{i_2}\cdots x_n^{i_n}$, where $i_j = \varphi(x_j)$.
(c) If $R$ is a ring with identity let $R[S]$ be the set of all functions $f: \mathbb{N}^S \rightarrow R$ such that $f(\varphi) \neq 0$ for at most a finite number of $\varphi \in \mathbb{N}^S$. Then $R[S]$ is a ring with identity, where addition and multiplication are defined as follows:
$$
\begin{align}
(f + g)(\varphi)  & = f(\varphi) + g(\varphi) \; (f, g \in R[S]; \varphi \in \mathbb{N}^S);\\
(fg)(\varphi)  & = \sum f(\theta)g(\zeta) \; (f, g \in R[S]; \theta, \zeta, \varphi \in \mathbb{N}^S),
\end{align}
$$
where the sum is over all pairs $(\theta, \zeta)$ such that $\theta\zeta = \varphi$. $R[S]$ is called the **ring of polynomials in S over R**.
(d) For each $\varphi = x_1^{i_1} \cdots x_n^{i_n} \in \mathbb{N}^S$ and each $r \in R$ we denote by $rx_1^{i_1} \cdots x_n^{i_n}$ the function $\mathbb{N}^S \rightarrow R$ which is $r$ at $\varphi$ and $0$ elsewhere. Then every nonzero element $f$ of $R[S]$ can be written in the form $f = \sum_{i=0}^m r_i x_1^{k_{i1}} x_2^{k_{i2}} \cdots x_n^{k_{in}}$ with the $r_i \in R$, $x_i \in S$ and $k_{ij} \in \mathbb{N}$ all uniquely determined.
(e) If $S$ is finite of cardinality $n$, then $R[S] \cong R[x_1, \dots, x_n]$.
(f) State and prove an analogue of Theorem 5.5 for $R[S]$.
Solution:
(f) Let $R,T$ be rings with identity and $\varphi:R\to T$ a homomorphism of rings such that $\varphi(1_{R})=1_{T}$. For any function $f:S\to T$, there is a unique homomorphism of rings $\bar{\varphi}:R[S]\to T$ such that $\bar{\varphi}|_{R}=\varphi$ and $\bar{\varphi}|_{S}=f$. This property completely determines the polynomial ring $R[S]$ up to isomorphism.
### 3.5.5
Let $R$ and $S$ be rings with identity, $\varphi: R \rightarrow S$ a homomorphism of rings with $\varphi(1_R) = 1_S$, and $s_1, s_2, \dots, s_n \in S$ such that $s_is_j = s_js_i$ for all $i,j$ and $\varphi(r)s_i = s_i\varphi(r)$ for all $r \in R$ and all $i$. Then there is a unique homomorphism $\bar{\varphi}: R[x_1, \dots, x_n] \rightarrow S$ such that $\bar{\varphi}|_R = \varphi$ and $\bar{\varphi}(x_i) = s_i$. This property completely determines $R[x_1, \dots, x_n]$ up to isomorphism.
Proof: Let $\bar{\varphi}\left( \sum_{}^{}{a_{i}x^{i}} \right)=\sum_{}^{}{\varphi(a_{i})s^{i}}$ then $\bar{\varphi}(f+g)=\bar{\varphi}(f)+\bar{\varphi}(g)$, and for $f=\sum_{}^{}{a_{i}x^{i}}$ and $g=\sum_{}^{}{b_{i}x^{i}}$, let $c_{i}=\sum_{j+k=i}^{}{a_{j}b_{k}}$ then
$$
\bar{\varphi}(fg)=\sum_{}^{}{\varphi(c_{i})s^{i}}=\sum_{i}^{}{\sum_{j+k=i}^{}{\varphi(a_{j})\varphi(b_{k})}s^{i}}=\bar{\varphi}(f)\bar{\varphi}(g).
$$
Hence $\bar{\varphi}$ is a homomorphism, and $\bar{\varphi}|_{R}=\varphi,\bar{\varphi}(x_{i})=s_{i}$. If there is another homomorphism $\psi$, then for all $f=\sum_{}^{}{a_{i}x^{i}}$,
$$
\psi(f)=\sum_{}^{}{\psi(a_{i}1)\psi(x^{i})}=\sum_{}^{}{\varphi(a_{i})s^{i}}=\bar{\varphi}(f).
$$
Therefore $\bar{\varphi}$ is unique.
In order to show $R[x_{1},\cdots,x_{n}]$ is completely determined up to isomorphism, consider the category $\mathcal{C}$, where objects are all tuples $(\psi,S,s_{1},\cdots,s_{n})$ where $S$ is a ring with identity, $s_{i}\in K$ such that $s_{i}s_{j}=s_{j}s_{i}$, and $\psi:R\to S$ a homomorphism with $\psi(1_{R})=1_S$ and $\psi(r)s_{i}=s_{i}\psi(r)$. A morphism in $\mathcal{C}$ is a homomorphism $\zeta:K\to T$ from $(\psi,K,s_{1},\cdots,s_{n})$ to $(\theta,T,t_{1},\cdots,t_{n})$ such that $\zeta(1_{K})=1_{T},\zeta\psi=\theta$ and $\zeta(s_{i})=t_{i}$. We can show that $\zeta$ is an equivalence iff it is an isomorphism, and the proof above implies $(\iota,R[x_{1},\cdots,x_{n}],x_{1},\cdots,x_{n})$ is a universal object in $\mathcal{C}$ (where $\iota$ is the embedding), so it is unique.
### 3.5.6
(a) If $R$ is the ring of all $2 \times 2$ matrices over $\mathbb{Z}$, then for any $A \in R$,
$$(x + A)(x - A) = x^2 - A^2 \in R[x]$$
(b) There exist $C, A \in R$ such that $(C + A)(C - A) \neq C^2 - A^2$. Therefore, Corollary 5.6 is false if the rings involved are not commutative.
Proof: (a) Since $x$ is in the center of $R[x]$, 
$$
(x+A)(x-A)=x^{2}+Ax-xA-A^{2}=x^{2}-A^{2}.
$$
(b) Take matrices $A,C$ that does not commute, e.g. 
$$
C=\begin{pmatrix}
1 & 0\\0 & 0
\end{pmatrix},A=\begin{pmatrix}
0 & 1\\0 & 0
\end{pmatrix}
$$
then $(C+A)(C-A)\neq C^{2}-A^{2}$.
### 3.5.7
If $R$ is a commutative ring with identity and $f = a_nx^n + \dots + a_0$ is a zero divisor in $R[x]$, then there exists a nonzero $b \in R$ such that $ba_n = ba_{n-1} = \dots = ba_0 = 0$.
Proof: Let $I=\{ g\in R[x]:fg=0 \}$, then $I$ is a proper ideal in $R$. 
Take the polynomial $g$ with least degree such that $fg=0$, and suppose $g=b_{m}x^{m}+\cdots+b_{0}$, then $a_{n}b_{m}=0$ so $h=a_{n}g$ has degree less than $m$. However, note that $fh=a_{n}fg=0$, so $h=0$ and $a_{n}b_{k}=0\forall k\leqslant m$. By repeating this process, we can show that $a_{i}b_{m}=0$ and then $a_{i}b_{k}=0\forall i\leqslant n,k\leqslant m$, so take any $b=b_{k}\neq 0$, we have $ba_{n}=\cdots=ba_{0}=0$.
### 3.5.8
(a) The polynomial $x + 1$ is a unit in the power series ring $\mathbb{Z}[[x]]$, but is not a unit in $\mathbb{Z}[x]$.
(b) $x^2 + 3x + 2$ is irreducible in $\mathbb{Z}[[x]]$, but not in $\mathbb{Z}[x]$.
Proof: (a) $1$ is a unit in $\mathbb{Z}$ so $x+1$ is a unit in $\mathbb{Z}[[x]]$ by Proposition3.5.9. The inverse of $x+1$ in $\mathbb{Z}[[x]]$ is $1-x+x^{2}-\cdots$ which does not belong to $\mathbb{Z}[x]$, so $x+1$ is not a unit in $\mathbb{Z}[x]$.
(b) $x^{2}+3x+2=(x+1)(x+2)$ where $x+1$ is not a unit in $\mathbb{Z}[x]$ by (a), and $x+2$ is not a unit in $\mathbb{Z}[x]$ since $2$ is not a unit in $\mathbb{Z}$. Hence $x^{2}+3x+2$ is not irreducible in $\mathbb{Z}[x]$.
By Proposition3.5.9, $2$ is irreducible in $\mathbb{Z}$ implies $x^{2}+3x+2$ is irreducible in $\mathbb{Z}[[x]]$.
### 3.5.9
If $F$ is a field, then $(x)$ is a maximal ideal in $F[x]$, but it is not the only maximal ideal (compare Corollary 5.10).
Proof: For any $f\not\in (x)$, suppose $f=\sum_{k\leqslant n}^{}{a_{k}x^{k}}$ then $a_{0}\neq 0$. Note that $a_{0}=f-g$ where $g=\sum_{k\leqslant n-1}^{}{a_{k+1}x^{k}}$, so $1=a_{0}^{-1}(f-g)\in(x)+(f)$. Hence $(x)+(f)=F[x]$ and $(x)$ is a maximal ideal.
However, there are other maximal ideals, e.g. $(x+1)$.
### 3.5.10
(a) If $F$ is a field then every nonzero element of $F[[x]]$ is of the form $x^ku$ with $u \in F[[x]]$ a unit.
(b) $F[[x]]$ is a principal ideal domain whose only ideals are $0$, $F[[x]] = (1_F) = (x^0)$ and $(x^k)$ for each $k \geqslant 1$.
Proof: (a) For all $f=\sum_{}^{}{a_{i}x^{i}}\in F[[x]]$, take the smallest $k$ such that $a_{k}\neq 0$, then $u=\sum_{i\geqslant 0}^{}{a_{i+k}x^{i}}$ is a unit in $F[[x]]$, and $f=x^{k}u$.
(b) If $I\subset F[[x]]$ is a proper ideal, take the smallest $k$ such that there exists $f=x^{k}u\in I$ where $u$ is a unit. Then $x^{k}=u ^{-1}f\in I$ so $(x^{k})\subset I$, and for all $f\in I$, $f=x^{t}g$ where $t\geqslant k$ and $u$ a unit, so $f\in(x^{k})$. Hence $I=(x^{k})$, and $F[[x]]$ is a PID.
### 3.5.11
Let $\mathcal{C}$ be the category with objects all commutative rings with identity and morphisms all ring homomorphisms $f: R \rightarrow S$ such that $f(1_R) = 1_S$. Then the polynomial ring $\mathbb{Z}[x_1, \dots, x_n]$ is a free object on the set $\{x_1, \dots, x_n\}$ in the category $\mathcal{C}$. 
Proof: For any ring $R$ in $\mathcal{C}$, and any given map $f:\{ x_{1},\cdots,x_{n} \}\to R$, there is a unique ring homomorphism $\bar{f}:\mathbb{Z}[x_{1},\cdots,x_{n}]\to R,\sum_{}^{}{a_{i}x^{i}}\mapsto \sum_{}^{}{a_{i}f(x)^{i}}$, such that $\bar{f}\iota=f$ where $\iota:\{ x_{1},\cdots,x_{n} \}\to \mathbb{Z}[x_{1},\cdots,x_{n}]$ is the embedding. Hence $\mathbb{Z}[x_{1},\cdots,x_{n}]$ is free on $\{ x_{1},\cdots,x_{n} \}$.
## Section 3.6 Factorization in Polynomial Rings
### 3.6.1
(a) If $D$ is an integral domain and $c$ is an irreducible element in $D$, then $D[x]$ is not a principal ideal domain.
(b) $\mathbb{Z}[x]$ is not a principal ideal domain.
(c) If $F$ is a field and $n \geqslant 2$, then $F[x_1, \dots, x_n]$ is not a principal ideal domain. 
Proof: (a) Consider the ideal $I=(x,c)$. If $D[x]$ is a PID, then $I=(f)$ for some $f=D[x]$. $c\in(f)$ implies $c=fg$ for some $g\in D[x]$, then comparing degrees we know $f,g$ are constant. Since $c$ is irreducible and $f,g\in D$, one of $f,g$ is a unit, so either $(f)=(c)$ or $(f)=D[x]$. However, $1\in D[x]\backslash I$ (by looking at the constant term) while $x\in I\backslash(c)$ (since $c$ is nonunit), so neither case holds.
(b) Apply (a) to $D=\mathbb{Z}$ and $c=2$.
(c) $D=F[x_{1},\cdots,x_{n-1}]$ is an integral domain, and $x_{1}$ is irreducible in $D$, so $D[x_{n}]=F[x_{1},\cdots,x_{n}]$ is not a PID.
### 3.6.2
If $F$ is a field and $f, g \in F[x]$ with $\deg g \geqslant 1$, then there exist unique polynomials $f_0, f_1, \dots, f_r \in F[x]$ such that $\deg f_i < \deg g$ for all $i$ and
$$f = f_0 + f_1 g + f_2 g^2 + \dots + f_r g^r.$$
Proof: We prove by induction on $\deg f$: If $\deg f=0$, then take $r=0$ and $f_{0}=f$. Clearly it is unique.
Suppose the statement holds for polynomials of degree less than $n=\deg f$. By the division algorithm, there exist unique $f_{0},q\in F[x]$ such that $f=f_{0}+qg$ and $\deg f_{0}<\deg g$, since the leading coefficient of $g$ is automatically a unit. Since $\deg f_{0}<\deg g$, we obtain $\deg q< \deg f$ so by induction there exist unique $f_{1},\cdots,f_{r}\in F[x]$ such that $q=f_{1}+f_{2}g+\cdots+f_{r}g^{r-1}$. Then $f=f_{0}+f_{1}g+\cdots+f_{r}g^{r}$ where $\deg f_{i}<\deg g$.
If there is another set of polynomials $f=h_{0}+h_{1}g+\cdots+h_{r}g^{r}$, then $f=h_{0}+g(h_{1}+\cdots+h_{r}g^{r-1})$, so $f_{0}=h_{0}$ and $q=h_{1}+\cdots+h_{r}g^{r-1}$. By induction the decomposition is unique.
### 3.6.3
Let $f$ be a polynomial of positive degree over an integral domain $D$.
(a) If $\mathrm{char}D = 0$, then $f' \neq 0$.
(b) If $\mathrm{char}D = p \neq 0$, then $f' = 0$ if and only if $f$ is a polynomial in $x^p$ (that is, $f = a_0 + a_p x^p + a_{2p} x^{2p} + \dots + a_{jp} x^{jp}$).
Proof: (a) If $na=0$ for some $a\neq 0$, then $a(nb)=(na)b=0$ so $nb=0\forall b\in D\backslash\{ 0 \}$. Hence $\mathrm{char}D=0$ implies $na\neq 0\forall a\neq 0,n>0$.
If $f=a_{n}x^{n}+\cdots+a_{0}\in D[x]$, then $f^{\prime}=na_{n}x^{n-1}+\cdots+a_{1}$. The leading coefficient of $f^{\prime}$ is $na_{n}\neq 0$, so $f^{\prime}\neq 0$.
(b) If $p=\mathrm{char}D$, suppose $f=a_{n}x^{n}+\cdots+a_{0}\in D[x]$ satisfy $f^{\prime}=0$, then $ka_{k-1}=0$ for all $0\leqslant k\leqslant a_{n}$. If $p\nmid k$, $ka_{k-1}=0$ implies $a_{k-1}=0$, hence $f=a_{0}+a_{p}x^{p}+\cdots+a_{jp}x^{jp}$ where $j=n /p$.
### 3.6.4
If $D$ is a unique factorization domain, $a \in D$ and $f \in D[x]$, then $C(af)$ and $aC(f)$ are associates in $D$.
Proof: Suppose $f=a_{0}+\cdots+a_{n}x^{n}$, then $C(f)$ is the GCD of $\{ a_{0},\cdots,a_{n} \}$ and $C(af)$ is the GCD of $\{ aa_{0},\cdots,aa_{n} \}$. $C(f)\mid a_{k}$ implies $aC(f)\mid aa_{k}\forall 0\leqslant k\leqslant n$, so $aC(f)\mid C(af)$. Suppose $C(af)=baC(f)$, then $C(af)\mid a a_{k}$ implies $bC(f)\mid a_{k}\forall 0\leqslant k\leqslant n$, hence $bC(f)\mid C(f)$ so $b$ is a unit, and $C(af)\approx aC(f)$.
### 3.6.5
Let $R$ be a commutative ring with identity and $f = \sum_{i=0}^n a_i x^i \in R[x]$. Then $f$ is a unit in $R[x]$ if and only if $a_0$ is a unit in $R$ and $a_1, \dots, a_n$ are nilpotent elements of $R$ (Exercise 1.12).
Proof: Recall that the ideal of all nilpotent elements is the intersection of all prime ideals. 
(1) Is $f$ is a unit in $R[x]$, then for any prime ideal $P\subset R$, we show that $a_{k}\in P\forall 1\leqslant k\leqslant n$. Consider the epimorphism $\pi:R[x]\to(R /P)[x]$, and suppose $\bar{f}=\pi(f)$, then $\pi(1_{R[x]})=1_{(R /P)[x]}$ so $f$ is a unit implies $\bar{f}$ is a unit in $(R /P)[x]$. Note that $R /P$ is an integral domain, so $\bar{f}$ is a unit implies $\bar{f}$ is constant, hence $a_{k}\in P\forall 1\leqslant k\leqslant n$. Therefore $a_{k}$ is in the intersection of all prime ideals, so $a_{k}$ is nilpotent.
(2) If $a_{0}$ is a unit and $a_{1},\cdots,a_{n}$ are nilpotent, take $N>0$ such that $a_{k}^{N}=0\forall 1\leqslant k\leqslant n$. Let $g=a_{1}x+\cdots+a_{n}x^{n}$, then $g^{nN}=0$ so $g$ is nilpotent in $R[x]$. $f=a_{0}+g$ where $a_{0}$ is a unit in $R[x]$, so $f$ is also a unit since $f=a_{0}(1+a_{0}^{-1}g)=a_{0}(1-a_{0}^{-1}g+\cdots+(-1)^{k}(a_{0}^{-1}g)^{k})$. 
### 3.6.6
Let $p \in \mathbb{Z}$ be a prime; let $F$ be a field and let $c \in F$. Then $x^p - c$ is irreducible in $F[x]$ if and only if $x^p - c$ has no root in $F$.
Probably impossible with the tools at hand. [[TODO]]
### 3.6.7
If $f = \sum a_i x^i \in \mathbb{Z}[x]$ and $p$ is prime, let $\bar{f} = \sum \bar{a}_i x^i \in \mathbb{Z}_p[x]$, where $\bar{a}$ is the image of $a$ under the canonical epimorphism $\mathbb{Z} \rightarrow \mathbb{Z}_p$.
(a) If $f$ is monic and $\bar{f}$ is irreducible in $\mathbb{Z}_p[x]$ for some prime $p$, then $f$ is irreducible in $\mathbb{Z}[x]$.
(b) Give an example to show that (a) may be false if $f$ is not monic.
(c) Extend (a) to polynomials over a unique factorization domain.
Proof: (a) See (c).
(b) $f=p^{2}x+2px+1=(px+1)^{2}$ is not irreducible in $\mathbb{Z}[x]$, but $\bar{f}=1$ is irreducible in $\mathbb{Z}_{p}[x]$.
(c) If $R$ is a UFD, $f=\sum_{}^{}{a_{i}x^{i}}\in R[x]$ and $P\subset R$ is a prime ideal, let $\bar{f}=\sum_{}^{}{\bar{a}_{i}x^{i}}\in(R /P)[x]$ where $\bar{a}$ is the image of $a$ under the canonical epimorphism $R\to R /P$. If $f$ is monic and $\bar{f}$ is irreducible in $(R /P)[x]$ for some prime ideal $P$, then $f$ is irreducible in $R[x]$.
Proof: If $f=gh$ in $R[x]$, then $\bar{f}=\bar{g}\bar{h}$ in $(R /P)[x]$. Since $\bar{f}$ is irreducible, one of $\bar{g},\bar{h}$ is a unit, so we can suppose $\bar{g}$ is constant ($R /P$ is an integral domain). $f$ is monic implies the leading coefficient of $g$ is a unit, so $\deg g=\deg \bar{g}$. Hence $g$ is a constant, and the leading coefficient of $g$ is a unit in $R$ implies $g$ is a unit in $R$. Therefore $f$ is irreducible in $R[x]$.
### 3.6.8
(a) Let $c \in F$, where $F$ is a field of characteristic $p$ ($p$ prime). Then $x^p - x - c$ is irreducible in $F[x]$ if and only if $x^p - x - c$ has no root in $F$.
(b) If char $F = 0$, part (a) is false.
Probably impossible with the tools at hand. [[TODO]]
### 3.6.9
Let $f = \sum_{i=0}^n a_i x^i \in \mathbb{Z}[x]$ have degree $n$. Suppose that for some $k \; (0 < k < n)$ and some prime $p : p \nmid a_n; p \nmid a_k; p \mid a_i$ for all $0 \leqslant i \leqslant k - 1$; and $p^2 \nmid a_0$. Show that $f$ has a factor $g$ of degree at least $k$ that is irreducible in $\mathbb{Z}[x]$.
Proof: $p\mid a_{0}$ and $p^{2}\nmid a_{0}$ implies there is exactly one irreducible factor $g$ of $f$ whose constant term is divisible by $p$. Suppose $f=gh$ where $g$ is irreducible, and $p\mid g(0)$, $p\nmid h(0)$, $p^{2}\nmid g(0)$. Consider the projection $\mathbb{Z}\to \mathbb{Z}_{p},f\mapsto \bar{f}$, then $\bar{g}\bar{h}=\bar{f}=\bar{a}_{k}x^{k}+\cdots+\bar{a}_{n}x^{n}=x^{k}Q$ where $Q=\bar{a}_{k}+\cdots+\bar{a}_{n}x^{n-k}$ is a polynomial of degree $n-k$. Note that 
$$
\deg \bar{f}=\deg \bar{g}+\deg \bar{h}\leqslant \deg g+\deg h=\deg f=\deg \bar{f},
$$
so equality holds and $\deg \bar{g}=\deg g,\deg \bar{h}=\deg h$. Since $\bar{h}(0)\neq 0$, $x,\bar{h}$ are relatively prime, and $\bar{h}\mid x^{k}Q$ implies $\bar{h}\mid Q$ by Exercise3.3.10. Hence $\deg \bar{h}\leqslant \deg Q = n-k$ so $\deg g=n-\deg \bar{h}\geqslant k$, and $g$ is a irreducible factor of $f$ with degree at least $k$.
### 3.6.10
(a) Let $D$ be an integral domain and $c \in D$. Let $f(x) = \sum_{i=0}^n a_i x^i \in D[x]$ and $f(x - c) = \sum_{i=0}^n a_i (x - c)^i \in D[x]$. Then $f(x)$ is irreducible in $D[x]$ if and only if $f(x - c)$ is irreducible.
(b) For each prime $p$, the cyclotomic polynomial $f = x^{p-1} + x^{p-2} + \dots + x + 1$ is irreducible in $\mathbb{Z}[x]$.
Proof: (a) Consider $\varphi:D[x]\to D[x],f\mapsto f(x-c)$, by Exercise3.6.14, $\varphi$ is a ring isomorphism such that $\varphi(1_{D})=1_{D}$, hence $f$ is irreducible iff $f(x-c)=\varphi(f)$ is irreducible.
(b) We show that $f(x+1)$ is irreducible:
Note that
$$
f(x+1)=\sum_{k=0}^{p-1}{(x+1)^{k}}=\sum_{k=0}^{p-1}{\sum_{j=0}^{k}{x^{j}\binom{k}{j}}}=\sum_{j=0}^{p-1}{x^{j}\sum_{k=0}^{p-1}{\binom{k}{j}}}=\sum_{j=0}^{p-1}{x^{j}\binom{p}{j+1}}.
$$
Since $p\mid \binom{p}{j+1} \forall 0\leqslant j\leqslant p-2$, $p\nmid \binom{p}{p}$, $p^{2}\nmid \binom{p}{1}$, by Eisenstein’s Criterion $f(x+1)$ is irreducible.
### 3.6.11
If $c_0, c_1, \dots, c_n$ are distinct elements of an integral domain $D$ and $d_0, \dots, d_n$ are any elements of $D$, then there is at most one polynomial $f$ of degree $\leqslant n$ in $D[x]$ such that $f(c_i) = d_i$ for $i = 0, 1, \dots, n$.
Proof: Otherwise if $f,g$ both satisfy the condition, then $h=f-g$ had degree $\leqslant n$, while $h(c_{i})=f(c_{i})-g(c_{i})=0\forall i=0,1,\cdots,n$. Hence $h$ has $n+1$ distinct roots, contradicting Theorem3.6.7.
### 3.6.12
**Lagrange's Interpolation Formula**. If $F$ is a field, $a_0, a_1, \dots, a_n$ are distinct elements of $F$ and $c_0, c_1, \dots, c_n$ are any elements of $F$, then
$$f(x) = \sum_{i=0}^n \frac{(x - a_0) \cdots (x - a_{i-1})(x - a_{i+1}) \cdots (x - a_n)}{(a_i - a_0) \cdots (a_i - a_{i-1})(a_i - a_{i+1}) \cdots (a_i - a_n)} c_i$$
is the unique polynomial of degree $\leqslant n$ in $F[x]$ such that $f(a_i) = c_i$ for all $i$.
Proof: Let $L_{i}(x)=\prod_{j\neq i}^{}{\frac{x-a_{j}}{a_{i}-a_{j}}}$, then $L_{i}(a_{j})=0\forall j\neq i$, and $L_{i}(a_{i})=1$. Hence
$$
f(a_{j})=\sum_{i=0}^{n}{L_{i}(a_{j})c_{i}}=c_{j}\forall 0\leqslant j\leqslant n.
$$
Clearly $\deg L_{i}=n$ so $\deg f\leqslant n$. Exercise3.6.11 shows $f$ is unique.
### 3.6.13
Let $D$ be a unique factorization domain with a finite number of units and quotient field $F$. If $f \in D[x]$ has degree $n$ and $c_0, c_1, \dots, c_n$ are $n + 1$ distinct elements of $D$, then $f$ is completely determined by $f(c_0), f(c_1), \dots, f(c_n)$ according to Exercise 11. Here is **Kronecker's Method** for finding all the irreducible factors of $f$ in $D[x]$.
(a) It suffices to find only those factors $g$ of degree at most $n/2$.
(b) If $g$ is a factor of $f$, then $g(c)$ is a factor of $f(c)$ for all $c \in D$.
(c) Let $m$ be the largest integer $\leqslant n/2$ and choose distinct elements $c_0, c_1, \dots, c_m \in D$. Choose $d_0, d_1, \dots, d_m \in D$ such that $d_i$ is a factor of $f(c_i)$ in $D$ for all $i$. Use Exercise 12 to construct a polynomial $g \in F[x]$ such that $g(c_i) = d_i$ for all $i$; it is unique by Exercise 11.
(d) Check to see if the polynomial $g$ of part (c) is a factor of $f$ in $F[x]$. If not, make a new choice of $d_0, \dots, d_m$ and repeat part (c). (Since $D$ is a unique factorization domain with only finitely many units there are only a finite number of possible choices for $d_0, \dots, d_m$.) If $g$ is a factor of $f$, say $f = gh$, then repeat the entire process on $g$ and $h$.
(e) After a finite number of steps, all the (irreducible) factors of $f$ in $F[x]$ will have been found. If $g \in F[x]$ is such a factor (of positive degree) then choose $r \in D$ such that $rg \in D[x]$ (for example, let $r$ be the product of the denominators of the coefficients of $g$). Then $r^{-1}(rg)$ and hence $rg$ is a factor of $f$. Then $rg = C(rg)g_1$ with $g_1 \in D[x]$ primitive and irreducible in $F[x]$. By Lemma 6.13, $g_1$ is an irreducible factor of $f$ in $D[x]$. Proceed in this manner to obtain all the nonconstant irreducible factors of $f$; the constants are then easily found.
[[TODO]]
### 3.6.14
Let $R$ be a commutative ring with identity and $c, b \in R$ with $c$ a unit.
(a) Show that the assignment $x \mapsto cx + b$ induces a unique automorphism of $R[x]$ that is the identity of $R$. What is its inverse?
(b) If $D$ is an integral domain, then show that every automorphism of $D[x]$ that is the identity on $D$ is of the type described in (a).
Proof: (a) The assignment $x\mapsto cx+n$ induces a homomorphism $\varphi:R[x]\to R[x],f=\sum_{}^{}{a_{i}x^{i}}\mapsto \sum_{}^{}{a_{i}(cx+b)^{i}}$, using the universal property of polynoamial rings. There is also a homomorphism $\Phi:R[x]\to R[x],\sum_{}^{}{a_{i}x^{i}}\mapsto a_{i}(c^{-1}x-c^{-1}b)$. By uniqueness of the homomorphism, $x\mapsto c^{-1}x-c^{-1}b$ is the inverse of $x\mapsto cx+b$, so $\Phi$ is the inverse of $\varphi$, hence $\varphi$ is an automorphism.
(b) If $\varphi :D[x]\to D[x]$ is an automorphism, suppose $\varphi\Phi=\mathrm{id}$. Then $\varphi$ is an epimorphism implies $\varphi(1_{D})=1_{D}$.
Let $f=\varphi(x)$, then $\varphi\left( \sum_{}^{}{a_{i}x^{i}} \right)=\sum_{}^{}{a_{i}f^{i}}$. Recall Exercise3.6.2, we know that every polynomial $F$ can be written uniquely as $F=g_{0}+g_{1}f+\cdots+g_{r}f^{r}$ where $\deg g_{i}<\deg f$. If $\deg f>1$, then suppose $\sum_{}^{}{b_{i}x^{i}}=\varphi ^{-1}(x)$, we have $x=b_{0}+b_{1}f+\cdots+b_{r}f^{r}$ but $b_{0}\in D$, contradicting uniqueness. Hence $\deg f=1$, and we can assume $f=b+cx$.
Likewise $\Phi$ is an automorphism so we can assume $\Phi(x)=d+ex$, then 
$$
x=\Phi\varphi(x)=\Phi(b+cx)=\Phi(b)+\Phi(c)\Phi(x)=b+c(d+ex)=(b+cd)+cex.
$$
Hence $c$ is a unit.
### 3.6.15
If $F$ is a field, then $x$ and $y$ are relatively prime in the polynomial domain $F[x, y]$, but $F[x, y] = (1_F) \supsetneq (x) + (y)$.
Proof: First, $x,y$ are relatively prime: $x$ is irreducible in $F[x]$ and $F[x]$ is a UFD, so $x$ is irreducible in $F[x,y]=F[x][y]$. Likewise $y$ is irreducible. Note that $x$ is constant and $\deg y = 1$ in $F[x][y]$, so $y\nmid x$ and $x,y$ are irreducibles that are not associates, hence $x,y$ are relatively prime.
However, if $1_{F}\in(x)+(y)$, suppose $1_{F}=xf+yg$ for $f,g\in F[x,y]$. Consider the evaluation homomorphism $\varphi:F[x][y]\to F[y]$ that drops all terms containing $x$, then we have $1_{F}=\varphi(xf+yg)=y\varphi(g)$. However, $y$ is a nonunit in $F[y]$, leading to contradiction.
Hence $\gcd(X)$ may not be a linear combination of $X$.
### 3.6.16
Let $f = a_n x^n + \dots + a_0$ be a polynomial over the field $\mathbb{R}$ of real numbers and let $\varphi = |a_n| x^n + \dots + |a_0| \in \mathbb{R}[x]$.
(a) If $|u| \leqslant d$, then $|f(u)| \leqslant \varphi(d)$.
(b) Given $a, c \in \mathbb{R}$ with $c > 0$ there exists $M \in \mathbb{R}$ such that $|f(a + h) - f(a)| \leqslant M|h|$ for all $h \in \mathbb{R}$ with $|h| \leqslant c$.
(c) (**Intermediate Value Theorem**) If $a < b$ and $f(a) < d < f(b)$, then there exists $c \in \mathbb{R}$ such that $a < c < b$ and $f(c) = d$.
(d) Every polynomial $g$ of odd degree in $\mathbb{R}[x]$ has a real root.
Basic calculus.