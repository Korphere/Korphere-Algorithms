void bubble_sort(int* target) {
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4 - i - 1; j++) {
            if (target[j] > target[j + 1]) {
                int temp = target[j];
                target[j] = target[j + 1];
                target[j + 1] = temp;
            }
        }
    }
}