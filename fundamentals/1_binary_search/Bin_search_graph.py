import matplotlib.pyplot as plt

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

def generate_distro_plot(scope):
    sizes = []
    avg_ops = []
    num_max_list = []
    
    for k in range(1, scope + 1):
        test_list = list(range(k))
        counts = []
        for i in range(k):
            _, count = bin_search(test_list, i)
            counts.append(count)
        
        max_ops = max(counts)
        num_max = counts.count(max_ops)
        avg = sum(counts) / k
        
        sizes.append(k)
        avg_ops.append(avg)
        num_max_list.append(num_max)
        
    # Plotting
    fig, ax1 = plt.subplots(figsize=(10, 6))

    # Left Axis: Average Ops
    ax1.set_xlabel('Array Size (Scope)')
    ax1.set_ylabel('Average Operations', color='tab:blue')
    ax1.plot(sizes, avg_ops, color='tab:blue', label='Avg Ops')
    ax1.tick_params(axis='y', labelcolor='tab:blue')

    # Right Axis: Incidence of Max
    ax2 = ax1.twinx()
    ax2.set_ylabel('Incidence of Max (Stepwise)', color='tab:red')
    ax2.step(sizes, num_max_list, where='post', color='tab:red', label='Max Occurrences')
    ax2.tick_params(axis='y', labelcolor='tab:red')

    plt.title(f'Binary Search Distribution (Scope: {scope})')
    fig.tight_layout()
    plt.show()

# Run for scope 500
generate_distro_plot(500)
