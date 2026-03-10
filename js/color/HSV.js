class HSV {
    h;
    s;
    v;
    constructor(h, s, v) {
        if(Number.isInteger(h) && 0 <= h && h <= 360) throw new TypeError("Arg `h` must be integer and in range 0-360")
        if(Number.isInteger(s) && 0 <= s && s <= 100) throw new TypeError("Arg `s` must be integer and in range 0-100")
        if(Number.isInteger(h) && 0 <= v && v <= 100) throw new TypeError("Arg `v` must be integer and in range 0-100")
        this.h = h;
        this.s = s;
        this.v = v;
    }
}