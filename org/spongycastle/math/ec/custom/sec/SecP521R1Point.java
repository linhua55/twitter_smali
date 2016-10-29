package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;

/* compiled from: Twttr */
public class SecP521R1Point extends AbstractFp {
    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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

    SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f = z;
    }

    protected ECPoint e() {
        return new SecP521R1Point(null, g(), h());
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
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.c;
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.d;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) eCPoint.i();
        SecP521R1FieldElement secP521R1FieldElement4 = (SecP521R1FieldElement) eCPoint.j();
        SecP521R1FieldElement secP521R1FieldElement5 = (SecP521R1FieldElement) this.e[0];
        SecP521R1FieldElement secP521R1FieldElement6 = (SecP521R1FieldElement) eCPoint.a(0);
        int[] a = Nat.a(17);
        int[] a2 = Nat.a(17);
        int[] a3 = Nat.a(17);
        int[] a4 = Nat.a(17);
        boolean i = secP521R1FieldElement5.i();
        if (i) {
            iArr = secP521R1FieldElement3.b;
            iArr2 = secP521R1FieldElement4.b;
            iArr3 = iArr;
        } else {
            SecP521R1Field.d(secP521R1FieldElement5.b, a3);
            SecP521R1Field.b(a3, secP521R1FieldElement3.b, a2);
            SecP521R1Field.b(a3, secP521R1FieldElement5.b, a3);
            SecP521R1Field.b(a3, secP521R1FieldElement4.b, a3);
            iArr2 = a3;
            iArr3 = a2;
        }
        boolean i2 = secP521R1FieldElement6.i();
        if (i2) {
            iArr = secP521R1FieldElement.b;
            iArr4 = secP521R1FieldElement2.b;
            iArr5 = iArr;
        } else {
            SecP521R1Field.d(secP521R1FieldElement6.b, a4);
            SecP521R1Field.b(a4, secP521R1FieldElement.b, a);
            SecP521R1Field.b(a4, secP521R1FieldElement6.b, a4);
            SecP521R1Field.b(a4, secP521R1FieldElement2.b, a4);
            iArr4 = a4;
            iArr5 = a;
        }
        iArr = Nat.a(17);
        SecP521R1Field.c(iArr5, iArr3, iArr);
        SecP521R1Field.c(iArr4, iArr2, a2);
        if (!Nat.e(17, iArr)) {
            SecP521R1Field.d(iArr, a3);
            iArr3 = Nat.a(17);
            SecP521R1Field.b(a3, iArr, iArr3);
            SecP521R1Field.b(a3, iArr5, a3);
            SecP521R1Field.b(iArr4, iArr3, a);
            ECFieldElement secP521R1FieldElement7 = new SecP521R1FieldElement(a4);
            SecP521R1Field.d(a2, secP521R1FieldElement7.b);
            SecP521R1Field.a(secP521R1FieldElement7.b, iArr3, secP521R1FieldElement7.b);
            SecP521R1Field.c(secP521R1FieldElement7.b, a3, secP521R1FieldElement7.b);
            SecP521R1Field.c(secP521R1FieldElement7.b, a3, secP521R1FieldElement7.b);
            ECFieldElement secP521R1FieldElement8 = new SecP521R1FieldElement(iArr3);
            SecP521R1Field.c(a3, secP521R1FieldElement7.b, secP521R1FieldElement8.b);
            SecP521R1Field.b(secP521R1FieldElement8.b, a2, a2);
            SecP521R1Field.c(a2, a, secP521R1FieldElement8.b);
            secP521R1FieldElement = new SecP521R1FieldElement(iArr);
            if (!i) {
                SecP521R1Field.b(secP521R1FieldElement.b, secP521R1FieldElement5.b, secP521R1FieldElement.b);
            }
            if (!i2) {
                SecP521R1Field.b(secP521R1FieldElement.b, secP521R1FieldElement6.b, secP521R1FieldElement.b);
            }
            return new SecP521R1Point(d, secP521R1FieldElement7, secP521R1FieldElement8, new ECFieldElement[]{secP521R1FieldElement}, this.f);
        } else if (Nat.e(17, a2)) {
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
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.d;
        if (secP521R1FieldElement.j()) {
            return d.e();
        }
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.c;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) this.e[0];
        int[] a = Nat.a(17);
        int[] a2 = Nat.a(17);
        int[] a3 = Nat.a(17);
        SecP521R1Field.d(secP521R1FieldElement.b, a3);
        int[] a4 = Nat.a(17);
        SecP521R1Field.d(a3, a4);
        boolean i = secP521R1FieldElement3.i();
        int[] iArr = secP521R1FieldElement3.b;
        if (!i) {
            SecP521R1Field.d(secP521R1FieldElement3.b, a2);
            iArr = a2;
        }
        SecP521R1Field.c(secP521R1FieldElement2.b, iArr, a);
        SecP521R1Field.a(secP521R1FieldElement2.b, iArr, a2);
        SecP521R1Field.b(a2, a, a2);
        Nat.b(17, a2, a2, a2);
        SecP521R1Field.a(a2);
        SecP521R1Field.b(a3, secP521R1FieldElement2.b, a3);
        Nat.c(17, a3, 2, 0);
        SecP521R1Field.a(a3);
        Nat.a(17, a4, 3, 0, a);
        SecP521R1Field.a(a);
        ECFieldElement secP521R1FieldElement4 = new SecP521R1FieldElement(a4);
        SecP521R1Field.d(a2, secP521R1FieldElement4.b);
        SecP521R1Field.c(secP521R1FieldElement4.b, a3, secP521R1FieldElement4.b);
        SecP521R1Field.c(secP521R1FieldElement4.b, a3, secP521R1FieldElement4.b);
        ECFieldElement secP521R1FieldElement5 = new SecP521R1FieldElement(a3);
        SecP521R1Field.c(a3, secP521R1FieldElement4.b, secP521R1FieldElement5.b);
        SecP521R1Field.b(secP521R1FieldElement5.b, a2, secP521R1FieldElement5.b);
        SecP521R1Field.c(secP521R1FieldElement5.b, a, secP521R1FieldElement5.b);
        SecP521R1FieldElement secP521R1FieldElement6 = new SecP521R1FieldElement(a2);
        SecP521R1Field.e(secP521R1FieldElement.b, secP521R1FieldElement6.b);
        if (!i) {
            SecP521R1Field.b(secP521R1FieldElement6.b, secP521R1FieldElement3.b, secP521R1FieldElement6.b);
        }
        return new SecP521R1Point(d, secP521R1FieldElement4, secP521R1FieldElement5, new ECFieldElement[]{secP521R1FieldElement6}, this.f);
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
        return q() ? this : new SecP521R1Point(this.b, this.c, this.d.d(), this.e, this.f);
    }
}
