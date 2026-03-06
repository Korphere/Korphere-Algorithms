import copy

def bubble_sort(target) :
    targetc = copy(target)
    for i in range(len(targetc)) :
        for j in range(len(targetc)-1) :
            if targetc[j] > targetc[j+1] :
                targetc[j], targetc[j+1] = targetc[j+1], targetc[j]
    return targetc