## Intro to Algorithmic Design

What is an algorithm? An algorithm is a procedure to accomplish a specific task. An algorithm is the idea behind any reasonable computer program.

**To be interesting, an algorithm must solve a general, well-specified problem.** An algorithmic problem is specified by describing the complete set of instances it must work on and of its output after running on one of these instances. This distinction, between a problem and an instance of a problem, is fundamental. For example, the algorithmic general problem known as sorting is defined as follows:

```text
Problem: Sorting
Input: A sequence of n keys a1,...,an.
Output: The permutation (reordering) of the input sequence such that a1 ≤ a2 ≤ ...≤ an−1 ≤ an.
```

An instance of sorting might be an array of names, like {Mike, Bob, Sally, Jill, Jan}, or a list of numbers like {154, 245, 568, 324, 654, 324}. Determining that you are dealing with a general problem is your first step towards solving it.


An algorithm is a procedure that takes any of the possible input instances and transforms it to the desired output. There are many different algorithms for solving the problem of sorting. For example, insertion sort is a method for sorting that starts with a single element (thus forming a trivially sorted list) and then incrementally inserts the remaining elements so that the list stays sorted. This algorithm, implemented in C, is described below:


```c++
insertion_sort(item s[], int n)
{
  int i,j; /* counters */

  for (i=1; i<n; i++) {
    j=i;
    while ((j>0) && (s[j] < s[j-1])) {
      swap(&s[j],&s[j-1]);
      j = j-1;
    }
  }
}
```
