### **Background**

$$\big(\Omega, \mathcal{F}, \mathbb{P}\big), \quad X: \Omega \to \mathbb{R}, \quad \mathcal{G} \subset \mathcal{F}$$

- A random variable is measurable with respect to a sigma algebra if the probability under the random variable of any borel set can be determined by the probability assigned to an element of the sigma algebra 

$$\forall B \in \mathcal{B}(\mathbb{R}), \quad X^{-1}(B) \in \mathcal{G} $$

### **Conditioning on an Event**

#### **Conditional Probability**

By condining on a non-zero probability event, we generate a new probability measure 

$$\mathbb{P}_B(A) = \frac{\mathbb{P}(A \cap B)}{\mathbb{P}(B)}, \quad \forall A \in \mathcal{F}$$


$$\textcolor{blue}{\text{conditionalProbability}} :: \text{Event} \to \text{Measure}  \to \text{Event} \to \text{Float}[0,1]$$

Where we recover the orginal probabilty by partially evaluating the conditionalProbability at $\Omega$. 




#### **Conditional Expectation**
With a new probability measure, we can then take the expectation with respect to this measure 

$$\begin{align*}E_{\mathbb{P}_B}[X] &= \int X d\mathbb{P}_B  \end{align*} \\ $$

We know that 

$$E[X \cdot 1_B ] = \int X \cdot 1_B d\mathbb{P}$$

$$\textcolor{blue}{\text{conditionalExpectation}} :: \text{Event} \to \text{Measure} \to  \underbrace{\text{RandomVariable} \to \text{Float}}_{\text{linear functional}}$$

We notice two things here:

- First, like above, we can recover the orginal expectation by partially evaluating the conditionalExpectation at $\Omega$. 
- We also see, though, that if measure and random variable are evaluated, then we've defined a new random variable. That is, by re-writing the type signature as follow:

$$\textcolor{blue}{\text{conditionalExpectation}} ::  \text{Measure} \to \text{RandomVariable} \to \underbrace{\text{Event} \to \text{Float}}_{\text{Random Variable}}$$

This might introduce an idea to you that perhaps we if we condition on a set of events, 
