export default function heap_sort(target: number[]) {
    let targetc = target;
    heap_sort_mut(targetc);
    return targetc;
}

export function heap_sort_mut(target: number[]) {
    const n = target.length;

    for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
        heapify(target, n, i);
    }

    for (let i = n - 1; i > 0; i--) {
        [target[0], target[i]] = [target[i], target[0]];
        heapify(target, i, 0);
    }
    
    return target;
}

function heapify(target: number[], n: number, i: number) {
    let largest = i;
    const left = 2 * i + 1;
    const right = 2 * i + 2;

    if (left < n && target[i] < target[left]) {
        largest = left;
    }
    if (right < n && target[largest] < target[right]) {
        largest = right;
    }

    if (largest != i) {
        [target[i], target[largest]] = [target[largest], target[i]];
        heapify(target, n, largest);
    }
}