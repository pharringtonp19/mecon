 $$B := \{x \in \mathcal{X} | \ F(x) \leq 0\}$$

### **Consumers**
There might be $n$ different goods and services available to purchase. With a given level of income $m$, an individual can only afford certain combinations of these $n$ goods. Mathematically we represent this as follows:
- Let $x \in \mathbb{R}^n$ represent a bundle of goods. That is $x.i$ denotes the amount of the $i^{th}$ good in the bundle 
- Let $p \in \mathbb{R}^n$ represent the prices of the $n$ goods. That is, $p.i$ corresponds to the price of the $i^{th}$ good. 

$$\begin{aligned}B := \{x \in \mathcal{X} | \ F_{p,m}(x) \leq 0\} \\\\
\text{where} \quad F_{p,m}(x) = p \cdot x - m \end{aligned}$$

??? tip "Math on the Computer"

    ```python 
    import jax
    import jax.numpy as jnp 
    import matplotlib.pyplot as plt
    from functools import partial 
    from typing import NamedTuple 

    class Params(NamedTuple):
    """Parameters of the budget constraint"""
    income: float 
    price1: float 
    price2: float 

    class ChoiceVariables(NamedTuple):
    """Bundle of Goods"""
    good1: float 
    good2: float 

    def F(params: Params, good1: float): 
    """Constraint Function"""
    good2 = params.income/params.price2 -good1*(params.price1/params.price2)
    return ChoiceVariables(good1, good2)

    params = Params(35.0, 10.0, 5.0)                                      # Initialize Parameters for F         
    good1s = jnp.linspace(0, params.income/params.price1, 100)            # Max x1 is m/p1
    bundles = jax.vmap(partial(F, params))(good1s)                        # Partially Evaluate + "Vectorize"
    ```

<figure markdown>
  ![Image title](./../fig/budget.png){ width="500" }
  <figcaption>Budget Constraint</figcaption>
</figure>


### **Producers**

