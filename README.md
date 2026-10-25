# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Caleb Bowles
Ben Gibson

## Summary

## Lab Questions

### In plain English describe the function and use of a multiplexer.
A multiplexor allows you to choose an input signal to output. In a 4:1 multiplexor, you are able to decide 1 of 4 options using a 2 bit wide selector. If you wanted to choose option 1, you could input 00 in your selector and the output would be 1. 

### In plain English describe the function and use of a demultiplexer.
A demultiplexor is the opposite of a multiplexor. A demultiplexor takes 1 input option and using your selector, sends that option to the different outputs availabe. In a 1:4 demultiplexor, if you had an input signal of 3, you could send that signal to an output x by inputing the corresponding x location using your selector. 

### What other uses might these circuits have? (Think Shannon’s)
Using shannons theroem, you can break large functions down into simple functions controlled by 1 variable. For example, given the equation: F=x'yz+x'y'z+xyz+xyz', you can break the funciton down into F=x'(yz+y'z')+x(yz+yz'), meaning a 4:1 mux can easily be used with x' and x as selector bits.
