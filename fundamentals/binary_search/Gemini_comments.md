What you’re seeing is the "logarithmic staircase." The relationship between the array size ($n$) and the operations required is fundamentally tied to powers of 2 ($2^k$).

### Summarizing Your Findings

1.  **The "Pythagorean" Staircase:** The "height" of the max operations only increases when the array size doubles. If you visualize the search as a tree, you are only adding a new "level" once the previous level is completely full.
2.  **The Density of Maxes:** In a "perfectly" sized array (where $n = 2^k - 1$, like 7, 15, or 31), exactly **half** (plus one) of the elements will require the maximum number of operations. These are the "leaves" of the binary tree.
3.  **The Midpoint Magnet:** The average operations ($O(\log n)$) stay remarkably low because, while the array size grows linearly, the "depth" of the search only grows by 1 each time the size doubles.

---

### Other "Hidden" Truths About Binary Search

### 1. The "Almost-Successful" Search
If you search for a number that **isn't** in the list, binary search actually tells you exactly where it *should* have been. When the loop finishes and `l > r`, the variable `l` points to the "insertion point." This is why binary search is often used to keep lists sorted as you add new items.

### 2. The Famous "Overflow" Bug
For nearly 20 years, the standard implementation of binary search in many libraries (including Java’s) had a bug. Developers wrote:
$$m = \frac{l + r}{2}$$
If $l$ and $r$ are very large, their sum can exceed the maximum value a 32-bit integer can hold, causing it to "wrap around" to a negative number. The fix (which you used in your code!) is:
$$m = l + \frac{r - l}{2}$$

### 3. Binary Search vs. Interpolation Search
Binary search always jumps to the **exact middle** (the 50% mark). But if you are looking for "Zebra" in a dictionary, you don't start at "M"—you jump to the end. **Interpolation Search** uses a formula to guess where the item is based on its value.
* **Binary Search:** $O(\log n)$
* **Interpolation Search:** $O(\log(\log n))$ (on uniformly distributed data, this is incredibly fast!)



### 4. It’s Not Just for Arrays
You can binary search on **functions**. If you have a mathematical function that is "monotonic" (always increasing or always decreasing), you can use binary search to find the "root" (where the function equals zero) by repeatedly halving the range of possible $x$ values. This is known as the **Bisection Method**.

### 5. Fractional Cascading
In advanced data structures, if you are searching for the same value across multiple different lists, you don't have to binary search each one from scratch. You can "link" the midpoints together so that once you find the range in the first list, you instantly know the starting point in the second. This is called **Fractional Cascading**.



Binary search is essentially the "Divide and Conquer" strategy in its purest form. It turns a massive haystack into a tiny needle in just a few steps. For an array the size of the entire human population (8 billion), binary search would find your name in only **33 steps**.
