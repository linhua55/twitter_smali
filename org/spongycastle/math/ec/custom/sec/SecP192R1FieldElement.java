package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat192;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP192R1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    protected int[] b;

    static {
        a = SecP192R1Curve.i;
    }

    public SecP192R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192R1FieldElement");
        }
        this.b = SecP192R1Field.a(bigInteger);
    }

    public SecP192R1FieldElement() {
        this.b = Nat192.a();
    }

    protected SecP192R1FieldElement(int[] iArr) {
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
        SecP192R1Field.a(this.b, ((SecP192R1FieldElement) eCFieldElement).b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat192.a();
        SecP192R1Field.a(this.b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat192.a();
        SecP192R1Field.d(this.b, ((SecP192R1FieldElement) eCFieldElement).b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat192.a();
        SecP192R1Field.b(this.b, ((SecP192R1FieldElement) eCFieldElement).b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat192.a();
        Mod.a(SecP192R1Field.a, ((SecP192R1FieldElement) eCFieldElement).b, a);
        SecP192R1Field.b(a, this.b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat192.a();
        SecP192R1Field.b(this.b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat192.a();
        SecP192R1Field.d(this.b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat192.a();
        Mod.a(SecP192R1Field.a, this.b, a);
        return new SecP192R1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat192.b(iArr) || Nat192.a(iArr)) {
            return this;
        }
        int[] a = Nat192.a();
        int[] a2 = Nat192.a();
        SecP192R1Field.d(iArr, a);
        SecP192R1Field.b(a, iArr, a);
        SecP192R1Field.a(a, 2, a2);
        SecP192R1Field.b(a2, a, a2);
        SecP192R1Field.a(a2, 4, a);
        SecP192R1Field.b(a, a2, a);
        SecP192R1Field.a(a, 8, a2);
        SecP192R1Field.b(a2, a, a2);
        SecP192R1Field.a(a2, 16, a);
        SecP192R1Field.b(a, a2, a);
        SecP192R1Field.a(a, 32, a2);
        SecP192R1Field.b(a2, a, a2);
        SecP192R1Field.a(a2, 64, a);
        SecP192R1Field.b(a, a2, a);
        SecP192R1Field.a(a, 62, a);
        SecP192R1Field.d(a, a2);
        return Nat192.a(iArr, a2) ? new SecP192R1FieldElement(a) : null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP192R1FieldElement)) {
            return false;
        }
        return Nat192.a(this.b, ((SecP192R1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 6);
    }
}
