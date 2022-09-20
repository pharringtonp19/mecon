#### **Orthogonality** 

We'll say that two vectors, $x_1, x_2 \in \mathbb{R}^n$ are orthogonal if 

$$x_1^Tx_2 := \sum _{i=1}^n x_{1i}x_{2i} = 0 $$

#### **Norm**: 
The norm of a vector corresponds to a measure of the vector's length. We often use the $l_2$ norm which is defined below

$$\begin{align*} l_2 &: \mathbb{R}^n \to \mathbb{R}_+ \\ 
x & \longmapsto l_2(x) = \| x \| _2 = \sqrt{x^Tx} = \sqrt{ \sum _{i=1}^n x_i^2} \end{align*}$$


#### **Sequence**: 
- Can be understood as a function whose domain is the natural numbers

$$n \in \mathbb{N} \longmapsto f(n) \quad \equiv \quad \{x_1, x_2, \dots,  \}$$

- A sequence converges if the value of the function, $f(n)$ eventually gets close and stays close to some element in the codomain as $n \rightarrow \infty$. Closeness in the codomain is measured by the norm associated with the codomain.


#### **Continuity**: 

A function is continuous if:

$$x \rightarrow x^* \implies f(x) \rightarrow f(x^*)$$

below I plot the graph of a function that is not continuous

#### **Differentiation**

??? attention inline end 
    The notation for differentiation can be confusing. It might be simpler to understand
    this notation by considering it from the perspective of currying/partial evaluation.

I think the most common way to introduce differentiation can make it difficult to understand the larger idea. 

$$\frac{\partial f}{\partial x} \Big|_{x=x_0} := \underset{h \rightarrow 0}{\lim} \frac{f(x_0 + h)}{f(x)}$$

We'll come back to this definition at the end of the section, but I prefer to start in a different place. 



Up to this point in the note, the domain (the set of inputs to our functions) has been $\mathbb{R}^n$ for some $n \in \mathbb{N}$. To discuss differentiation, though, we need to move beyond Euclidean space and begin to work with function spaces! 

##### **The Differential of a function**
The differential of a function is a [higher order function](./../../other/comp_terms#
higher-order-functions). Meaning, it takes a function as an argument and in this case returns a function as its ouput (higher order functions need not return functions as their outputs. For instace, $\int f d\mathbb{P}$ is a higher order function that returns a scalar.)

$$\partial f :: (\mathbb{R}^n \rightarrow \mathbb{R}) \rightarrow (\mathbb{R}^n \rightarrow (\mathbb{R}^n \rightarrow \mathbb{R}))$$
The differential exhibits linear structure. 
- The differential is a linear function which means that is preserves the linear structure on the function space 
$$\partial (f + g) = \partial f + \partial g $$
- The differential evaluated at a point $x$ is also a linear map

$$\partial f(x)[u + v] = \partial f(x)[u] + \partial f(x)[v]$$
##### Composition 

$$\begin{aligned} 
g &: \mathbb{R}^n \rightarrow \mathbb{R}^m  \\\\ 
f &: \mathbb{R}^m \rightarrow \mathbb{R} \\\\
h &:  \mathbb{R}^n \rightarrow \mathbb{R} =  f \circ g \\\\ \\\\ 
\partial h(x) &= \partial f (g(x)) \partial g (x)  \end{aligned} $$

#### Mean Value Theorem

$$f(y)  = f(x)  + \partial f \big(x + \alpha(y-x)\big)[y-x], \quad \alpha \in [0,1]$$

#### Taylor Series 

$$f(y)  = f(x) + \partial f(x)[y-x] + \frac{1}{2}[y-x]^T\partial^2 f(x)[y-x] + \dots $$

