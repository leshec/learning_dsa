 Python online.
# Write Python 3 code in this online editor and run it.
print("Try programiz.pro")
# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.
print("Exploring Binary Search Distribution for a Single Array")

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
        # print("m: ", m)
        if arr[m] == target:
            return m, count
        elif arr[m] < target:
            l = m + 1
        else:
            r = m - 1
    return None, count

def check_single_size(size):
    test_list = list(range(size))
    
    # We need to find the max_ops first so the tag() function works correctly
    max_ops = 0
    temp_results = []
    for i in range(size):
        _, count = bin_search(test_list, i)
        temp_results.append(count)
        if count > max_ops:
            max_ops = count
            
    total_ops = sum(temp_results)
    num_max = 0

    print(f"\n--- Detailed Distribution for Size {size} ---")
    
    for i in range(size):
        answer, count = bin_search(test_list, i)
        if count == max_ops:
            num_max += 1
        
        # This is the line you wanted to review, now active:
        print(f"Index: {answer:2} | Ops: {count} | Tag: {tag(count, max_ops)}")

    print("-" * 40)
    print(f"Array Size:  {size}")
    print(f"Average Ops: {total_ops/size:.2f}")
    print(f"Max Ops:     {max_ops}")
    print(f"Total Maxes: {num_max}")

# You can change this number to any size you want to explore
check_single_size(22)
