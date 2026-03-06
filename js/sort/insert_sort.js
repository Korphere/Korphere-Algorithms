export default function insert_sort(target) {
    for (let i = 1; i < target.length; i++) {
        let j = i;
        while (j > 0 && target[j - 1] > target[j]) {
            [target[j - 1], target[j]] = [target[j], target[j - 1]];
            j--;
        }
    }
    return target;
}