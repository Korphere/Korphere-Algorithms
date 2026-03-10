class RGB {
    r;
    g;
    b;
    constructor(r, g, b) {
        if(!Number.isInteger(r)) throw new TypeError("Arg `r` must be integer.")
        if(!Number.isInteger(g)) throw new TypeError("Arg `g` must be integer.")
        if(!Number.isInteger(b)) throw new TypeError("Arg `b` must be integer.")
        this.r = r;
        this.g = g;
        this.b = b;
    }
}