!!! tldr "Overview"

    The aim of this lecture is to introduce the basic mathematical concepts for modeling constraints

??? Danger "Warning"

    Some of this material would be difficult to grasp just from reading these notes. Additional example will be provided in lecture to help clarify these concepts.

We are going to work from an understanding that people fundamentally "Maximizers". That is, their behavior can be explained via an **objective function** and **constraints**. In this lecture, we're going to introduce the mathematical tools that we can use to represent constraints. 

$$ \textrm{Maximizer} :: \text{Objective} \to \text{ConstraintFunction} \to \text{Decision} $$

### **Choice Variables** 

You can think of a constraint as a limitation or restrictions on choice. In order to model this restriction, we first have to consider the scenario where there are no restrictions. We represent this lack of restrictions via the **choice set**. It's the set that contains all possible choices and we'll denote it in this lecture by $\mathcal{X}$. 

For example, let's say that you are deciding which day of the week to go foodshopping. Your choice set would then be the following:

$$\{ \text{Sunday}, \text{Monday}, \dots  ,\text{Friday}, \text{Saturday}\}$$

Or perhaps your considering sending a friend an encouraging emoji, then your choice set might be the set 
of all possible emojis --> :smile: :bike: $\dots$ :goat: :basketball:

### **Constraint Function** 
To illustrate which choises are possible and which are not, we introduce the constraint function which we'll denote by $F_p$. The constraint functions reflects how feasible the choice $x$ is. 

To continue with the above example, let's say that you have to drive in order to go to the food store but you don't have a car. So in order to get to the food store, you need to borrow your roomates which is only available on the weekends. We can capture this information via a constraint function which **returns** a $0$ when evaluated on a weekend day and $1$ when evaluated on a weekday (as shown below). By passing an element of the choice set into the contraint function we're "told" whether such a choice is feasible.

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

You may have noticed that I subscripted the constraint function with the letter $p$. In this context, $p$ denotes a parameter (something that helps define the function -- if you change the parameter then you have defined a new function). By "parameterizing a function", we can now talk about a set of functions as depicted below where $\mathcal{I}$ is an index set.

$$\begin{align*}
\{ F_p \mid p \in \mathcal{I} \}
\end{align*}$$

#### Relationships
Let's make things more concrete by introducing another example. Let's say you are looking to buy a car. Your choice set will then be all the cars available to you (either at your neighborhood dealer, or online). In this context, the constraint function maps from the set of cars into $\{0, 1\}$, where again $0$ indicates that you can afford the car and $1$ represents that you cannot (too expensive!). 

$$\begin{align*}
F :: \text{Set of Cars} \to \{0, 1\}
\end{align*}$$

As you are probably aware, though, the federal goverment offers a federal tax credit to people who buy an electric car. Now the question of whether you can afford a specific car will depend on the size of the federal tax credit. We can represent this via a parameterized constraint function where the size of the tax credit is the parameter and the index set, $\mathcal{I}$, as the set of tax credits that the federal goverment is considering. 

Now here's the key insight! The set of constraint functions that a consumer can face is "roughly equivalent" to the choice set of the federal government![^1] That is, the index set above is the choice set of the federal government![^2]


#### Explanation :material-lightning-bolt:
In the previous section, we defined a constraint function as a function that maps from the choice set into $\{0,1\}$. I will refer to this set as ZeroOne. The signature of the function is as follows.

$$ \textrm{ConstraintFunction} :: \text{Choice Set} \to \text{ZeroOne} $$

By parameterizing the constraint function, we get the following signature

$$ \textrm{ParameterizedConstraintFunction} :: \text{Parameter} \to \text{Choice Set} \to \text{ZeroOne} $$

That is, if we have a ParameterizedConstraintFunction and we provide it with a Parameter then we get a ConstraintFunction.

#### Useful :material-diamond:  
The natural question is, why do we want to consider a parameterized function? The high level idea is the following. We're modeling individuals/firms/goverments as if they are "Maximizers". 

$$ \textrm{Maximizer} :: \text{Objective} \to \text{ConstraintFunction} \to \text{Decision} $$

By parameterizing the constraint function, we can rewrite the signature as follows

$$ \textrm{Maximizer} :: \text{Objective} \to \text{ParameterizedConstraintFunction} \to \text{Parameter} \to \text{Decision} $$

This tells us that if we know the function Maximizer, and we're given an Objective function and a ParameterizedConstraintFunction, then the end results is that we have a function that maps from Parameters to Decision. 

It might not be immediatley obvious, but this type of function is often of great economic interest. For example, the parameter might be the tax rate, and the decision might be how much to work. Or the parameter might be the number of oil field leases and the decision might be the aggregate gas consumption.[^2] This function can therefore be used to capture the relationship between a govenerment's policy and individual or aggregate behavior.

Sometimes though, as mentioned in the previous lecture, we don't have enough structure to accruately model some behavior. For example, as we'll discuss later in the class, we don't always observe the constraint set of the indivdual or firm of interest. But perhaps, we relatively confident that the constraint function looks something like a certain class of functions. Then we can use this exact same set-up to capture our uncertainty!



### **The Feasibility Set**

Putting this all together (the choice set, the parameterized constraint function), for a given context, we can define the feasible set as follows:

$$\{x \in \mathcal{X} | \ F_p(x) \leq 0 \}$$

### **Exchange Function**

Related to the idea of the constraint function, there is this notion of an exchange function which captures how different choice variables can be exchanged for each other. 

- In the case of a budget constriant, we'll show that the exchange function is captured by the relative prices 
$$ x_1 \longmapsto \frac{p_1}{p_2}x_1$$
- In the case of a savings problem, the exchange function is captured by the relative savings/borrowing rates 
$$ x_1 \longmapsto (1+r_{\text{savings}})x_1$$
- In the case of production, the exchange function determined by the level and type of technology, where we allow $x$ to represent a vector of inputs which get mapped into some output.
$$ x \longmapsto f(x) $$






<!-- ### **Consumption**
- Highlight is currying/partial evaluation 

### **Production**
- Highlight is IFT -->

[^1]: One persons choice set is equivalent to the set of constraints functions of another person!

[^2]: This general idea though is perhaps more prevalent than you might initially imagine. For instance, if you're considering watching a short video on a social media app, your feasible choice set might be all the possible videos that you can scroll through. What's your constraint in this context? Well the fact that you have to scroll through videos -- that takes time! Whose decisions influence your constraint? Well the social media algorithm that decides how to layout/ represent the videos that you see. 

[^3]: I recognize that this probably won't make sense yet. I really just want you to get used to seeing this structure and to trust me that it will simplify things in the long run. We'll make heavy use of this thoughout the semester and I'm confident that it will sink in over the comming weeks. Hang in there!
