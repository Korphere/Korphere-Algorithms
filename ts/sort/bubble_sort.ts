/*
 * Bubble Sort
 * 
 * Time Complexity: O(n^2)
 * Space Complexity: O(1)
 * 
 * @author Korphere
 * 
 * @see https://doc.korphere.com/algorythms/sort/bubble_sort
 * 
 * @param {Array} target - The array to be sorted
 * @returns {Array} The sorted array
 * 
 * @example
 * bubble_sort([5, 3, 8, 4, 2]); //[2, 3, 4, 5, 8]
 */

export default function bubble_sort(target: number[]): number[] {
    if (!Array.isArray(target)) {
        throw new TypeError("target must be array.")
    }
    let targetc = [...target];
    let n = targetc.length;
    let swapped;
    do {
        swapped = false;
        for (let i = 1; i < n; i++) {
            if (targetc[i - 1] > targetc[i]) {
                [targetc[i - 1], targetc[i]] = [targetc[i], targetc[i - 1]];
                swapped = true;
            }
        }
        n--;
    } while (swapped);
    return targetc;
}

export function bubble_sort_mut(target: number[]): number[] {
    if (!Array.isArray(target)) {
        throw new TypeError("target must be array.")
    }
    let n = target.length;
    let swapped;
    do {
        swapped = false;
        for (let i = 1; i < n; i++) {
            if (target[i - 1] > target[i]) {
                [target[i - 1], target[i]] = [target[i], target[i - 1]];
                swapped = true;
            }
        }
        n--;
    } while (swapped);
    return target;
}