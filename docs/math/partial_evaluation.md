### **Introduction**

From when we were first introduced to mathematics in a semi-formal way, we've looked at addition, denoted by $+$, as a function that takes two numbers and returns a new number[^1]

$$(+) : \mathbb{R} \times \mathbb{R} \to \mathbb{R}$$

As in:

$$ \begin{align*}(+) (2, 3) &= 5 \\ 
(+) (10, 12) &= 22 \end{align*}$$

What would happen, though, if instead of passing in two numbers to $(+)$ we only passed in one number? That is, we know that if we pass in $(2,3)$ we'll get back the number $5$, but what if we pass in just the number $2$, what would we get back, and is this even legal?!?

??? note "Answer"

    First, yes it is legal! Second, we get back a new function that takes in a single number and returns another number. For example, if we partially evalute addition with the number $2$, which I'll denote by $(+)_2$, we get a function that takes any number and return that number plus $2$. 

### **Motivation**

From the example above, it's not clear why would we would care about partial evaluation. What's so useful in the statement that $(+)_2(3) = (+)(2,3) = 2+3 = 5$? At first glance, this is just a more complicated way to think about addition. What's the benefit? We'll see the usefulness of this approach throughout the semester, but we can start to appreciate it right away by re-considering something we're already familair with! [the parameterized constraint function](./../chapters/constraints/constraints_overview.md)

[^1]: For visaul clarity, though, we often express the above as $2 + 3$ and $10 + 12$. 