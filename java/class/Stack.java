import java.util.Arrays;

public class Stack {
    private int size;
    private int[] stack;

    public Stack(int stack) {
        this.stack = new int[stack];
        this.size = 0;
    }

    public void push(int element) {
        if (size == stack.length) {
            stack = Arrays.copyOf(stack, stack.length * 2);
        }
        stack[size] = element;
        size++;
    }

    public int pop() {
        if (size == 0) {
            throw new IllegalStateException("stack is empty");
        }
        int element = stack[size - 1];
        size--; 
        return element;
    }

    public int getSize() {
        return size;
    }

    public int[] getStack() {
        return stack;
    }

    @Override
    public String toString() {
        return Arrays.toString(Arrays.copyOfRange(stack, 0, size));
    }
}