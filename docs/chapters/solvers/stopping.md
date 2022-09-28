$$\begin{align*} F : \mathbb{R}^n \to \mathbb{R}^m \end{align*}$$

??? tip "Math on the Computer"

    In modern statistical learning settings, $n > m$. That is we have more parameters than we have equations.  

$$\begin{align*} 
F(x) &= \begin{pmatrix}
x^2_1 + x_2^2\\
x^2_1x^2_2
\end{pmatrix} \\ 
J_F(x) &= \begin{pmatrix}
2x_1 & 2x_2 \\ 
2x_1x_2^2 & 2x_1^2x_2
\end{pmatrix} 
\end{align*}$$

### **Key Ideas**
- Algorithmic map: 

$$x_{i+1} = g(x_i)$$

- Solution as the fixed point of the algorithmic map 

$$x^* = g(x*)$$

- Stopping Conditions:
    - Function Norm Criteria:

    $$\| F(x) \| \leq \varepsilon$$

    - Step Norm Criteria:

    $$\| x_{i+1} - x_i \| \leq \varepsilon _R \|x_{i+1} \| + \varepsilon _A$$