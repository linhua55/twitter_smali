package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP521R1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    protected int[] b;

    static {
        a = SecP521R1Curve.i;
    }

    public SecP521R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
        }
        this.b = SecP521R1Field.a(bigInteger);
    }

    public SecP521R1FieldElement() {
        this.b = Nat.a(17);
    }

    protected SecP521R1FieldElement(int[] iArr) {
        this.b = iArr;
    }

    public boolean j() {
        return Nat.e(17, this.b);
    }

    public boolean i() {
        return Nat.d(17, this.b);
    }

    public boolean k() {
        return Nat.a(this.b, 0) == 1;
    }

    public BigInteger a() {
        return Nat.f(17, this.b);
    }

    public int b() {
        return a.bitLength();
    }

    public ECFieldElement a(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(17);
        SecP521R1Field.a(this.b, ((SecP521R1FieldElement) eCFieldElement).b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat.a(17);
        SecP521R1Field.a(this.b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(17);
        SecP521R1Field.c(this.b, ((SecP521R1FieldElement) eCFieldElement).b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(17);
        SecP521R1Field.b(this.b, ((SecP521R1FieldElement) eCFieldElement).b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat.a(17);
        Mod.a(SecP521R1Field.a, ((SecP521R1FieldElement) eCFieldElement).b, a);
        SecP521R1Field.b(a, this.b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat.a(17);
        SecP521R1Field.b(this.b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat.a(17);
        SecP521R1Field.d(this.b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat.a(17);
        Mod.a(SecP521R1Field.a, this.b, a);
        return new SecP521R1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat.e(17, iArr) || Nat.d(17, iArr)) {
            return this;
        }
        int[] a = Nat.a(17);
        int[] a2 = Nat.a(17);
        SecP521R1Field.a(iArr, 519, a);
        SecP521R1Field.d(a, a2);
        return Nat.b(17, iArr, a2) ? new SecP521R1FieldElement(a) : null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP521R1FieldElement)) {
            return false;
        }
        return Nat.b(17, this.b, ((SecP521R1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 17);
    }
}
