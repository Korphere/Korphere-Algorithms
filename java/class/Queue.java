public class Queue {
    private int length;
    private int[] queue;
    public Queue(int[] queue) {
        if (queue == null) {
            throw new IllegalArgumentException("queue must not be null");
        }
        this.queue = queue;
        this.length = queue.length;
    }

    public void enqueue(int element) {
        int[] newQueue = new int[length + 1];
        System.arraycopy(queue, 0, newQueue, 0, length);
        newQueue[length] = element;
        queue = newQueue;
        length++;
    }

    public int dequeue() {
        if (length == 0) {
            throw new IllegalStateException("queue is empty");
        }
        int element = queue[0];
        int[] newQueue = new int[length - 1];
        System.arraycopy(queue, 1, newQueue, 0, length - 1);
        queue = newQueue;
        length--;
        return element;
    }

    public int[] getQueue() {
        return queue;
    }

    public int getLength() {
        return length;
    }

    public void clear() {
        queue = new int[0];
        length = 0;
    }

    public String toString() {
        return this.getQueue().toString();
    }
}