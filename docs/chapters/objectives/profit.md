
### **Introduction** 

Firms may have a variety of objectives, but we'll start by modeling them as profit maximizing entities. That is, we'll assume that they make decisions in order to maximize their profit: 
$$\text{Profit} = \text{Revenue} - \text{Cost}  $$ 

As with the utility function, we'll express the profit function as a parameterized function whose domain is the firm's choice set:

??? info "Description" 

    If we want to be more general, then we can express profit as a "curried" function as follows: 

    $$\text{Profit} :: \textrm{Technology} \to \text{Output Prices} \to \text{Input Prices} \to \text{Inputs} \to \mathbb{R} $$

$$ \begin{align*}\text{Profit} &: \textrm{Inputs} \to \mathbb{R} \\ 
\text{Profit}_{f,p,w}(x) &= \langle p, f(x) \rangle - \langle w, x \rangle \end{align*}$$


### **Time** 

We may want to separate inputs into those that are fixed in the short run and those that are not 

$$\text{Profit} :: \textrm{Technology} \to \text{Output Prices} \to \text{Input Prices} \to  \text{Fixed Inputs} \to \text{Variable Inputs} \to \mathbb{R} $$

### **Maximizing Over Inputs**

Above, we formulated the problem of the firm as selecting the output to produce, and we assumed that they knew both the demand and associated cost functions. We could also formulate the problem of the firm as maximizing profit with respect to the input levels. 

$$\underset{x}{\text{maximize}} \ p(f_t(x))f_t(x) - c_w(x)$$

??? info "Bi-level Formulation"

    $$\underset{q}{\text{maximize}} \ p(q)q - \underset{x}{\text{minimize}} \ c(x) \ \text{s.t.} \ f(x)=q $$



