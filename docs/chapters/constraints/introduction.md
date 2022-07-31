!!! tldr "Overview"

    The aim of this chapter is to illustrate how constraints reflect the "true" cost of some activity or some good. 

## **Framework**
Given a set of constraints, we can derive the feasibility set 

$$\{x \in \mathcal{X} | \ F_p(x) \leq 0 \}$$

### **Choice Variables** 


$\mathcal{X}$ is the choice set. It is the collection of things that we can consider choosing from. For instance, let's say that you are deciding which day of the week to go foodshopping. Then your choice set might be 

$$\{ \text{Sunday}, \text{Monday}, \dots  ,\text{Friday}, \text{Saturday}\}$$

Or perhaps your considering sending a friend an encouraging text, then your choice set might be the set 
of all possible emojis --> :smile: :bike: $\dots$ :goat: :basketball:

### **Constraint Function** 
$F_p$ is the **constraint function**. It reflects how feasible the choice $x$ is. For instance, lets say that you have to drive to the food store and so you would need to borrow your roomates car which is only available on the weekends then:  

$$\begin{align*}
F_p(\text{Sunday}) &= 0 \\
F_p(\text{Monday}) &= 1 \\ 
\vdots \\ 
F_p(\text{Friday}) &= 1 \\
F_p(\text{Saturday}) &= 0  
\end{align*}$$

### **Parameters**

??? Danger inline end "Challenge"
    At a high level, the distinction between parameters and the constraint function can be a bit blurry. For instance, it's possible to define the constraint function simply as the "apply" function and then place everything relevant to the problem as a parameter.

When we're modeling a feasibility set, we do so with respect to a firm, a consumer, perhaps even a government agency. The decisions that that this entity can make are represented by the choice variables, and the decisions that entities around them, whose behavior we are not directly modeling are referred to as parameters. 





$$ F :: \text{Params} \to \text{ChoiceVariable} \to \text{Bool} $$

## **Sections**

### **Consumption**
- Highlight is currying/partial evaluation 

### **Production**
- Highlight is IFT

