# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.

def tag(count, max_val):
    if count == max_val:
        return "max"
    elif count == 1:
        return "mid"
    elif count == 2:
        return "min"
    else:
        return " "

def bin_search(arr, target):
    count = 0
    l = 0
    r = len(arr) - 1
    while l <= r:
        count += 1
        m = l + (r - l) // 2
        if arr[m] == target:
            return m, count
        elif arr[m] < target:
            l = m + 1
        else:
            r = m - 1
    return None, count

def distro(scope):
    # Iterate through different array sizes from 1 up to 'scope'
    for k in range(1, scope + 1):
        test_list = list(range(k))
        max_ops = 0
        total_ops = 0
        num_max = 0
        
        # First pass: Find the total and the maximum operations for this array size
        for i in range(k):
            _, count = bin_search(test_list, i)
            total_ops += count
            if count > max_ops:
                max_ops = count
        
        # Second pass: Count how many elements hit that maximum
        for i in range(k):
            _, count = bin_search(test_list, i)
            if count == max_ops:
                num_max += 1
        
        avg = total_ops / k
        print(f"Array Size: {k:3} | Avg Ops: {avg:.2f} | Max Ops: {max_ops} | Occurrences of Max: {num_max}")

# Run the exploration
distro(20)
