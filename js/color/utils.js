function calcRelativeLuminance(color) {
    if(color instanceof RGB) {
        return 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;
    }
}

function getStandardLuminance(color) {
    const norm = normalizationRGB0to1(color);
    const rL = toLinear(norm.r);
    const gL = toLinear(norm.g);
    const bL = toLinear(norm.b);
    return 0.2126 * rL + 0.7152 * gL + 0.0722 * bL;
}

function calcAverageColor(color) {
    if(color instanceof RGB) {
        return calcAverageRGB(color);
    }
}

function calcAverageRGB(color) {
    if(!(color instanceof RGB)) throw new TypeError("arg `color` must be type RGB.");
    return (color.r + color.g + color.b) / 3;
}

function normalizationRGB0to1(color) {
    if(!(color instanceof RGB)) throw new TypeError("arg `color` must be type RGB.");
    const r = color.r / 255;
    const g = color.g / 255;
    const b = color.b / 255;
    return {
        r: r,
        g: g,
        b: b
    }
}

function toLinear(c) {
    return c <= 0.03928 ? c / 12.92 : Math.pow((c + 0.055) / 1.055, 2.4);
}