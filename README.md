# Recursive_Tetration
This is the code I used in the paper "The Limits of a Family; of Asymptotic Solutions to The Tetration Equation"
The paper is available on arXiv at the link https://arxiv.org/abs/2104.01990

This repository consists of 5 functions:

beta_function(z,l,n)

Which is the asymptotic solution to tetration, written in a simple recursive manner. This is not the most efficient code, as it will over flow for large numbers. But, that's precisely its purpose. The variable z is the main argument. The value l is the multiplier. The value n is the depth of the iteration.

tau_K(z,l,n,k)

This function is the error term between beta_function and the actual tetration function associated to the value l (the multiplier). The value n is the inherited depth of iteration of beta_function; the value k is the new depth of iteration we use to construct tau_K.  As an important disclaimer, keeping n and k closer together, keeps the iteration stable. If n is 100 and k is 5; we'll see a lot more anomalies and overflows. Where as n is 10 and k is 6 will produce the same results (where it converges), but will produce more correct results where there were anomalies and overflows.

beta2(z,n)

This function is the pasted together version of beta_function. This is when we combine all our multipliers into an implicit function. The variable z is the main argument, and n is the depth of iteration.

tau2(z,n,k)

This function is the error term between beta2 and the final tetration function. The value n is the inherited depth of iteration from beta2; and k is the new depth of iteration.

TET(z,n,k)

This function is an optimized version of beta2(z,n) + tau2(z,n,k); where it works more exactly as iterating the exponential.
