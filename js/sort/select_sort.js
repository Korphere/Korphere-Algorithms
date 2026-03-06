export default function select_sort(target) {
    for (let i = 0; i < target.length - 1; i++) {
        let min = i;
        for (let j = i + 1; j < target.length; j++) {
            if (target[j] < target[min]) min = j;
        }
        [target[i], target[min]] = [target[min], target[i]];
    }
    return target;
}