export default function quick_sort(target) {
    let targetc = [...target];
    quick_sort_mut(targetc);
    return targetc;
}

export function quick_sort_mut(target) {
    if (!Array.isArray(target)) {
        return new TypeError("target must be array.")
    }
    const piv = target[Math.floor(target.length / 2)]
    const left = target.filter(x => x < piv);
    const middle = target.filter(x => x == piv);
    const right = target.filter(x => x > piv);

    return quick_sort(left) + middle + quick_sort(right)
}