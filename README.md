# Hack Recursive Function Stack Overflow Bug

This repository demonstrates a common error in recursive functions written in Hack: stack overflow.  The `foo` function calculates factorials recursively. While this approach is elegant for illustrating recursion, it's highly susceptible to stack overflows for larger input values because each call adds a new stack frame.  The solution demonstrates how to address this by using iterative methods instead of recursion.

## How to Reproduce

1. Clone this repository.
2. Compile and run the `bug.hack` file using a Hack compiler (like HHVM).  Try calling `foo` with an input greater than, say, 10,000.  You will observe a stack overflow error.
3. Compare the behavior to running `bugSolution.hack`, which uses an iterative approach, avoiding stack overflow issues.

## Solution

The solution replaces the recursive implementation with an iterative one, preventing stack overflow errors. The iterative approach utilizes a loop to calculate the factorial iteratively, eliminating the recursion and its associated stack frame growth.