!!! tldr "Overview"

    In this lecture we extend the choice set and utility function to allow us to model agents selecting random variables. 

### **Introduction**

Up to this point in the course, we have considered "everything" to be known. For example, consumer's know their income and firm's known the demand they face. From a modeling perspective, this has been appropriate because we've thought of consumers and firms as maximizing a static objective function: 

$$\underset{x \in F_p^{-1}(0)}{\text{maximize}} \ f(x)$$

As we've discussed repeatedly, though, consumers and firms don't behave in this manor. They make a sequence of decisions over time whose effects/conseqeunces are generally unknown when they make them. If you read the previous sentence again, you'll realize that there is alot to unpack. As is typical in this class, we'll do so little by little. In this lecture we'll start by unpacking what it means for the outcomes to be unknown. 

??? note "Technical Review"

    Random variables are functions that generate new probability spaces. 

    Consider the following probability space where $\Omega$ denotes the set of possible states of the world.

    $$\big( \Omega, \mathcal{F}, \mathbb{P}\big)$$

    A random variable defined on this space, $X: \Omega \to \mathbb{R}$, then generate a new probability space as follows 

    - The "sample space" is the codomain of the random variable 
    - We've assigning probabilities to elements of the Borel Sigma algebra 
    - The probability measure induced on this space is defined as follows: $\mathbb{P}_X := \mathbb{P} \circ X^{-1}$

    $$\big( \mathbb{R}, \mathcal{B}(\mathbb{R}), \mathbb{P}_X\big)$$

### **Example**

Let's assume that an individual has a home worth $v$ dollars and that with probability $p$ a storm will damage housing causing $z$ dollars worth of losses. In light of this, the consumer can decide whether to buy insurance to cover their house. That is, for each dollar of insurance they purchase, they will receive $k$ dollars if the storm occurs.

??? tip "Notation"

    - We can consider the sample space to be whether or not a storm damaged the house 

    $$\Omega = \{\text{storm}, \text{no storm}\} $$

    - Because the sample space is countable, we can take $F$ to be the power set of $\Omega$ 
    - Then the probability measure defined on $F$ can be expressed as follows:

    $$\begin{align*} \mathbb{P}(\emptyset) &= 0 \\ 
    \mathbb{P}(\{\text{storm}\}) &= p \\ 
    \mathbb{P}(\{\text{no storm}\}) &= 1-p \\
    \mathbb{P}(\{\text{storm}\} \cup \{\text{no storm}\}) &= 1 \\\end{align*}$$

#### Choice Set 

The choice set for the consumer is the amount of insurance to purchase. Prior to seeing whether the storm occurs, they have to decide on the amount of insurance to purchase. 

The choice set could also be thought of as a collection of random variables indexed by the amount of insurance purchased:

$$X_l(\omega)=
\begin{cases}
v - l, \quad \omega = \text{if no storm}\\
v - l - z + kl, \quad \omega = \text{if storm}\\
\end{cases}$$


#### Objective Function (Expected Utility)

$$V :: \text{Utility Functions} \to \text{Probability Measures} \to \text{Random Variables} \to \mathbb{R}$$

$$\begin{align*}V(\mathbb{P}, X_l, U) &= \int U \circ X_l d\mathbb{P}  \\ 
&= \ U(X_l(\text{no storm}))(1-p) + \ U(X_l(\text{storm}))p \\ 
&= \ U(v - l)(1-p) + \ U(v - l - z + kl)p \end{align*}$$





### Extentions
    








