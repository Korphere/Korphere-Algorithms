export class Queue extends Object {
    #length;
    #queue;
    constructor(queue = []) {
        super();
        if (!Array.isArray(queue)) {
            throw new Error("Input must be an array");
        }
        this.#queue = queue;
        this.#length = queue.length;
    }

    enqueue(value) {
        this.#queue.push(value);
        this.#length++;
    }

    dequeue() {
        if (this.#length === 0) {
            throw new Error("Queue is empty");
        }
        this.#length--;
        return this.#queue.shift();
    }

    get getQueue() {
        return this.#queue;
    }

    get length() {
        return this.#length;
    }

    clear() {
        this.#queue = [];
        this.#length = 0;
    }

    toString() {
        return this.#queue.toString();
    }
}