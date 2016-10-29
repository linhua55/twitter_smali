package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP256K1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    protected int[] b;

    static {
        a = SecP256K1Curve.i;
    }

    public SecP256K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256K1FieldElement");
        }
        this.b = SecP256K1Field.a(bigInteger);
    }

    public SecP256K1FieldElement() {
        this.b = Nat256.a();
    }

    protected SecP256K1FieldElement(int[] iArr) {
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
        SecP256K1Field.a(this.b, ((SecP256K1FieldElement) eCFieldElement).b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat256.a();
        SecP256K1Field.a(this.b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        SecP256K1Field.d(this.b, ((SecP256K1FieldElement) eCFieldElement).b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        SecP256K1Field.b(this.b, ((SecP256K1FieldElement) eCFieldElement).b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat256.a();
        Mod.a(SecP256K1Field.a, ((SecP256K1FieldElement) eCFieldElement).b, a);
        SecP256K1Field.b(a, this.b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat256.a();
        SecP256K1Field.b(this.b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat256.a();
        SecP256K1Field.d(this.b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat256.a();
        Mod.a(SecP256K1Field.a, this.b, a);
        return new SecP256K1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat256.b(iArr) || Nat256.a(iArr)) {
            return this;
        }
        int[] a = Nat256.a();
        SecP256K1Field.d(iArr, a);
        SecP256K1Field.b(a, iArr, a);
        int[] a2 = Nat256.a();
        SecP256K1Field.d(a, a2);
        SecP256K1Field.b(a2, iArr, a2);
        int[] a3 = Nat256.a();
        SecP256K1Field.a(a2, 3, a3);
        SecP256K1Field.b(a3, a2, a3);
        SecP256K1Field.a(a3, 3, a3);
        SecP256K1Field.b(a3, a2, a3);
        SecP256K1Field.a(a3, 2, a3);
        SecP256K1Field.b(a3, a, a3);
        int[] a4 = Nat256.a();
        SecP256K1Field.a(a3, 11, a4);
        SecP256K1Field.b(a4, a3, a4);
        SecP256K1Field.a(a4, 22, a3);
        SecP256K1Field.b(a3, a4, a3);
        int[] a5 = Nat256.a();
        SecP256K1Field.a(a3, 44, a5);
        SecP256K1Field.b(a5, a3, a5);
        int[] a6 = Nat256.a();
        SecP256K1Field.a(a5, 88, a6);
        SecP256K1Field.b(a6, a5, a6);
        SecP256K1Field.a(a6, 44, a5);
        SecP256K1Field.b(a5, a3, a5);
        SecP256K1Field.a(a5, 3, a3);
        SecP256K1Field.b(a3, a2, a3);
        SecP256K1Field.a(a3, 23, a3);
        SecP256K1Field.b(a3, a4, a3);
        SecP256K1Field.a(a3, 6, a3);
        SecP256K1Field.b(a3, a, a3);
        SecP256K1Field.a(a3, 2, a3);
        SecP256K1Field.d(a3, a);
        return Nat256.b(iArr, a) ? new SecP256K1FieldElement(a3) : null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP256K1FieldElement)) {
            return false;
        }
        return Nat256.b(this.b, ((SecP256K1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 8);
    }
}
