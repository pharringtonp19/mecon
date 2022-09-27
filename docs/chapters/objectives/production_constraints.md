??? tip "Notebooks"
    |Description | Notebook | Status 
    |:---:|:---:|:---:|
    Production Function | <a href="https://colab.research.google.com/github/pharringtonp19/mecon/blob/main/notebooks/production_function.ipynb" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a> | Work In Progress

### **Introduction**
- The information that a firm has will affect how they produce something. Think of knowledge diffusion. 

Firms make decisions regarding what to produce and how to produce. We can model this relationship via a function that maps from the set of **factors of production**[^1] to the set of outputs.

$$\text{Production Function} :: \text{Factors of Production} \to \text{Output}$$

Below, we plot what this might look like if we had one input and one output. 

<figure markdown>
  ![Image title](./../../fig/production_fn.png){ width="500" }
</figure>

In practice, this production function can be quite complex, because firms might not just need to decide on the number of workers to hire, but also how to recruit them, and how to incentive them to be productive workers.[^2]

### **Isoquants**

As with the objective function that we considered in the case of the consumer, the level sets of the production function have an economic name (they are referred to as isoquants) and are economically meaningful in that they illustrate the rate at which firms tradeoff one input for another (although in contrast to indifference curves, they are observable!) 




## Technical Rate of Substition


### Derivation

Let's say that we have an isoquant where $x$ and $y$ correspond to the amount of inputs used to produce $\alpha$ units of output

$$F(x, y) = \alpha $$

The above equation defines an implicit function which we can call explicitly as follows

$$x \longmapsto \underset{y}{\text{solve}}\ F(x,y) = 0$$

The technical rate of substitution is defined the derivative of the isoquant which we can compute as follows:

??? info inline end

    The implicit function theorem can be understood as providing a set of sufficient conditions for this step. 

Let's start by writing the isoquant in terms of the function $y(x)$

$$F(x,y(x)) = 0$$

Now, both the left and right hand sides are functions of $x$, so we can differentiate both side
with respect to $x$.

$$\partial _xF(x,y(x)) = 0$$

From our understanding of calculus, this derivative can be expressed as follows:

$$\partial _0F(x,y) + \partial _1F(x,y(x))\frac{d}{dx}y(x) = 0 $$

Hopefully, you can interpret these terms: 

- **Marginal Product of $x$**: $\partial _0F(x,y)$
- **Marginal Product of $y$**: $\partial _1F(x,y)$
- **Technical Rate of Substitution**: $\frac{d}{dx}y(x)$

We see then that we can express the technical rate of substition in terms of the negative of the ratio of the 
two marginal products: 

$$\frac{d}{dx}y(x) = -\frac{\partial _0F(x,y)}{ \partial _1F(x,y(x))}$$

### Toy Example

To make things concrete, let's create a toy example. We'll consider the following production function

$$F(x, y) = Ax^{\alpha}y^{\beta}$$

Check your understanding -- With the following values, what do you get as the output and the technical rate of substitution? 

$$A=3, \alpha=0.8, \beta=1.3, x=10, y=2$$

??? tip "Math on the Computer"

    ```python 
    def F(x, y, A=3, alpha=0.8, beta=1.3):
        return A*x**alpha*y**beta 

    def implicit_grad(F, x, y):
        marginal_product_x, marginal_product_y = jax.grad(F, argnums=(0,1))(x, y)
        return -marginal_product_x/marginal_product_y

    print(f"Output: {F(10., 2.):.2f}, TRS: {implicit_grad(F, 10., 2.):.2f}")
    ```

In our work above, we compute the technical rate of substituion given the quantities of each input. This is not the only starting point (information) from which we can compute the TRS though. We can also compute it if we are given one input and the desired output. **Consider**: How might we incorporate our previous work to build this new function? 

The task is then to use the level of input of one good and the desired output to compute the input level of the other good. 

$$F, x, \text{level} \longmapsto F, x,  y(F, x, \text{level}) \longmapsto\underbrace{ \text{TRS}(F, x, y)}_{\text{We have this!}} $$

So we just need to be able to evaluate the implicit function which we can do by calling a solver

$$y(F, x, \text{level})$$

??? tip "Math on the Computer"

    ```python 
    def implicit_function(x, F, level):
        solver = jaxopt.GradientDescent(fun=lambda y: (F(x,y)-level)**2, maxiter=500)
        return solver.run(1.).params 

    def implicit_grad2(F, x, level):
        y = implicit_function(x, F, level)  
        return implicit_grad(F, x, y)

    print(implicit_grad(F, 2., 10.), implicit_grad2(F, 2., F(2., 10.)))
    ```

### Returns to Scale 
- If I double the studying time, do I double my grade?
- If I double the number of chips in my computer do I double the amount of functions I can evaluate? 

[^1]: The factors of production would include anythin in the production process such as land, capital (both fisical and financial) and labor

[^2]: Two interesting articles on this topic: [article 1](https://www.wsj.com/articles/labor-shortage-unemployment-pella-iowa-11659364081?mod=hp_trending_now_article_pos4)
[article 2](https://www.wsj.com/articles/in-battle-for-workers-companies-build-houses-11653217201?mod=article_inline)