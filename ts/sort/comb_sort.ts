/*
 * Comb Sort
 * 
 * Time Complexity: O(n log n)
 * Space Complexity: O(1)
 * 
 * @author Korphere
 * 
 * @see https://doc.korphere.com/algorythms/sort/comb_sort
 * 
 * @param {Array} target - The array to be sorted
 * @returns {Array} The sorted array
 * 
 * @example
 * comb_sort([5, 3, 8, 4, 2]); //[2, 3, 4, 5, 8]
 */

export default function comb_sort(target: number[]): number[] {
    const shrink_factor = 1.3;
    let gap = target.length;
    let sorted = false;
    while (gap > 1 || sorted) {
        sorted = false;
        gap = Math.floor(gap / shrink_factor);
        gap = gap < 1 ? 1 : gap;
        let i = 0;
        while (target.length > i + gap) {
            if (target[i] > target[i + gap]) {
                [target[i], target[i + gap]] = [target[i + gap], target[i]];
                sorted = true;
            }
            i++;
        }
    }
    return target;
}