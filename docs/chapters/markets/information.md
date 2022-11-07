!!! tldr "Overview"

    The key takeaway is to understand that information not only shapes markets, but can determine whether they exist in the first place. 

You don't need to be an Economics major to understand that information has value. Indeed, its inherent value can be unstood by thinking about all the time and effort spent trying to a navigate a world without it. Imagine for a moment that companies knew the true productive work of potential employees. When they met you for the first time, they knew how hard you worked, how well you get along with others, and your true skill set! Now consider how this might shape your undergraduate experience.  Grades would have no meaning for the most part. Classes would be entirely focused on learning. Things would certainly look very different. 

In this lecture, we want to consider how information shapes markets. We want to consider how market outcomes change in response to information. In the first example, we illustrate how markets can fail to function as a result of a lack of information.


### **Motivating Example** 

The following is an adoption from Geroge Akerlof's Market for Lemons.[^1] We consider a market with two types of cars (Good Cars, Bad Cars). Consumers, and Sellers have some value associated with these cars which we reflect with their willingness to pay. Below we assume that the consumers value each type of car more than the sellers. Therefore in a world with "full information" we would expect that consumers purchase good cars for some value between $\$2400$ and $\$2000$, and purchase bad cars for a price between $\$1200$ and $\$1000$. 


| Cars  | Seller Value | Consumer Value | 
| :----:  |  :----: | :----:  |
| Good Car   |$2000$ |  $2400$ | 
| Bad Car   |   $1000$ |  $1200$ |

Consumers, though, may not have full information about the car they're purchasing. When they see an add online that someone is selling a car they don't know whether the car is really a good car or a bad car. We are interested in modeling a consumer's willingness to pay for a car whose value they don't know. 

From previous lectures, we can model such a willingness to pay as follows:

$$W(p, X_c, u) = u^{-1} \circ V(p, X_c, u) =  u^{-1} \Big(pu(X_c(\textrm{Good Car})) + (1-p)u(X_c(\textrm{Bad Car}) \Big)$$

In terms of probability theory, we can think of $\Omega = \{\textrm{Good Car}, \textrm{Bad Car}\}$ and then $X_c$ maps each each type of car to the price that a consumer would be willing to pay if they knew the type of the car.

To make things concrete, let's assume that $p=0.5$ and $u =  x \longmapsto \sqrt{x}$. Then we can evalute $W$ as follows:

$$\begin{align*}W(0.5, X_c, u) = \big(0.5\sqrt{2400} + 0.5\sqrt{1200} \big)^2 \end{align*} = 1748.5282$$

What jumps out to you? You notice that the consumer's willingness to pay for a car with an unknown type is less than the willingness to pay of sellers with a good quality car. Therefore, at this price, no good cars will be sold. In response to this, consumers will update their beliefs about the distribution of the available cars and only bad cars will be sold for some price in $[1200, 1000]$.

### **Solving for Equilibrium**

More formally, we can consider that equilibrium is defined with respect to the price that the consumers offer and the probability of a good car. As we have done previously, we can solve for the equilbrium as follows where prob denotes the probability of a good car, and p denotes the price that the seller is willing to pay for a car. 

$$\underset{\textrm{prob}, p}{\textrm{Solve}} \ F_{X_c, X_s, u}(\textrm{prob}, p) = 0 $$

Equilibrium is defined as the root of this function $F$ which we define as follows. 

$$F_{X_s, X_c, u}(\textrm{prob}, \textrm{price}) = \begin{bmatrix} \textrm{price} - u^{-1} \circ V(\textrm{prob}, X_c, u) \\
\textrm{prob} - S(X_s, \textrm{price})
\end{bmatrix}$$

This function is zero when the price the sellers receive is equal to the price that consumers are willing to pay. And the price that consumers are willing to pay is a function of the probability of good cars which is the probability of good cars supplied at the price. 
