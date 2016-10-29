package org.spongycastle.math.ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class Curve25519FieldElement extends ECFieldElement {
    public static final BigInteger a;
    private static final int[] h;
    protected int[] b;

    static {
        a = Curve25519.i;
        h = new int[]{1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848};
    }

    public Curve25519FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for Curve25519FieldElement");
        }
        this.b = Curve25519Field.a(bigInteger);
    }

    public Curve25519FieldElement() {
        this.b = Nat256.a();
    }

    protected Curve25519FieldElement(int[] iArr) {
        this.b = iArr;
    }

    public boolean j() {
        return Nat256.b(this.b);
    }

    public boolean i() {
        return Nat256.a(this.b);
    }

    public boolean k() {
        return Nat256.a(this.b, 0) == 1;
    }

    public BigInteger a() {
        return Nat256.c(this.b);
    }

    public int b() {
        return a.bitLength();
    }

    public ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        Curve25519Field.a(this.b, ((Curve25519FieldElement) eCFieldElement).b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat256.a();
        Curve25519Field.a(this.b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        Curve25519Field.d(this.b, ((Curve25519FieldElement) eCFieldElement).b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        Curve25519Field.b(this.b, ((Curve25519FieldElement) eCFieldElement).b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        Mod.a(Curve25519Field.a, ((Curve25519FieldElement) eCFieldElement).b, a);
        Curve25519Field.b(a, this.b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat256.a();
        Curve25519Field.b(this.b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat256.a();
        Curve25519Field.d(this.b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat256.a();
        Mod.a(Curve25519Field.a, this.b, a);
        return new Curve25519FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat256.b(iArr) || Nat256.a(iArr)) {
            return this;
        }
        int[] a = Nat256.a();
        Curve25519Field.d(iArr, a);
        Curve25519Field.b(a, iArr, a);
        Curve25519Field.d(a, a);
        Curve25519Field.b(a, iArr, a);
        int[] a2 = Nat256.a();
        Curve25519Field.d(a, a2);
        Curve25519Field.b(a2, iArr, a2);
        int[] a3 = Nat256.a();
        Curve25519Field.a(a2, 3, a3);
        Curve25519Field.b(a3, a, a3);
        Curve25519Field.a(a3, 4, a);
        Curve25519Field.b(a, a2, a);
        Curve25519Field.a(a, 4, a3);
        Curve25519Field.b(a3, a2, a3);
        Curve25519Field.a(a3, 15, a2);
        Curve25519Field.b(a2, a3, a2);
        Curve25519Field.a(a2, 30, a3);
        Curve25519Field.b(a3, a2, a3);
        Curve25519Field.a(a3, 60, a2);
        Curve25519Field.b(a2, a3, a2);
        Curve25519Field.a(a2, 11, a3);
        Curve25519Field.b(a3, a, a3);
        Curve25519Field.a(a3, 120, a);
        Curve25519Field.b(a, a2, a);
        Curve25519Field.d(a, a);
        Curve25519Field.d(a, a2);
        if (Nat256.b(iArr, a2)) {
            this(a);
            return this;
        }
        Curve25519Field.b(a, h, a);
        Curve25519Field.d(a, a2);
        if (!Nat256.b(iArr, a2)) {
            return null;
        }
        this(a);
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Curve25519FieldElement)) {
            return false;
        }
        return Nat256.b(this.b, ((Curve25519FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 8);
    }
}
