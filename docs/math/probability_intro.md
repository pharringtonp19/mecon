!!! tldr "Overview"

    We use probability theory to model our understanding/level of information about the world. 




### **Random Experiment**
- An experiment whose outcome is random! -- [Dr. Krishna Jagannathan](https://youtu.be/-nnJQ0kJgIY?list=PLbMVogVj5nJQqGHrpAloTec_lOKsG-foc&t=102)

### **Sample Space & Events **
- **Sample Space**: The set of all possible outcomes of the random experiment, which we'll denote as $\Omega$:
- **Outcome**: For each run or trial of the experiment, one outcome, $\omega$, occurs.

$$\begin{align*} \omega \in \Omega \end{align*}$$

- **Event**: We will often be interested in whether a subset of the sample space has occurred. Such a subset is referred to as an event. 
- **$\sigma$-algebra**: The set of Events must form a $\sigma$-algebra, $\mathcal{F}$, whose conditions are highlighted below:

    - The entire sample space, $\Omega$, is in $\mathcal{F}$
    - If a set is in $\mathcal{F}$, then its compliment is also in $\mathcal{F}$
    - If we have a "countable" collection of sets, where each set is in $\mathcal{F}$, then the union of these sets is also in $\mathcal{F}$

??? info "Math"

    $$\begin{align*} 
    \Omega \in \mathcal{F} \\
    \mathcal{A}_1, \mathcal{A}_2, \dots, \mathcal{A}_n \in \mathcal{F} \implies  \cup _i \mathcal{A}   \in \mathcal{F} \\
    \mathcal{A} \in \mathcal{F} \implies  \mathcal{A}^c \in \mathcal{F} 
    \end{align*}$$

??? question "What is the simplest $\sigma$-algebra?"

    $$\{\emptyset, \Omega \}$$

??? question "What is the largest $\sigma$-algebra?"

    $$2^{\Omega}$$




??? Example
    
    We can consider tossing a coin to be a random experiment. How would you define the sample space? Let's say that we toss $n$ coins at the same time. What would be the sample space then?

### **Probability Measure**

A probability measure is a function that maps events into $[0,1]$. That is, it tells us the probability of a given event. 

??? info "Math"

    $$\begin{align*}\mu &: \mathcal{F} \to [0, 1] \\
    \mu (\Omega) &= 1 \\ 
    \mu (\emptyset) &= 0 \\ 
    \mu \big( \cup _i A_i \big) &= \sum _i \mu(A_i) \quad \text{for} \ A_i \in \mathcal{F}\end{align*}$$


### **Random Variable**

A random variable is a function whose domain is the sample space. 

??? info "Math"

    A random variable maps into a measurable space (i.e. a set with a $\sigma$-algebra) such that 

    $$\begin{align*}X : \big(\Omega, \mathcal{F}) \to (\mathbb{R}, \mathbb{B}(\mathbb{R})) \\ 
    X^{-1}(B) \in \mathcal{F} \ \forall B \in  \mathbb{B}(\mathbb{R})  \end{align*}$$



<!-- 
### **Introduction**
Making decisions involves assessing tradeoffs -- comparing the benefits to costs. Many of these tradeoffs might not occur in the immediate present, and might not occur with much certainty 

### **Probability Space**

??? example inline end  
    Like very few people who I interact with on a daily basis, I find the NBA offseason exilarating. As I write this sentence in early July, Kevin Durant's future is still up in the air. Will he stay in Brooklyn? Will he stay with Kyrie? Could he possibly end up with the team up North? I find the inherent uncertainty of this event exciting. It gives plausibility to the thought of seeing Kevin Durant run pick-in-rolls with Ja Morant, or stretching the court with another long wing in Brandom Ingram. 

We'll start by introducing a probility space. We want to capture a lack of information, a lack of knowledge about some aspect of the world. 

$$\begin{aligned}\big( \Omega, \mathcal{F}, \mathbb{P}) \end{aligned}$$












``The big problem in probability theory and particularly stochastic processes is not so much how do you solve well-posed problems. Anybody can do that. Or anybody who has a little bit of background can do it. The hard problem is finding the right models for a real-world problem.''

### **Approach**

When people look at how difficult a topic is to learn, they might start by considering the number of elements in the topic. I might be wrong about this, but I believe this rough heuristic shapes how many people teach classes on statistics and probability. If you can reduce the number of ideas that a student has to consider the easier it should be to learn, i.e. the less overwhelmed they are. 

I buy the point that it's important to introduce material in a way so as to decrease the likelihood of overwhelming students (that's why we're starting so early in the semester with probability - we're going to introduce it piece by piece), but I would push back on the idea that having fewer elements to learn makes the topic easier to understand. 

Learning a new topic can be difficult for the following three reasons. (1) It can be hard to understand why you should care about the topic (2) It can be hard to understand which aspects of the topic are important and which are just details and (3) It can be hard to understand how the components of the topic fit together. 

With this understanding in mind, I believe introducing additional components can be helpful it if enables students to better compose ideas. That is, if the addition details allows students to better understand how ideas relate to each others. I think this is the key to understanding probability theory. Understanding the fundamentals will make it easier/ simpler to see how things relate to each other. If you never understand the fundamentals you'll simply have a collection of ideas in your head, which will be harder to keep track of and harder to work with in practice.

### **Probability Space**
We'll start by introducing a probility space. We want to capture a lack of information, a lack of knowledge about some aspect of the world. 

$$\begin{aligned}\big( \Omega, \mathcal{F}, \mathbb{P}) \end{aligned}$$

  -->