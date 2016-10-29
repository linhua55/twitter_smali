package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat192;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP192K1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    protected int[] b;

    static {
        a = SecP192K1Curve.i;
    }

    public SecP192K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
        }
        this.b = SecP192K1Field.a(bigInteger);
    }

    public SecP192K1FieldElement() {
        this.b = Nat192.a();
    }

    protected SecP192K1FieldElement(int[] iArr) {
        this.b = iArr;
    }

    public boolean j() {
        return Nat192.b(this.b);
    }

    public boolean i() {
        return Nat192.a(this.b);
    }

    public boolean k() {
        return Nat192.a(this.b, 0) == 1;
    }

    public BigInteger a() {
        return Nat192.c(this.b);
    }

    public int b() {
        return a.bitLength();
    }

    public ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] a = Nat192.a();
        SecP192K1Field.a(this.b, ((SecP192K1FieldElement) eCFieldElement).b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat192.a();
        SecP192K1Field.a(this.b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat192.a();
        SecP192K1Field.d(this.b, ((SecP192K1FieldElement) eCFieldElement).b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat192.a();
        SecP192K1Field.b(this.b, ((SecP192K1FieldElement) eCFieldElement).b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat192.a();
        Mod.a(SecP192K1Field.a, ((SecP192K1FieldElement) eCFieldElement).b, a);
        SecP192K1Field.b(a, this.b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat192.a();
        SecP192K1Field.b(this.b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat192.a();
        SecP192K1Field.d(this.b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat192.a();
        Mod.a(SecP192K1Field.a, this.b, a);
        return new SecP192K1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat192.b(iArr) || Nat192.a(iArr)) {
            return this;
        }
        int[] a = Nat192.a();
        SecP192K1Field.d(iArr, a);
        SecP192K1Field.b(a, iArr, a);
        int[] a2 = Nat192.a();
        SecP192K1Field.d(a, a2);
        SecP192K1Field.b(a2, iArr, a2);
        int[] a3 = Nat192.a();
        SecP192K1Field.a(a2, 3, a3);
        SecP192K1Field.b(a3, a2, a3);
        SecP192K1Field.a(a3, 2, a3);
        SecP192K1Field.b(a3, a, a3);
        SecP192K1Field.a(a3, 8, a);
        SecP192K1Field.b(a, a3, a);
        SecP192K1Field.a(a, 3, a3);
        SecP192K1Field.b(a3, a2, a3);
        int[] a4 = Nat192.a();
        SecP192K1Field.a(a3, 16, a4);
        SecP192K1Field.b(a4, a, a4);
        SecP192K1Field.a(a4, 35, a);
        SecP192K1Field.b(a, a4, a);
        SecP192K1Field.a(a, 70, a4);
        SecP192K1Field.b(a4, a, a4);
        SecP192K1Field.a(a4, 19, a);
        SecP192K1Field.b(a, a3, a);
        SecP192K1Field.a(a, 20, a);
        SecP192K1Field.b(a, a3, a);
        SecP192K1Field.a(a, 4, a);
        SecP192K1Field.b(a, a2, a);
        SecP192K1Field.a(a, 6, a);
        SecP192K1Field.b(a, a2, a);
        SecP192K1Field.d(a, a);
        SecP192K1Field.d(a, a2);
        return Nat192.a(iArr, a2) ? new SecP192K1FieldElement(a) : null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP192K1FieldElement)) {
            return false;
        }
        return Nat192.a(this.b, ((SecP192K1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 6);
    }
}
