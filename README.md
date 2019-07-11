---
pagetitle: 'ABC'
---

# Implementing an ABC rejection algorithm

Some background information will go here.

## Write a function to simulate from a logistic model

The logistic model looks like:

$C(t) = \frac{k}{1 + (\frac{k}{C_0}-1)e^{-rt}} + \epsilon$

where C(t) is the population of cells at time $t$, C_0 is the population at time $t=0$, $k$ is the population carrying capacity, $r$ is the population growth rate, and $\epsilon$ is random noise drawn from $N(0,s)$.

1. Create a python file `abc_rejction.py`.

1. Write a function with the following signature that will simulate a time-course from the logistic model above:

    ```
    def logistic(t, r, k, s):
    ```

   Where $t$ is expected to be a numpy array of time points (for instance, from `np.linspace(0, 10, 100)`), $r$ is expected to be a positive real number representing the population growth rate, $k$ is a positive real number representing the carrying capacity, and $s$ is a small positive real number representing the scale of the normal noise term.
   
   This function should return a numpy array, the same length as $t$, where the logistic function above has been evaluated at teach of the time points.
 
1. Using `matplotlib`, plot a simulated time course from your logistic model:

    ```
    import matplotlib.pyplot as plt
    import numpy as np
    
    t = np.linspace(0, 10, 100)
    c = logistic(t, 1.23, 24.5, 0.345)
    
    plt.plot(t, c)
    plt.show()
    ```
   
1. Create a python file `test_abc.py`.
  
1. Write a function with the following signature that will test your logistic function:
  
     ```
     def test_logistic():
     ```
     
1. Check that, with $t=0$ and no noise, your logistic model returns $C_0$:

    ```
    t = np.array(0.0)
    assert logistic(t, 1.23, 2.34, 0.0) == C0
    ```

1. Add as many more checks as you can think of, to assure yourself that your logistic function is implemented correctly.