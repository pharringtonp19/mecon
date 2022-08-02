!!! tldr "Overview"

    The key takeaway is to understand that information not only shapes markets, but can determine whether they exist in the first place.

### **Motivating Example**

The following is an adoption from Geroge Akerlof's Market for Lemons.[^1] We begin by consider the case where there are two types of cars with the following values assocaited with the potential buyers and sellers of the car (I've used variables to stand in for specific values). What's import here is that the that the buyer values each type of car more than the sellers)


| Cars      | Quantity | Buyer Value | Seller Value | 
| :----:  | :----: |  :----: | :----:  |
| Plums      | $q_1$      | $\text{buyer}\_\text{value}_1$ |  $\text{seller}\_\text{value}_2$ | 
| Lemons   | $q_2$        |  $\text{buyer}\_\text{value}_2$ |  $\text{seller}\_\text{value}_2$ |

#### **Exercises**

!!! Question "Framework"

    See if you can write down the above problem in terms of a probability space (Answer: [^2])

!!! Question "Market Clearing Condition"

    Letting $V$ denote the random variable that captures the buyer's value of each car, work through the conditions underwhich the "market clears" (Answer: [^3])

??? Tip "Math on the Computer"

    ```python
    import jax
    import jax.numpy as jnp 
    from functools import partial 
    from dataclasses import dataclass 

    @dataclass 
    class Market_for_lemons: 
        alpha : float = 0.5 
        buyer_value: jnp.array = jnp.array([100., 50.])
        seller_value: float = 80.0 
    ```





[^1]: [Here](https://en.wikipedia.org/wiki/The_Market_for_Lemons) is the wiki article

[^2]:

    ???+ check "Answer"

        - $\Omega = \{\text{plum}, \text{lemon}\}$
        - $\mathcal{F} =  \Big\{\emptyset,  \{\text{plum}\},  \{\text{lemon}\},  \{\text{plum}, \text{lemon}\}  \Big\}$
        - $\mathbb{P}(\emptyset) = 0,\mathbb{P}(\{\text{plum}\}) = \alpha,  \mathbb{P}(\{\text{lemon}\}) = 1-\alpha,  \mathbb{P}(\{\text{plum}, \text{lemon}\}) = 1$

[^3]:

    ???+ check "Answer"

        We know that the market will clear if the expected value that the consumer derives from buying a car is greater than the value that a seller associates to the plums. 

        Which means that we'll want to express our answer in terms of the probability measure, the random variable, anb the seller's value of a plum.

        $$\begin{align*}E[V] &= \int Vd\mathbb{P} \\ 
        &= \sum _i V(E_i)\mathbb{P}(E_i) \\
        &= V(\text{plum})\alpha + V(\text{lemon})(1-\alpha)\end{align*}$$
