export default function quick_sort(target: number[]): number[] {
    if (target.length <= 1) return target;
    const pivot = target[Math.floor(target.length / 2)];
    const left = target.filter(x => x < pivot);
    const middle = target.filter(x => x === pivot);
    const right = target.filter(x => x > pivot);
    return [...quick_sort(left), ...middle, ...quick_sort(right)];
}

export function quick_sort_mut(target: number[], left = 0, right = target.length - 1): void {
    if (left >= right) return;
    const pIndex = partition(target, left, right);
    quick_sort_mut(target, left, pIndex - 1);
    quick_sort_mut(target, pIndex + 1, right);
}

function partition(arr: number[], left: number, right: number): number {
    const pivot = arr[right];
    let i = left;

    for (let j = left; j < right; j++) {
        if (arr[j] < pivot) {
        [arr[i], arr[j]] = [arr[j], arr[i]];
        i++;
        }
    }
    [arr[i], arr[right]] = [arr[right], arr[i]];
    return i;
}