### **Introduction**

??? tip inline end "Math on the Computer"
    In the context of working on a computer, a function that behaves like a mathematical function is called a "pure function"

A function is a mapping that takes a value as an input and returns a value as an output. 

$$\begin{align*}x \in \mathcal{X}, \quad x \overset{f}{\longmapsto} f(x), \quad \textrm{where} \ f(x)  \in \mathcal{Y} \end{align*}$$
 

 This has more detail than I will normally provide when I write down a function in lecture but it's helpful to see the distinct components: 

- $\mathcal{X}$, $\mathcal{Y}$ are sets[^1] called the domain and codomain respectively
- $x$ is an element of $\mathcal{X}$ and is the input to the function
- $f(x)$ is the output, also referred to as the image of $x$ under $f$ 
- $f$ is the function which maps all of the elements of $\mathcal{X}$ into $\mathcal{Y}$ such that for each $x$ there is only one $y$. We can partially define a function as follows. This tells us the domain and codomain of the function.

$$\begin{align*} f: \mathcal{X} \to \mathcal{Y} \end{align*}$$


### **Composition**

Perhaps you will recall that as with numbers, we can add functions. For example, let's say that we are given two function: $f(x) = 2x$, $g(x) = x^2$, then we can construct a new function by adding $g$ with $f$ as follows. 

$$\begin{align*} h &= g + f \\ 
h(x) &= g(x) + f(x) \\ 
h(x) &= x^2 + 2x \end{align*}$$

??? inline end "Question" 

    Does the order of composition matter? It doesn't when we multiply numbers!

As you see above, we add functions (as done in the first line), pointwise.[^2]

If we can add functions, it's natural to consider whether we can multiply them. We can multiply numbers, so why not functions? And indeed we can! We refer to this multiplication as **composition**. That is, we can construct a new function by composing two other functions as follows (**note** the symbol $\circ$ denotes composition.) 

$$\begin{align*} h &= g \circ f \\ 
h(x) &= g(f(x)) \\ 
h(x) &= (2x)^2 \end{align*}$$


### **Implicit Functions** 

Implicit functions are functions where a solver is called during the evaluation of the function. 

$$x^*(\theta) := \underset{x}{\text{solve}} \ F(x, \theta) = 0 $$

### **Vectors as Functions**

- Reference: Thinking with Types

$$| a \to b | = \underbrace{|b| \times |b| \times \dots \times |b|}_{=|a|\textrm{times}} = |b|^{|a|}$$




[^1]: a set can be loosley understood as a collection of things. 

[^2]: If you think about this point, it's natural to be momentarily confused. In essence we are defining addition of functions by making use of the addition that we use for numbers. 


