
### **Importance**

Economics is often characterized as the study of tradeoffs. Often these tradeoffs occur over time. For instance, the benefit of some decision may occur today but the costs won't be realized until some time in the future. We all understand this idea intuitively. Because the costs occur in the future, we generally aren't certain what value they will take. For example, if you don't attend class, you don't read the notes, then odds are, you won't do well on the midterm. But what are those odds? To represent this uncertainty, we turn to **[probability theory](./../../math/probability_intro.md)**. 



### **Important Aspect**

There are many important aspects of probability theory, but arguably the most important part to understand is the notion of a **random variable**. As perhaps you have heard before, a random variable is neither "random" nor is it a variable. Rather, as we illustrate below by defining its signature, a random variable is a function.[^1]

$$X: \Omega \to \mathbb{R}$$

Thinking of a random variable as a function will be helpful for two reasons: 

1) You'll better understand the essenence of a random variable (it "pulls" the probability distribution forward)

2) It will be straightforward to understand how we can compose random variables (because we'll just be composing functions!)

It's important to understand, though, that not every function with the above signature is a random variable. A random variable must be a **$\mathcal{F}$-measurable** function. This is more than a technical detail. This detail gets to the essence of a random variable. To understand this, let's introduce the following two **measurable spaces**. 

$$\begin{align*}\big(\Omega, \mathcal{F}\big),  \quad \big(\mathcal{R}, \mathcal{B}(\mathcal{R}) \big) \end{align*}$$

a function, $X$ is a **$\mathcal{F}$-measurable** function if for every element of the **Borel $\sigma$-algebra**, the pre-image under $X$ is in $\mathcal{F}$.

$$\begin{align*} \forall \ B \in \mathcal{B}(\mathcal{R}), X^{-1}(B) \in \mathcal{F} \end{align*}$$

This detail highlights how exactly the random variable (as mentioned in point 1) pulls the probability measure forward. If we add a probability measure to the original measurable space, and then introduce a random variable, the generate probability measure $\mathbb{P}_X$, can be understood as the composition of the original probability measure and the preimage of the random variable.

$$\begin{align*}\big(\Omega, \mathcal{F}, \mathbb{P}\big),  \quad \big(\mathcal{R}, \mathcal{B}(\mathcal{R}), \mathbb{P}_X \big), \quad \mathbb{P}_X = \mathbb{P} \circ X^{-1}\end{align*}$$

??? tip "Check Your Understanding"

    If $\mathcal{F} = 2^{\Omega}$ can you see why every function defined with respect to this measureable space is a random variable?

### **Example**

Let's say we have a sample space, $\Omega$, that defines the possible states of the world tomorrow. Then we have a random variable, $X: \Omega \to \mathbb{R}$, that tells us the value of Tesla stock in each possible state of the world. And finally we are given a utility function, $U: \mathbb{R} \to \mathbb{R}$, that tells us how many "utils" we get from money. Then by composing $X$ with $U$, we can construct a new random variable that tells us how many utils we will get in each state of the world if we're holding a share of Tesla, $U \circ X : \Omega \to \mathbb{R}$


[^1]: Technically, it is a measurable function.

[^2]: I'm not sure what the fraction of 




<!-- Expected cash flow with risk-adjusted discounted rate:
$$\begin{align*} \sum _{t=1}^{\infty} \frac{ \mathbb{E}[X_t]}{1 + r_{ta}} \end{align*}$$

Certainty Equivalence with risk-free discounted rate:
$$\begin{align*} \sum _{t=1}^{\infty} \frac{ \text{CE}(X_t)}{1 + r_t} \end{align*}$$ -->

