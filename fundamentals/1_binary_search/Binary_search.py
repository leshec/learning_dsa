# Welcome to your Python project!
list = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

def bin(list, target):
    l = 0
    r = len(list) - 1
    while l <= r:
        m = l + (r-l) //2
        if list[m] == target:
            return m
        elif list[m] < target:
            l = m+1
        else:
            r = m-1
    return None

answer = bin(list, 12)
print(answer)
