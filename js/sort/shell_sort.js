export default function shell_sort(target) {
    let gap = Math.floor(target.length / 2);
    while (gap > 0) {
        for (let i = gap; i < target.length; i++) {
            let tmp = target[i];
            let j = i;
            while (j >= gap && target[j - gap] > tmp) {
                target[j] = target[j - gap];
                j -= gap;
            }
            target[j] = tmp;
        }
        gap = Math.floor(gap / 2);
    }
    return target;
}