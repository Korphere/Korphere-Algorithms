export class Stack extends Object {
    #length: number;
    #stack: any[];
    constructor(stack = []) {
        super();
        if (!Array.isArray(stack)) {
            throw new Error("Input must be an array");
        }
        this.#stack = stack;
        this.#length = stack.length;
    }

    push(value: any) {
        this.#stack.push(value);
        this.#length++;
    }

    pop() {
        if (this.#length === 0) {
            throw new Error("Stack is empty");
        }
        this.#length--;
        return this.#stack.pop();
    }

    get getStack() {
        return this.#stack;
    }

    get length() {
        return this.#length;
    }
    
    clear() {
        this.#stack = [];
        this.#length = 0;
    }

    override toString() {
        return this.#stack.toString();
    }
}