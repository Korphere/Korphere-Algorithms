class Stack {
    length;
    #stack;
    constructor(stack = []) {
        if (!Array.isArray(stack)) {
            throw new Error("Input must be an array");
        }
        this.#stack = stack;
        this.length = stack.length;
    }

    push(value) {
        this.#stack.push(value);
        this.length++;
    }

    pop() {
        if (this.length === 0) {
            throw new Error("Stack is empty");
        }
        this.length--;
        return this.#stack.pop();
    }

    get getStack() {
        return this.#stack;
    }

    clear() {
        this.#stack = [];
        this.length = 0;
    }

    toString() {
        return this.#stack.toString();
    }
}