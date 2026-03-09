#[no_mangle]
pub fn bubble_sort(target: Vec<i32>) -> Vec<i32> {
    let mut targetc = target.clone();
    bubble_sort_mut(&mut targetc);
    targetc
}

#[no_mangle]
pub fn bubble_sort_mut(target: &mut [i32]) {
    let len = target.len();
    if len < 2 { return; }
    for i in 0..len {
        for j in 0..(len - 1 - i) {
            if target[j] > target[j + 1] {
                target.swap(j, j + 1);
            }
        }
    }
}