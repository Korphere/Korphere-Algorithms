export default function select_sort(target) {
    let targetc = [...target];
    for (let i = 0; i < targetc.length - 1; i++) {
        let min = i;
        for (let j = i + 1; j < targetc.length; j++) {
            if (targetc[j] < targetc[min]) min = j;
        }
        [targetc[i], targetc[min]] = [targetc[min], targetc[i]];
    }
    return targetc;
}

export function select_sort_mut(target) {
    for (let i = 0; i < target.length - 1; i++) {
        let min = i;
        for (let j = i + 1; j < target.length; j++) {
            if (target[j] < target[min]) min = j;
        }
        [target[i], target[min]] = [target[min], target[i]];
    }
    return target;
}