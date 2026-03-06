package java.sort;

public class BubbleSort {
    public static int[] bubbleSort(int[] target) {
        if (target == null) {
            throw new IllegalArgumentException("target must not be null");
        }
        boolean swapped;
        for (int i = 0; i < target.length - 1; i++) {
            swapped = false;
            for (int j = 0; j < target.length - i - 1; j++) {
                if (target[j] > target[j + 1]) {
                    int tmp = target[j];
                    target[j] = target[j + 1];
                    target[j + 1] = tmp;
                    swapped = true;
                }
            }
            if (!swapped) {
                break;
            }
        }
        return target;
    }
}