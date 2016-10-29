package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat224;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP224K1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    private static final int[] h;
    protected int[] b;

    static {
        a = SecP224K1Curve.i;
        h = new int[]{868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644};
    }

    public SecP224K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224K1FieldElement");
        }
        this.b = SecP224K1Field.a(bigInteger);
    }

    public SecP224K1FieldElement() {
        this.b = Nat224.a();
    }

    protected SecP224K1FieldElement(int[] iArr) {
        this.b = iArr;
    }

    public boolean j() {
        return Nat224.b(this.b);
    }

    public boolean i() {
        return Nat224.a(this.b);
    }

    public boolean k() {
        return Nat224.a(this.b, 0) == 1;
    }

    public BigInteger a() {
        return Nat224.c(this.b);
    }

    public int b() {
        return a.bitLength();
    }

    public ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] a = Nat224.a();
        SecP224K1Field.a(this.b, ((SecP224K1FieldElement) eCFieldElement).b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat224.a();
        SecP224K1Field.a(this.b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat224.a();
        SecP224K1Field.d(this.b, ((SecP224K1FieldElement) eCFieldElement).b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat224.a();
        SecP224K1Field.b(this.b, ((SecP224K1FieldElement) eCFieldElement).b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat224.a();
        Mod.a(SecP224K1Field.a, ((SecP224K1FieldElement) eCFieldElement).b, a);
        SecP224K1Field.b(a, this.b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat224.a();
        SecP224K1Field.b(this.b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat224.a();
        SecP224K1Field.d(this.b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat224.a();
        Mod.a(SecP224K1Field.a, this.b, a);
        return new SecP224K1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat224.b(iArr) || Nat224.a(iArr)) {
            return this;
        }
        int[] a = Nat224.a();
        SecP224K1Field.d(iArr, a);
        SecP224K1Field.b(a, iArr, a);
        SecP224K1Field.d(a, a);
        SecP224K1Field.b(a, iArr, a);
        int[] a2 = Nat224.a();
        SecP224K1Field.d(a, a2);
        SecP224K1Field.b(a2, iArr, a2);
        int[] a3 = Nat224.a();
        SecP224K1Field.a(a2, 4, a3);
        SecP224K1Field.b(a3, a2, a3);
        int[] a4 = Nat224.a();
        SecP224K1Field.a(a3, 3, a4);
        SecP224K1Field.b(a4, a, a4);
        SecP224K1Field.a(a4, 8, a4);
        SecP224K1Field.b(a4, a3, a4);
        SecP224K1Field.a(a4, 4, a3);
        SecP224K1Field.b(a3, a2, a3);
        SecP224K1Field.a(a3, 19, a2);
        SecP224K1Field.b(a2, a4, a2);
        int[] a5 = Nat224.a();
        SecP224K1Field.a(a2, 42, a5);
        SecP224K1Field.b(a5, a2, a5);
        SecP224K1Field.a(a5, 23, a2);
        SecP224K1Field.b(a2, a3, a2);
        SecP224K1Field.a(a2, 84, a3);
        SecP224K1Field.b(a3, a5, a3);
        SecP224K1Field.a(a3, 20, a3);
        SecP224K1Field.b(a3, a4, a3);
        SecP224K1Field.a(a3, 3, a3);
        SecP224K1Field.b(a3, iArr, a3);
        SecP224K1Field.a(a3, 2, a3);
        SecP224K1Field.b(a3, iArr, a3);
        SecP224K1Field.a(a3, 4, a3);
        SecP224K1Field.b(a3, a, a3);
        SecP224K1Field.d(a3, a3);
        SecP224K1Field.d(a3, a5);
        if (Nat224.b(iArr, a5)) {
            this(a3);
            return this;
        }
        SecP224K1Field.b(a3, h, a3);
        SecP224K1Field.d(a3, a5);
        if (!Nat224.b(iArr, a5)) {
            return null;
        }
        this(a3);
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP224K1FieldElement)) {
            return false;
        }
        return Nat224.b(this.b, ((SecP224K1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 7);
    }
}
