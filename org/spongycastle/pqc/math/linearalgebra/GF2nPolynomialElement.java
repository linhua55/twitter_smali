package org.spongycastle.pqc.math.linearalgebra;

/* compiled from: Twttr */
public class GF2nPolynomialElement extends GF2nElement {
    private static final int[] c;
    private GF2Polynomial d;

    static {
        c = new int[]{1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, Integer.MIN_VALUE, 0};
    }

    public GF2nPolynomialElement(GF2nPolynomialElement gF2nPolynomialElement) {
        this.a = gF2nPolynomialElement.a;
        this.b = gF2nPolynomialElement.b;
        this.d = new GF2Polynomial(gF2nPolynomialElement.d);
    }

    public Object clone() {
        return new GF2nPolynomialElement(this);
    }

    public boolean a() {
        return this.d.f();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nPolynomialElement)) {
            return false;
        }
        GF2nPolynomialElement gF2nPolynomialElement = (GF2nPolynomialElement) obj;
        if (this.a == gF2nPolynomialElement.a || this.a.b().equals(gF2nPolynomialElement.a.b())) {
            return this.d.equals(gF2nPolynomialElement.d);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() + this.d.hashCode();
    }

    public String toString() {
        return this.d.a(16);
    }
}
