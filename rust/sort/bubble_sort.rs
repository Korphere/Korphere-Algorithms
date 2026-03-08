#[no_mangle]
pub fn bubble_sort(target: Vec<i32>) -> Vec<i32> {
    let mut targetc = target.clone();
    for i in 0..targetc.len() {
        for j in (i+1)..targetc.len() {
            if targetc[j] < targetc[j-1] {
                let tmp = targetc[j];
                targetc[j] = targetc[j-1];
                targetc[j - 1] =tmp;
            }
        }
    }
    targetc
}

#[no_mangle]
pub fn bubble_sort_mut(mut target: Vec<i32>) -> Vec<i32> {
    for i in 0..target.len() {
        for j in (i+1)..target.len() {
            if target[j] < target[j-1] {
                let tmp = target[j];
                target[j] = target[j-1];
                target[j - 1] =tmp;
            }
        }
    }
    target
}

