package org.spongycastle.math.field;

import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
class GF2Polynomial implements Polynomial {
    protected final int[] a;

    GF2Polynomial(int[] iArr) {
        this.a = Arrays.b(iArr);
    }

    public int a() {
        return this.a[this.a.length - 1];
    }

    public int[] b() {
        return Arrays.b(this.a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GF2Polynomial)) {
            return false;
        }
        return Arrays.a(this.a, ((GF2Polynomial) obj).a);
    }

    public int hashCode() {
        return Arrays.a(this.a);
    }
}
