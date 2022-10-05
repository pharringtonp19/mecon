
### **Recap**
The path we've taken up to this point has been, to put it nicely, a bit unusual. We started by talking about consumers --  choice sets, (parameterized) constraint functions, feasibility sets, preferences, (parameterized) utility functions and then we switched to talking about the firm -- (production function, revenue, cost). 

The natural question is why didn't we finish modeling the consumer before moving on to the firm? Well, there are essentailly two reasons for this. By introducing both the consumer and firm's model together, I wanted to highlight their similarity in in terms of the choice sets, levels sets, slopes of the level sets and things of that nature.[^1] The second reason is that during the first few weeks of the course, I wanted to stay clear of anything that could be associated with the solver (hence the unusual path!), because it might be conceptual quite new to you. So we introduced the consumer model, but we didn't solve the model. We set-up the firm model, but we didn't solve it.

Today, we're going to change that by solving our first model with the help of $\dots$ a solver!

### **Motivation**

As you now understand, in Economics, we model individuals/firms/governments as maximizers. For instance, we assume that we can model the consumer **as if** they have a utility function and select the bundle of goods/services from the feasibile set that maximize this utility function. We write this model as a constrained optimization problem below.

$$\begin{align*} \underset{x \in \mathbb{R}^n_+}{\text{maximize}} \ U(x) \ \text{s.t} \quad F_p(x) = 0 \end{align*}$$

In line with our above discussion, there are two parts to this exercise. The first is concerned with writing down a good model (does utility function with the constraint functio accurately represent the real world **for our purposes**? ) The second is "solving" the model. Economics is primarily concerned with the first aspect of this problem -- is this a good model, how can I improve the mode, what is my model missing. The second part of the problem, actually determining the optimal bundle, really belongs to the realm of engineering. 

### **Tradeoff** 

Most Intermediate Microeconomic courses spend a great deal of time working through how to solve the model by hand. I believe that this is a rather poor idea for essentially 3 reasons. 

1) Most students don't have the mathematical background to get much out of the exercise of working through the solution of a constrained optimization problem. If you're not familair with Taylor Series, Border Hessian, linear algebra, it's really hard to grasp how the solution works.[^2]

2) Becuase you need to solve the model by hand, you end up writing models that, as Hal Varians points out, are unrealistic but mathematically convient. That's bad Economics.

3) Solving models by hand doesn't scale. As noted at the beginning of the class, we're interested in modeling relationships between entities. We do so by writing down the optimization problem of one entity in terms of the actions or decisions of the other entity like below. In many cases, you will not be able to solve the problem by hand. 

$$\begin{align*} \underset{\alpha}{\text{maximize}} \ f(\alpha) &= \mathbb{E}\Big[h\big(\alpha, g^*(\alpha)\big)\Big], \quad 
g^*(\alpha) = \underset{x}{\text{maximize}} \ \mathbb{E}_{\alpha}[d(x)]\end{align*}$$

A solver therefore allows us to introduce more realistic models (better Economics!), and allows us to stay focused on the Economics. We get to think about how to structure the optimization problem and we'll let the solver actually provide us with the solution.[^3]

### **Final Thoughts**

If you're starting to develop real economic intuition, the final question you have is the following -- if the above is true, why don't other courses apply the notion of the solver. Why don't they also separate the Economics from the Engineering. 

You're learning to think like an Economist, so let me turn the question back to you. Why don't other classes do this? We know that the difference in choice can either be explained as a difference in the objective function, a difference in the feasibility set, or a difference in both. 

Based on my personal experience, I believe that the difference in teaching styles is a reflection of a difference in the feasibility set and a difference in the objective function. Let me explain.

The idea that without loading anything onto our computers, we could write a few lines and solve an optimization problem is relatively new. To be specific, the tools that we're using have only been around for about 1.5 years. Given that people have limited information, other instructors of Intermediate Microeconomics might not know that these tools exists (i.e. it's not in their feasibility set). 

The second reason is that even if they know that the tools exist, there may be switching costs associated with having to restructure their course around this new method. That is, they have a different objective function than me because they've been teaching the course for multiple years. As a relatively new teacher, I have no swithching costs!

### **Personal Background**

I think when I was a sophomore in college, I wouldn't have been very keen on using a computer to help me solve an Economic model. First, I would have likely thought that learning how to write a math problem on a computer was too hard for me to understand -- the thinking being that I wasn't a computer science major and only computer science majors are capable to working with computers). The second reason for my pushback would have been my belief that it's really important to learn how to solve things by hand so that I have complete mastery over the concepts. 

With the benefit of experience, I am confident that my hypothetical previous self would have been wrong on both accounts.[^4] Writing math on the computer is rather straightforward. You introduce a function with the keyword `def` and make sure to indent and add a `return` statement. No background in computer science is necessary. Second, a key component to learning something is figuring out which aspects you actually need to learn. Intuitively we all know this, but sometimes it can be helpful to reinforce this idea. To write an email for instance, we don't need to know how the message gets encrypted or sent. We just need to know how to click, write and hit send. The same thing applies to driving a car. The amazing aspect of humanity is that we're able to build off other people's hard work to achieve our own objectives without needing to fully understand their work. The decision to use a solver to solve Economic problems is no different than the above examples. 









[^1]: The thinking being that you'll recognize that the law of diminishing marginal utility is very similar to the law of diminshing marginal product

[^2]: As an undergrad, I had no understanding of these concepts and was completely lost. 

[^3]: This is really just the division of labor at work!

[^4]: Not always easy to admit that your hypothetical previous self would have been wrong!