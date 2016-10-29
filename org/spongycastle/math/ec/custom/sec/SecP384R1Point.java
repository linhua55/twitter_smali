package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat384;

/* compiled from: Twttr */
public class SecP384R1Point extends AbstractFp {
    public SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        Object obj;
        Object obj2 = 1;
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if (eCFieldElement == null) {
            obj = 1;
        } else {
            obj = null;
        }
        if (eCFieldElement2 != null) {
            obj2 = null;
        }
        if (obj != obj2) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f = z;
    }

    SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f = z;
    }

    protected ECPoint e() {
        return new SecP384R1Point(null, g(), h());
    }

    public ECPoint b(ECPoint eCPoint) {
        if (q()) {
            return eCPoint;
        }
        if (eCPoint.q()) {
            return this;
        }
        if (this == eCPoint) {
            return v();
        }
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        ECCurve d = d();
        SecP384R1FieldElement secP384R1FieldElement = (SecP384R1FieldElement) this.c;
        SecP384R1FieldElement secP384R1FieldElement2 = (SecP384R1FieldElement) this.d;
        SecP384R1FieldElement secP384R1FieldElement3 = (SecP384R1FieldElement) eCPoint.i();
        SecP384R1FieldElement secP384R1FieldElement4 = (SecP384R1FieldElement) eCPoint.j();
        SecP384R1FieldElement secP384R1FieldElement5 = (SecP384R1FieldElement) this.e[0];
        SecP384R1FieldElement secP384R1FieldElement6 = (SecP384R1FieldElement) eCPoint.a(0);
        int[] a = Nat.a(24);
        int[] a2 = Nat.a(24);
        int[] a3 = Nat.a(12);
        int[] a4 = Nat.a(12);
        boolean i = secP384R1FieldElement5.i();
        if (i) {
            iArr = secP384R1FieldElement3.b;
            iArr2 = secP384R1FieldElement4.b;
            iArr3 = iArr;
        } else {
            SecP384R1Field.d(secP384R1FieldElement5.b, a3);
            SecP384R1Field.c(a3, secP384R1FieldElement3.b, a2);
            SecP384R1Field.c(a3, secP384R1FieldElement5.b, a3);
            SecP384R1Field.c(a3, secP384R1FieldElement4.b, a3);
            iArr2 = a3;
            iArr3 = a2;
        }
        boolean i2 = secP384R1FieldElement6.i();
        if (i2) {
            iArr = secP384R1FieldElement.b;
            iArr4 = secP384R1FieldElement2.b;
            iArr5 = iArr;
        } else {
            SecP384R1Field.d(secP384R1FieldElement6.b, a4);
            SecP384R1Field.c(a4, secP384R1FieldElement.b, a);
            SecP384R1Field.c(a4, secP384R1FieldElement6.b, a4);
            SecP384R1Field.c(a4, secP384R1FieldElement2.b, a4);
            iArr4 = a4;
            iArr5 = a;
        }
        iArr = Nat.a(12);
        SecP384R1Field.d(iArr5, iArr3, iArr);
        iArr3 = Nat.a(12);
        SecP384R1Field.d(iArr4, iArr2, iArr3);
        if (!Nat.e(12, iArr)) {
            SecP384R1Field.d(iArr, a3);
            int[] a5 = Nat.a(12);
            SecP384R1Field.c(a3, iArr, a5);
            SecP384R1Field.c(a3, iArr5, a3);
            SecP384R1Field.b(a5, a5);
            Nat384.a(iArr4, a5, a);
            SecP384R1Field.a(Nat.b(12, a3, a3, a5), a5);
            ECFieldElement secP384R1FieldElement7 = new SecP384R1FieldElement(a4);
            SecP384R1Field.d(iArr3, secP384R1FieldElement7.b);
            SecP384R1Field.d(secP384R1FieldElement7.b, a5, secP384R1FieldElement7.b);
            ECFieldElement secP384R1FieldElement8 = new SecP384R1FieldElement(a5);
            SecP384R1Field.d(a3, secP384R1FieldElement7.b, secP384R1FieldElement8.b);
            Nat384.a(secP384R1FieldElement8.b, iArr3, a2);
            SecP384R1Field.b(a, a2, a);
            SecP384R1Field.c(a, secP384R1FieldElement8.b);
            secP384R1FieldElement = new SecP384R1FieldElement(iArr);
            if (!i) {
                SecP384R1Field.c(secP384R1FieldElement.b, secP384R1FieldElement5.b, secP384R1FieldElement.b);
            }
            if (!i2) {
                SecP384R1Field.c(secP384R1FieldElement.b, secP384R1FieldElement6.b, secP384R1FieldElement.b);
            }
            return new SecP384R1Point(d, secP384R1FieldElement7, secP384R1FieldElement8, new ECFieldElement[]{secP384R1FieldElement}, this.f);
        } else if (Nat.e(12, iArr3)) {
            return v();
        } else {
            return d.e();
        }
    }

    public ECPoint v() {
        if (q()) {
            return this;
        }
        ECCurve d = d();
        SecP384R1FieldElement secP384R1FieldElement = (SecP384R1FieldElement) this.d;
        if (secP384R1FieldElement.j()) {
            return d.e();
        }
        SecP384R1FieldElement secP384R1FieldElement2 = (SecP384R1FieldElement) this.c;
        SecP384R1FieldElement secP384R1FieldElement3 = (SecP384R1FieldElement) this.e[0];
        int[] a = Nat.a(12);
        int[] a2 = Nat.a(12);
        int[] a3 = Nat.a(12);
        SecP384R1Field.d(secP384R1FieldElement.b, a3);
        int[] a4 = Nat.a(12);
        SecP384R1Field.d(a3, a4);
        boolean i = secP384R1FieldElement3.i();
        int[] iArr = secP384R1FieldElement3.b;
        if (!i) {
            SecP384R1Field.d(secP384R1FieldElement3.b, a2);
            iArr = a2;
        }
        SecP384R1Field.d(secP384R1FieldElement2.b, iArr, a);
        SecP384R1Field.a(secP384R1FieldElement2.b, iArr, a2);
        SecP384R1Field.c(a2, a, a2);
        SecP384R1Field.a(Nat.b(12, a2, a2, a2), a2);
        SecP384R1Field.c(a3, secP384R1FieldElement2.b, a3);
        SecP384R1Field.a(Nat.c(12, a3, 2, 0), a3);
        SecP384R1Field.a(Nat.a(12, a4, 3, 0, a), a);
        ECFieldElement secP384R1FieldElement4 = new SecP384R1FieldElement(a4);
        SecP384R1Field.d(a2, secP384R1FieldElement4.b);
        SecP384R1Field.d(secP384R1FieldElement4.b, a3, secP384R1FieldElement4.b);
        SecP384R1Field.d(secP384R1FieldElement4.b, a3, secP384R1FieldElement4.b);
        ECFieldElement secP384R1FieldElement5 = new SecP384R1FieldElement(a3);
        SecP384R1Field.d(a3, secP384R1FieldElement4.b, secP384R1FieldElement5.b);
        SecP384R1Field.c(secP384R1FieldElement5.b, a2, secP384R1FieldElement5.b);
        SecP384R1Field.d(secP384R1FieldElement5.b, a, secP384R1FieldElement5.b);
        SecP384R1FieldElement secP384R1FieldElement6 = new SecP384R1FieldElement(a2);
        SecP384R1Field.e(secP384R1FieldElement.b, secP384R1FieldElement6.b);
        if (!i) {
            SecP384R1Field.c(secP384R1FieldElement6.b, secP384R1FieldElement3.b, secP384R1FieldElement6.b);
        }
        return new SecP384R1Point(d, secP384R1FieldElement4, secP384R1FieldElement5, new ECFieldElement[]{secP384R1FieldElement6}, this.f);
    }

    public ECPoint c(ECPoint eCPoint) {
        if (this == eCPoint) {
            return w();
        }
        if (q()) {
            return eCPoint;
        }
        if (eCPoint.q()) {
            return v();
        }
        return !this.d.j() ? v().b(eCPoint) : eCPoint;
    }

    public ECPoint w() {
        return (q() || this.d.j()) ? this : v().b((ECPoint) this);
    }

    public ECPoint u() {
        return q() ? this : new SecP384R1Point(this.b, this.c, this.d.d(), this.e, this.f);
    }
}
