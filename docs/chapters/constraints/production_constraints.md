- In contrast to the budget set, apriori there is not maximum input level 
- The production set represents a conversion of inputs to outputs. In that sense, the production set captures the tradeoffs, whereas the budget line reflected the tradeoffs. 

We want to allow the production function to be a vector valued function to capture that during the production process there can be some form of "waste" generated.

??? tip "Math on the Computer"

    ```python 
    import jax
    import jax.numpy as jnp 
    from functools import partial 
    from typing import NamedTuple 

    class Params(NamedTuple):
    """Parameters related to the
    production fn"""
    productivity: float 

    class ChoiceVariables(NamedTuple):
    """Input levels"""
    input1: float 

    class Outputs(NamedTuple):
    """Outputs of the production process"""
    output1: float

    def F(params: Params, input1: float): 
    """Production Function"""
    output1 = params.productivity * jnp.sqrt(input1)
    return Outputs(output1)

    n = 1000
    params = Params(3.0)                                               
    input1s = jnp.linspace(0, 20, n)             
    outputs = jax.vmap(partial(F, params))(input1s)     
    ```

<figure markdown>
  ![Image title](./../../fig/production_fn.png){ width="500" }
</figure>
