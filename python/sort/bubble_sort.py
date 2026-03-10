import copy

def bubble_sort(target) :
    targetc = copy(target)
    n = len(targetc)
    swapped
    while True:
        swapped = False
        for i in range(n - 1) :
            if targetc[i - 1] > targetc[i] :
                targetc[i], targetc[i - 1] = targetc[i - 1], targetc[i]
                swapped = True
        n -= 1
        if swapped == False :
            break
    return targetc