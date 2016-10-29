package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP256R1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    protected int[] b;

    static {
        a = SecP256R1Curve.i;
    }

    public SecP256R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.b = SecP256R1Field.a(bigInteger);
    }

    public SecP256R1FieldElement() {
        this.b = Nat256.a();
    }

    protected SecP256R1FieldElement(int[] iArr) {
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
        SecP256R1Field.a(this.b, ((SecP256R1FieldElement) eCFieldElement).b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat256.a();
        SecP256R1Field.a(this.b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        SecP256R1Field.d(this.b, ((SecP256R1FieldElement) eCFieldElement).b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        SecP256R1Field.b(this.b, ((SecP256R1FieldElement) eCFieldElement).b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        Mod.a(SecP256R1Field.a, ((SecP256R1FieldElement) eCFieldElement).b, a);
        SecP256R1Field.b(a, this.b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat256.a();
        SecP256R1Field.b(this.b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat256.a();
        SecP256R1Field.d(this.b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat256.a();
        Mod.a(SecP256R1Field.a, this.b, a);
        return new SecP256R1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat256.b(iArr) || Nat256.a(iArr)) {
            return this;
        }
        int[] a = Nat256.a();
        int[] a2 = Nat256.a();
        SecP256R1Field.d(iArr, a);
        SecP256R1Field.b(a, iArr, a);
        SecP256R1Field.a(a, 2, a2);
        SecP256R1Field.b(a2, a, a2);
        SecP256R1Field.a(a2, 4, a);
        SecP256R1Field.b(a, a2, a);
        SecP256R1Field.a(a, 8, a2);
        SecP256R1Field.b(a2, a, a2);
        SecP256R1Field.a(a2, 16, a);
        SecP256R1Field.b(a, a2, a);
        SecP256R1Field.a(a, 32, a);
        SecP256R1Field.b(a, iArr, a);
        SecP256R1Field.a(a, 96, a);
        SecP256R1Field.b(a, iArr, a);
        SecP256R1Field.a(a, 94, a);
        SecP256R1Field.d(a, a2);
        return Nat256.b(iArr, a2) ? new SecP256R1FieldElement(a) : null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP256R1FieldElement)) {
            return false;
        }
        return Nat256.b(this.b, ((SecP256R1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 8);
    }
}
