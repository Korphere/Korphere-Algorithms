export default function insert_sort(target: number[]): number[] {
    let targetc = [...target];
    for (let i = 1; i < targetc.length; i++) {
        let j = i;
        while (j > 0 && targetc[j - 1] > targetc[j]) {
            [targetc[j - 1], targetc[j]] = [targetc[j], targetc[j - 1]];
            j--;
        }
    }
    return targetc;
}

export function insert_sort_mut(target: number[]): number[] {
    for (let i = 1; i < target.length; i++) {
        let j = i;
        while (j > 0 && target[j - 1] > target[j]) {
            [target[j - 1], target[j]] = [target[j], target[j - 1]];
            j--;
        }
    }
    return target;
}