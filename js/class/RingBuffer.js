class RingBuffer {
    size;
    #buffer;
    start;
    end;
    length;
    constructor(size) {
        if (size <= 0) {
            throw new Error("Size must be greater than 0");
        }
        this.size = size;
        this.#buffer = new Array(size);
        this.start = 0;
        this.end = 0;
        this.length = 0;
    }

    write(value) {
        this.#buffer[this.end] = value;
        this.end = (this.end + 1) % this.size;
        if (this.length < this.size) {
            this.length++;
        } else {
            this.start = (this.start + 1) % this.size;
        }
    }

    read() {
        if (this.length === 0) {
            throw new Error("Buffer is empty");
        }
        const value = this.#buffer[this.start];
        this.start = (this.start + 1) % this.size;
        this.length--;
        return value;
    }

    get getBuffer() {
        return this.#buffer;
    }

    clear() {
        this.#buffer = new Array(this.size);
        this.start = 0;
        this.end = 0;
        this.length = 0;
    }

    toString() {
        return this.#buffer.toString();
    }
}