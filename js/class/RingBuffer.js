export class RingBuffer extends Object {
    #size;
    #buffer;
    #start;
    #end;
    #length;
    constructor(size) {
        super();
        if (size <= 0) {
            throw new Error("Size must be greater than 0");
        }
        this.#size = size;
        this.#buffer = new Array(size);
        this.#start = 0;
        this.#end = 0;
        this.#length = 0;
    }

    write(value) {
        this.#buffer[this.#end] = value;
        this.#end = (this.#end + 1) % this.#size;
        if (this.#length < this.#size) {
            this.#length++;
        } else {
            this.#start = (this.#start + 1) % this.#size;
        }
    }

    read() {
        if (this.#length === 0) {
            throw new Error("Buffer is empty");
        }
        const value = this.#buffer[this.#start];
        this.#start = (this.#start + 1) % this.#size;
        this.#length--;
        return value;
    }

    get getBuffer() {
        return this.#buffer;
    }

    get length() {
        return this.#length;
    }

    get start() {
        return this.#start;
    }

    get end() {
        return this.#end;
    }

    get size() {
        return this.#size;
    }
    
    clear() {
        this.#buffer = new Array(this.#size);
        this.#start = 0;
        this.#end = 0;
        this.#length = 0;
    }

    toString() {
        return this.#buffer.toString();
    }
}