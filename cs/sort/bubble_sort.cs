namespace korphere.sort {
    public static class BubbleSort {
        public static int[] bubble_sort(int[] target) {
            int[] targetc = new int[target.Length];
            Array.Copy(target, 0, targetc, 0, target.Length);
            for (int i = 0; i < targetc.Length-1; i++) {
                for (int j = 0; j < targetc.Length - i - 1; j++) {
                    if (targetc[j] > targetc[j + 1]) {
                        int temp = targetc[j];
                        targetc[j] = targetc[j + 1];
                        targetc[j + 1] = temp;
                    }
                }
            }
            return targetc;
        }

        public static int[] bubble_sort_mut(int[] target) {
            for (int i = 0; i < target.Length-1; i++) {
                for (int j = 0; j < target.Length - i - 1; j++) {
                    if (target[j] > target[j + 1]) {
                        int temp = target[j];
                        target[j] = target[j + 1];
                        target[j + 1] = temp;
                    }
                }
            }
            return target;
        }
    }
}