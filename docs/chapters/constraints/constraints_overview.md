!!! tldr "Overview"

    The aim of this **Section** is to illustrate how constraints reflect the "relative" cost of some activity or some good. 

The basis for almost of the modeling done in this class is that people/firms/goverment are fundamentally optimizers. That is, their behavior can be explained via an **objective function** and **constraints**. In this lecture we're going to introduce the mathematical tools that we can use to represent constraints. 


### **Choice Variables** 

You can think of a constraints as a limitations or restrictions on choice. In order to model this restriction, we first introduce the set of all possible choices, which we'll denote by $\mathcal{X}$. This choice set is the collection of things that we can consider choosing from. 

For example, let's say that you are deciding which day of the week to go foodshopping. Then your choice set might be 

$$\{ \text{Sunday}, \text{Monday}, \dots  ,\text{Friday}, \text{Saturday}\}$$

Or perhaps your considering sending a friend an encouraging emoji, then your choice set might be the set 
of all possible emojis --> :smile: :bike: $\dots$ :goat: :basketball:

### **Constraint Function** 
To illustrate which choises are possible and which are not, we introduce the constraint function, $F_p$. It reflects how feasible the choice $x$ is. 

To continue with the above example, let's say that you have to drive to the food store and so you would need to borrow your roomate's car which is only available on the weekends. We can highlight which days we could go shopping via a constraint function which returns a $0$ to indicate we can shop on that day and a $1$ to indicate that we cannot.

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

You may have noticed that I subscripted the constraint function with the letter $p$. In this context, I use $p$ to denote a parameter (something that helps define the function -- if you change the parameter then you have defined a new function). By "parameterizing a function", we can now talk about a set of functions as depicted below where $\mathcal{I}$ is an index set.

$$\begin{align*}
\{ F_p \mid p \in \mathcal{I} \}
\end{align*}$$

The natural question is, why do we want to consider a parameterized function? Well, we will often be interested in how the "optimal" decision varies with the constraint. For example, in many fishing and hunting industries there is some limite on the frequence or time when you can search for wildlife. We might be interested in modeling how the long run ecosystem would behave under various fishing an hunting restrictions. 

$$ F :: \text{Params} \to \text{ChoiceVariable} \to \text{Bool} $$

### **The Feasibility Set**

Putting this all together, we can define the feasibility set as follows:

$$\{x \in \mathcal{X} | \ F_p(x) \leq 0 \}$$
<!-- ### **Consumption**
- Highlight is currying/partial evaluation 

### **Production**
- Highlight is IFT -->

