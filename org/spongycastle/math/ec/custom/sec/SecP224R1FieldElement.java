package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class SecP224R1FieldElement extends ECFieldElement {
    public static final BigInteger a;
    protected int[] b;

    static {
        a = SecP224R1Curve.i;
    }

    public SecP224R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(a) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
        }
        this.b = SecP224R1Field.a(bigInteger);
    }

    public SecP224R1FieldElement() {
        this.b = Nat224.a();
    }

    protected SecP224R1FieldElement(int[] iArr) {
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
        SecP224R1Field.a(this.b, ((SecP224R1FieldElement) eCFieldElement).b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement c() {
        int[] a = Nat224.a();
        SecP224R1Field.a(this.b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement b(ECFieldElement eCFieldElement) {
        int[] a = Nat224.a();
        SecP224R1Field.d(this.b, ((SecP224R1FieldElement) eCFieldElement).b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement c(ECFieldElement eCFieldElement) {
        int[] a = Nat224.a();
        SecP224R1Field.b(this.b, ((SecP224R1FieldElement) eCFieldElement).b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement d(ECFieldElement eCFieldElement) {
        int[] a = Nat224.a();
        Mod.a(SecP224R1Field.a, ((SecP224R1FieldElement) eCFieldElement).b, a);
        SecP224R1Field.b(a, this.b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement d() {
        int[] a = Nat224.a();
        SecP224R1Field.b(this.b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement e() {
        int[] a = Nat224.a();
        SecP224R1Field.d(this.b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement f() {
        int[] a = Nat224.a();
        Mod.a(SecP224R1Field.a, this.b, a);
        return new SecP224R1FieldElement(a);
    }

    public ECFieldElement g() {
        int[] iArr = this.b;
        if (Nat224.b(iArr) || Nat224.a(iArr)) {
            return this;
        }
        int[] a = Nat224.a();
        SecP224R1Field.b(iArr, a);
        int[] a2 = Mod.a(SecP224R1Field.a);
        int[] a3 = Nat224.a();
        if (!a(iArr)) {
            return null;
        }
        while (!a(a, a2, a3)) {
            SecP224R1Field.a(a2, a2);
        }
        SecP224R1Field.d(a3, a2);
        if (Nat224.b(iArr, a2)) {
            return new SecP224R1FieldElement(a3);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP224R1FieldElement)) {
            return false;
        }
        return Nat224.b(this.b, ((SecP224R1FieldElement) obj).b);
    }

    public int hashCode() {
        return a.hashCode() ^ Arrays.a(this.b, 0, 7);
    }

    private static boolean a(int[] iArr) {
        int[] a = Nat224.a();
        int[] a2 = Nat224.a();
        Nat224.a(iArr, a);
        for (int i = 0; i < 7; i++) {
            Nat224.a(a, a2);
            SecP224R1Field.a(a, 1 << i, a);
            SecP224R1Field.b(a, a2, a);
        }
        SecP224R1Field.a(a, 95, a);
        return Nat224.a(a);
    }

    private static void a(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7) {
        SecP224R1Field.b(iArr5, iArr3, iArr7);
        SecP224R1Field.b(iArr7, iArr, iArr7);
        SecP224R1Field.b(iArr4, iArr2, iArr6);
        SecP224R1Field.a(iArr6, iArr7, iArr6);
        SecP224R1Field.b(iArr4, iArr3, iArr7);
        Nat224.a(iArr6, iArr4);
        SecP224R1Field.b(iArr5, iArr2, iArr5);
        SecP224R1Field.a(iArr5, iArr7, iArr5);
        SecP224R1Field.d(iArr5, iArr6);
        SecP224R1Field.b(iArr6, iArr, iArr6);
    }

    private static void a(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        Nat224.a(iArr, iArr4);
        int[] a = Nat224.a();
        int[] a2 = Nat224.a();
        for (int i = 0; i < 7; i++) {
            Nat224.a(iArr2, a);
            Nat224.a(iArr3, a2);
            int i2 = 1 << i;
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                }
                a(iArr2, iArr3, iArr4, iArr5);
            }
            a(iArr, a, a2, iArr2, iArr3, iArr4, iArr5);
        }
    }

    private static void a(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        SecP224R1Field.b(iArr2, iArr, iArr2);
        SecP224R1Field.e(iArr2, iArr2);
        SecP224R1Field.d(iArr, iArr4);
        SecP224R1Field.a(iArr3, iArr4, iArr);
        SecP224R1Field.b(iArr3, iArr4, iArr3);
        SecP224R1Field.a(Nat.c(7, iArr3, 2, 0), iArr3);
    }

    private static boolean a(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] a = Nat224.a();
        Nat224.a(iArr2, a);
        int[] a2 = Nat224.a();
        a2[0] = 1;
        int[] a3 = Nat224.a();
        a(iArr, a, a2, a3, iArr3);
        int[] a4 = Nat224.a();
        int[] a5 = Nat224.a();
        for (int i = 1; i < 96; i++) {
            Nat224.a(a, a4);
            Nat224.a(a2, a5);
            a(a, a2, a3, iArr3);
            if (Nat224.b(a)) {
                Mod.a(SecP224R1Field.a, a5, iArr3);
                SecP224R1Field.b(iArr3, a4, iArr3);
                return true;
            }
        }
        return false;
    }
}
