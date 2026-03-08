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
    let targetc = [...target];
    for(let i = 0; i < targetc.length; i++){
        for(let j = targetc.length - 1; j > i; j-- ){
            if(targetc[j] < targetc[j-1]){
                let tmp = targetc[j];
                targetc[j] = targetc[j-1];
                targetc[j - 1] =tmp;
            }
        }
    }
    return targetc;
}

export function bubble_sort_mut(target: number[]): number[] {
    for(let i = 0; i < target.length; i++){
        for(let j = target.length - 1; j > i; j-- ){
            if(target[j] < target[j-1]){
                let tmp = target[j];
                target[j] = target[j-1];
                target[j - 1] =tmp;
            }
        }
    }
    return target;
}