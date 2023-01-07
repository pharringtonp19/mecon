When you are learning something, it can be difficult to understand what's really important. So let me start there. 

> A random variable is a function. 

A random variable is not something with a distribution. It's not normally distributed. It's a function. 

$$ X: \Omega \to \mathcal{R}$$ 

If you have taken a statistics class before you may be confused by these statements. You have perhaps seen the following bit of math where your teacher claimed that $X$ is a normally distributed random variable. 

$$ X \sim \mathcal{N}(0, 1)$$

In my opinion, this is short hand notation that can cause confusion because it obscures the essence of a random variable (which I'll explain shortly!)[^1] The above is not a random variable. Rather, it describess a probability space. 

$$\big(\mathcal{R}, \mathcal{B}(\mathcal{R}), \mathbb{P} \big), \quad \int _{-\infty}^a x d\mathbb{P} = \frac{1}{\sqrt{2\pi}} \int _{-\infty}^a \exp(-x^2/2)dx$$


[^1]: The essence of a random variable is revealed only through its entire definition. A random variable is a measurable function. That is, we can assign probability to any pre-image under the random variable of any Borel set. We explain this in more detail shortly. 