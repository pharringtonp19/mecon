### **Introduction**

??? tip "Notebooks"
    |Description | Notebook | Status 
    |:---:|:---:|:---:|
    Taylor Polynomials | <a href="https://github.com/pharringtonp19/mecon/blob/main/notebooks/optimization/Taylor_Polynomials.ipynb" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a> | Work In Progress

!!! tldr "Overview" 

    The aim of this lecture is to present the necessary conditions for a local minimum for both constrained and unconstrained optimization problems from the same starting point 

We want to consider the following problem: 

$$\begin{align*} \underset{x }{\text{minimize}} \ f(x) \quad \textrm{s.t.} \ c(x) = 0  \end{align*}$$

#### Notation
- $f$ is the objective function

- $c$ is the contstraint function

- $x \in \mathbb{R}^n$ is the choice variable

### **Starting Point**

A point, $x_0$, is a local minimum of a function, $f$, if for every point in the ***feasible neighborhood*** of $x_0$, $f(x) \geq f(x_0)$. Note this definition holds for both constrained and unconstrained problems. When reasoning about $f(x)$ in some small neighborhood around $x_0$, it is sufficient to replace $f$ with a first order taylor polynomial defined at $x_0$. That is, for $x$ "near" $x_0$, $f(x) \approx f_{x_0}(x)$, where $f_{x_0}$ is defined as follows: 

\begin{align*}
f_{x_0}(x) &= f(x_0)  + \nabla f(x_0)'(x-x_0)
\end{align*}

Therefore, if $x_0$ is a local minimum, then for any feasible $x$ in a small neighborhood of $x_0$

\begin{align*}
f(x) & \geq f(x_0) \\ 
f_{x_0}(x) &\geq f(x_0) \\
\iff \quad f(x_0)  + \nabla f(x_0)'(x-x_0) &\geq f(x_0) \\
\iff \quad \nabla f(x_0)'(x-x_0) &\geq 0
\end{align*}

### **Unconstrained**
If there are no constraints, then the feasible set is $\mathbb{R}^n$. Hence we can re-write the above condition as saying 

\begin{align*}
\nabla f(x_0)'d \geq 0 \quad \forall d \in \mathbb{R}^n, \|d\| \ll 1
\end{align*}


Take $d =  -\nabla f(x_0)/k$ where $k$ is some sufficintly large scalar such that $\| -\nabla f(x_0)/k\|  \ll 1$. Thus we found a $d$ where::

\begin{align*}
\nabla f(x_0)'d &= \nabla f(x_0)'\nabla f(x_0)\Big(\frac{-1}{k}\Big) \\ 
&= \|\nabla f(x_0)\|^2\Big(\frac{-1}{k}\Big) \\
&\leq 0 
\end{align*}

Hence, we can conclude that if $x_0$ is a local minimum and there are no constraints, then $\nabla f(x_0)=0$.

### **Constrained** 

With a constraint function, the feasible set is no longer $\mathbb{R}^n$. Hence we can re-write the above condition as saying 

\begin{align*}
\nabla f(x_0)'d \geq 0 \quad \forall d \in \mathbb{R}^n, \|d\| \ll 1, d \ \textrm{is a feasible direction}
\end{align*}

1) If $x_0$ is a local minimum, it must be feasible and hence $c(x_0) = 0$. Therefore the first order taylor polynomial of the constraint function around $x_0$ is the following: 

\begin{align*}
c_{x_0}(x_0 + d) &= \underbrace{c(x_0)}_{=0}  + \nabla c(x_0)'d\\
&=\nabla c(x_0)'d
\end{align*}

2) If $d$ is feasible direction (i.e. $c_{x_0}(x_0 + d) = 0$, then 

\begin{align*}
c_{x_0}(x_0 + d) &= 0 \\ 
\iff \nabla c(x_0)'d &= 0 
\end{align*}

3) But **note** if $d$ is a feasible direction then $-d$ is also a feasible directiion, which means we can actually tighten the above constraint even further to say that $\nabla f(x_0)'d = 0$ 

If $x_0$ is local minimum of $f$ then $\nabla f(x_0)'d = 0$ for all $d$ such that $\nabla c(x_0)'d = 0$. This just means that if $x_0$ is a local minimum, then $\nabla f(x)$ is parallel to $\nabla c(x_0)$. i.e. 

\begin{align*}
\nabla f(x_0) &= \lambda \nabla c(x_0), \quad \textrm{for some} \ \lambda \\
c(x_0) &= 0 
\end{align*}

<!-- ### **Second Order Conditions**:

- Hessian:  $\nabla^2f(x)$

- Positive Semi-Definite Hessian:  $\quad v^T\nabla^2f(x)v \geq 0 \quad \forall v \in \mathbb{R}^n$

Second Order Taylor Polynomial around a critical point:

\begin{align*}
f_{x_0}(x) &= f(x_0) + \underbrace{\nabla f(x_0)}_{=0}(x-x_0) + \frac{1}{2}(x-x_0)^T\nabla^2f(x_0)(x-x_0) \\
f_{x_0}(x) &= f(x_0) + \frac{1}{2}(x-x_0)^T\nabla^2f(x_0)(x-x_0) \\
\end{align*}

If $\nabla^2f(x)$ is Positive Semi-Definite, then $x_0$ is a local minimum of $f$. -->

#### References

  - [Stephen Boyd](https://www.youtube.com/watch?v=Ry5i8DGZrJs&list=PL3940DD956CDF0622&index=5), [Coursera](https://www.google.com/search?q=necessary+and+sufficient+conditions+local+minimum&biw=939&bih=674&tbm=vid&sxsrf=AOaemvL11vJ6KYgxSjmDFhtXAuisr1Td2Q%3A1632345955007&ei=Yp9LYYn0PMbM_AbF0LnYBg&oq=necessary+and+sufficient+conditions+local+minimum&gs_l=psy-ab-video.3...6810.12008.0.12290.17.17.0.0.0.0.186.1820.1j13.14.0....0...1c.1.64.psy-ab-video..3.13.1710...0i512k1j0i390k1j0i67k1j0i22i30k1j33i22i29i30k1j0i333k1.0.bg_Bf2HIKKs)
