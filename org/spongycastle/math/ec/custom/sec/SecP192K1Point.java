package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

/* compiled from: Twttr */
public class SecP192K1Point extends AbstractFp {
    public SecP192K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP192K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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

    SecP192K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f = z;
    }

    protected ECPoint e() {
        return new SecP192K1Point(null, g(), h());
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
        SecP192K1FieldElement secP192K1FieldElement = (SecP192K1FieldElement) this.c;
        SecP192K1FieldElement secP192K1FieldElement2 = (SecP192K1FieldElement) this.d;
        SecP192K1FieldElement secP192K1FieldElement3 = (SecP192K1FieldElement) eCPoint.i();
        SecP192K1FieldElement secP192K1FieldElement4 = (SecP192K1FieldElement) eCPoint.j();
        SecP192K1FieldElement secP192K1FieldElement5 = (SecP192K1FieldElement) this.e[0];
        SecP192K1FieldElement secP192K1FieldElement6 = (SecP192K1FieldElement) eCPoint.a(0);
        int[] b = Nat192.b();
        int[] a = Nat192.a();
        int[] a2 = Nat192.a();
        int[] a3 = Nat192.a();
        boolean i = secP192K1FieldElement5.i();
        if (i) {
            iArr = secP192K1FieldElement3.b;
            iArr2 = secP192K1FieldElement4.b;
            iArr3 = iArr;
        } else {
            SecP192K1Field.d(secP192K1FieldElement5.b, a2);
            SecP192K1Field.b(a2, secP192K1FieldElement3.b, a);
            SecP192K1Field.b(a2, secP192K1FieldElement5.b, a2);
            SecP192K1Field.b(a2, secP192K1FieldElement4.b, a2);
            iArr2 = a2;
            iArr3 = a;
        }
        boolean i2 = secP192K1FieldElement6.i();
        if (i2) {
            iArr = secP192K1FieldElement.b;
            iArr4 = secP192K1FieldElement2.b;
            iArr5 = iArr;
        } else {
            SecP192K1Field.d(secP192K1FieldElement6.b, a3);
            SecP192K1Field.b(a3, secP192K1FieldElement.b, b);
            SecP192K1Field.b(a3, secP192K1FieldElement6.b, a3);
            SecP192K1Field.b(a3, secP192K1FieldElement2.b, a3);
            iArr4 = a3;
            iArr5 = b;
        }
        iArr = Nat192.a();
        SecP192K1Field.d(iArr5, iArr3, iArr);
        SecP192K1Field.d(iArr4, iArr2, a);
        if (!Nat192.b(iArr)) {
            SecP192K1Field.d(iArr, a2);
            iArr3 = Nat192.a();
            SecP192K1Field.b(a2, iArr, iArr3);
            SecP192K1Field.b(a2, iArr5, a2);
            SecP192K1Field.b(iArr3, iArr3);
            Nat192.c(iArr4, iArr3, b);
            SecP192K1Field.a(Nat192.b(a2, a2, iArr3), iArr3);
            ECFieldElement secP192K1FieldElement7 = new SecP192K1FieldElement(a3);
            SecP192K1Field.d(a, secP192K1FieldElement7.b);
            SecP192K1Field.d(secP192K1FieldElement7.b, iArr3, secP192K1FieldElement7.b);
            ECFieldElement secP192K1FieldElement8 = new SecP192K1FieldElement(iArr3);
            SecP192K1Field.d(a2, secP192K1FieldElement7.b, secP192K1FieldElement8.b);
            SecP192K1Field.c(secP192K1FieldElement8.b, a, b);
            SecP192K1Field.c(b, secP192K1FieldElement8.b);
            secP192K1FieldElement = new SecP192K1FieldElement(iArr);
            if (!i) {
                SecP192K1Field.b(secP192K1FieldElement.b, secP192K1FieldElement5.b, secP192K1FieldElement.b);
            }
            if (!i2) {
                SecP192K1Field.b(secP192K1FieldElement.b, secP192K1FieldElement6.b, secP192K1FieldElement.b);
            }
            return new SecP192K1Point(d, secP192K1FieldElement7, secP192K1FieldElement8, new ECFieldElement[]{secP192K1FieldElement}, this.f);
        } else if (Nat192.b(a)) {
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
        SecP192K1FieldElement secP192K1FieldElement = (SecP192K1FieldElement) this.d;
        if (secP192K1FieldElement.j()) {
            return d.e();
        }
        SecP192K1FieldElement secP192K1FieldElement2 = (SecP192K1FieldElement) this.c;
        SecP192K1FieldElement secP192K1FieldElement3 = (SecP192K1FieldElement) this.e[0];
        int[] a = Nat192.a();
        SecP192K1Field.d(secP192K1FieldElement.b, a);
        int[] a2 = Nat192.a();
        SecP192K1Field.d(a, a2);
        int[] a3 = Nat192.a();
        SecP192K1Field.d(secP192K1FieldElement2.b, a3);
        SecP192K1Field.a(Nat192.b(a3, a3, a3), a3);
        SecP192K1Field.b(a, secP192K1FieldElement2.b, a);
        SecP192K1Field.a(Nat.c(6, a, 2, 0), a);
        int[] a4 = Nat192.a();
        SecP192K1Field.a(Nat.a(6, a2, 3, 0, a4), a4);
        ECFieldElement secP192K1FieldElement4 = new SecP192K1FieldElement(a2);
        SecP192K1Field.d(a3, secP192K1FieldElement4.b);
        SecP192K1Field.d(secP192K1FieldElement4.b, a, secP192K1FieldElement4.b);
        SecP192K1Field.d(secP192K1FieldElement4.b, a, secP192K1FieldElement4.b);
        ECFieldElement secP192K1FieldElement5 = new SecP192K1FieldElement(a);
        SecP192K1Field.d(a, secP192K1FieldElement4.b, secP192K1FieldElement5.b);
        SecP192K1Field.b(secP192K1FieldElement5.b, a3, secP192K1FieldElement5.b);
        SecP192K1Field.d(secP192K1FieldElement5.b, a4, secP192K1FieldElement5.b);
        SecP192K1FieldElement secP192K1FieldElement6 = new SecP192K1FieldElement(a3);
        SecP192K1Field.e(secP192K1FieldElement.b, secP192K1FieldElement6.b);
        if (!secP192K1FieldElement3.i()) {
            SecP192K1Field.b(secP192K1FieldElement6.b, secP192K1FieldElement3.b, secP192K1FieldElement6.b);
        }
        return new SecP192K1Point(d, secP192K1FieldElement4, secP192K1FieldElement5, new ECFieldElement[]{secP192K1FieldElement6}, this.f);
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
        return q() ? this : new SecP192K1Point(this.b, this.c, this.d.d(), this.e, this.f);
    }
}
