package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP384R1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    protected int[] b;

    static {
        a = SecP384R1Curve.i;
    }

    public SecP384R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP384R1FieldElement");
        }
        this.b = SecP384R1Field.a(bigInteger);
    }

    public SecP384R1FieldElement() {
        this.b = Nat.a(12);
    }

    protected SecP384R1FieldElement(int[] iArr) {
        this.b = iArr;
    }

    public boolean j() {
        return Nat.e(12, this.b);
    }

    public boolean i() {
        return Nat.d(12, this.b);
    }

    public boolean k() {
        return Nat.a(this.b, 0) == 1;
    }

    public BigInteger a() {
        return Nat.f(12, this.b);
    }

    public int b() {
        return a.bitLength();
    }

    public ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(12);
        SecP384R1Field.a(this.b, ((SecP384R1FieldElement) eCFieldElement).b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat.a(12);
        SecP384R1Field.a(this.b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(12);
        SecP384R1Field.d(this.b, ((SecP384R1FieldElement) eCFieldElement).b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(12);
        SecP384R1Field.c(this.b, ((SecP384R1FieldElement) eCFieldElement).b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(12);
        Mod.a(SecP384R1Field.a, ((SecP384R1FieldElement) eCFieldElement).b, a);
        SecP384R1Field.c(a, this.b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat.a(12);
        SecP384R1Field.b(this.b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat.a(12);
        SecP384R1Field.d(this.b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat.a(12);
        Mod.a(SecP384R1Field.a, this.b, a);
        return new SecP384R1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat.e(12, iArr) || Nat.d(12, iArr)) {
            return this;
        }
        int[] a = Nat.a(12);
        int[] a2 = Nat.a(12);
        int[] a3 = Nat.a(12);
        int[] a4 = Nat.a(12);
        SecP384R1Field.d(iArr, a);
        SecP384R1Field.c(a, iArr, a);
        SecP384R1Field.a(a, 2, a2);
        SecP384R1Field.c(a2, a, a2);
        SecP384R1Field.d(a2, a2);
        SecP384R1Field.c(a2, iArr, a2);
        SecP384R1Field.a(a2, 5, a3);
        SecP384R1Field.c(a3, a2, a3);
        SecP384R1Field.a(a3, 5, a4);
        SecP384R1Field.c(a4, a2, a4);
        SecP384R1Field.a(a4, 15, a2);
        SecP384R1Field.c(a2, a4, a2);
        SecP384R1Field.a(a2, 2, a3);
        SecP384R1Field.c(a, a3, a);
        SecP384R1Field.a(a3, 28, a3);
        SecP384R1Field.c(a2, a3, a2);
        SecP384R1Field.a(a2, 60, a3);
        SecP384R1Field.c(a3, a2, a3);
        SecP384R1Field.a(a3, 120, a2);
        SecP384R1Field.c(a2, a3, a2);
        SecP384R1Field.a(a2, 15, a2);
        SecP384R1Field.c(a2, a4, a2);
        SecP384R1Field.a(a2, 33, a2);
        SecP384R1Field.c(a2, a, a2);
        SecP384R1Field.a(a2, 64, a2);
        SecP384R1Field.c(a2, iArr, a2);
        SecP384R1Field.a(a2, 30, a);
        SecP384R1Field.d(a, a2);
        return Nat.b(12, iArr, a2) ? new SecP384R1FieldElement(a) : null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP384R1FieldElement)) {
            return false;
        }
        return Nat.b(12, this.b, ((SecP384R1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 12);
    }
}
