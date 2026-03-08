export default function shell_sort(target: number[]): number[] {
    let targetc = [...target];
    let gap = Math.floor(targetc.length / 2);
    while (gap > 0) {
        for (let i = gap; i < targetc.length; i++) {
            let tmp = targetc[i];
            let j = i;
            while (j >= gap && targetc[j - gap] > tmp) {
                targetc[j] = targetc[j - gap];
                j -= gap;
            }
            targetc[j] = tmp;
        }
        gap = Math.floor(gap / 2);
    }
    return targetc;
}

export function shell_sort_mut(target: number[]): number[] {
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