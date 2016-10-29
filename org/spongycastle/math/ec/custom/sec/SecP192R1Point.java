package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

/* compiled from: Twttr */
public class SecP192R1Point extends AbstractFp {
    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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

    SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f = z;
    }

    protected ECPoint e() {
        return new SecP192R1Point(null, g(), h());
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
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.c;
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.d;
        SecP192R1FieldElement secP192R1FieldElement3 = (SecP192R1FieldElement) eCPoint.i();
        SecP192R1FieldElement secP192R1FieldElement4 = (SecP192R1FieldElement) eCPoint.j();
        SecP192R1FieldElement secP192R1FieldElement5 = (SecP192R1FieldElement) this.e[0];
        SecP192R1FieldElement secP192R1FieldElement6 = (SecP192R1FieldElement) eCPoint.a(0);
        int[] b = Nat192.b();
        int[] a = Nat192.a();
        int[] a2 = Nat192.a();
        int[] a3 = Nat192.a();
        boolean i = secP192R1FieldElement5.i();
        if (i) {
            iArr = secP192R1FieldElement3.b;
            iArr2 = secP192R1FieldElement4.b;
            iArr3 = iArr;
        } else {
            SecP192R1Field.d(secP192R1FieldElement5.b, a2);
            SecP192R1Field.b(a2, secP192R1FieldElement3.b, a);
            SecP192R1Field.b(a2, secP192R1FieldElement5.b, a2);
            SecP192R1Field.b(a2, secP192R1FieldElement4.b, a2);
            iArr2 = a2;
            iArr3 = a;
        }
        boolean i2 = secP192R1FieldElement6.i();
        if (i2) {
            iArr = secP192R1FieldElement.b;
            iArr4 = secP192R1FieldElement2.b;
            iArr5 = iArr;
        } else {
            SecP192R1Field.d(secP192R1FieldElement6.b, a3);
            SecP192R1Field.b(a3, secP192R1FieldElement.b, b);
            SecP192R1Field.b(a3, secP192R1FieldElement6.b, a3);
            SecP192R1Field.b(a3, secP192R1FieldElement2.b, a3);
            iArr4 = a3;
            iArr5 = b;
        }
        iArr = Nat192.a();
        SecP192R1Field.d(iArr5, iArr3, iArr);
        SecP192R1Field.d(iArr4, iArr2, a);
        if (!Nat192.b(iArr)) {
            SecP192R1Field.d(iArr, a2);
            iArr3 = Nat192.a();
            SecP192R1Field.b(a2, iArr, iArr3);
            SecP192R1Field.b(a2, iArr5, a2);
            SecP192R1Field.b(iArr3, iArr3);
            Nat192.c(iArr4, iArr3, b);
            SecP192R1Field.a(Nat192.b(a2, a2, iArr3), iArr3);
            ECFieldElement secP192R1FieldElement7 = new SecP192R1FieldElement(a3);
            SecP192R1Field.d(a, secP192R1FieldElement7.b);
            SecP192R1Field.d(secP192R1FieldElement7.b, iArr3, secP192R1FieldElement7.b);
            ECFieldElement secP192R1FieldElement8 = new SecP192R1FieldElement(iArr3);
            SecP192R1Field.d(a2, secP192R1FieldElement7.b, secP192R1FieldElement8.b);
            SecP192R1Field.c(secP192R1FieldElement8.b, a, b);
            SecP192R1Field.c(b, secP192R1FieldElement8.b);
            secP192R1FieldElement = new SecP192R1FieldElement(iArr);
            if (!i) {
                SecP192R1Field.b(secP192R1FieldElement.b, secP192R1FieldElement5.b, secP192R1FieldElement.b);
            }
            if (!i2) {
                SecP192R1Field.b(secP192R1FieldElement.b, secP192R1FieldElement6.b, secP192R1FieldElement.b);
            }
            return new SecP192R1Point(d, secP192R1FieldElement7, secP192R1FieldElement8, new ECFieldElement[]{secP192R1FieldElement}, this.f);
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
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.d;
        if (secP192R1FieldElement.j()) {
            return d.e();
        }
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.c;
        SecP192R1FieldElement secP192R1FieldElement3 = (SecP192R1FieldElement) this.e[0];
        int[] a = Nat192.a();
        int[] a2 = Nat192.a();
        int[] a3 = Nat192.a();
        SecP192R1Field.d(secP192R1FieldElement.b, a3);
        int[] a4 = Nat192.a();
        SecP192R1Field.d(a3, a4);
        boolean i = secP192R1FieldElement3.i();
        int[] iArr = secP192R1FieldElement3.b;
        if (!i) {
            SecP192R1Field.d(secP192R1FieldElement3.b, a2);
            iArr = a2;
        }
        SecP192R1Field.d(secP192R1FieldElement2.b, iArr, a);
        SecP192R1Field.a(secP192R1FieldElement2.b, iArr, a2);
        SecP192R1Field.b(a2, a, a2);
        SecP192R1Field.a(Nat192.b(a2, a2, a2), a2);
        SecP192R1Field.b(a3, secP192R1FieldElement2.b, a3);
        SecP192R1Field.a(Nat.c(6, a3, 2, 0), a3);
        SecP192R1Field.a(Nat.a(6, a4, 3, 0, a), a);
        ECFieldElement secP192R1FieldElement4 = new SecP192R1FieldElement(a4);
        SecP192R1Field.d(a2, secP192R1FieldElement4.b);
        SecP192R1Field.d(secP192R1FieldElement4.b, a3, secP192R1FieldElement4.b);
        SecP192R1Field.d(secP192R1FieldElement4.b, a3, secP192R1FieldElement4.b);
        ECFieldElement secP192R1FieldElement5 = new SecP192R1FieldElement(a3);
        SecP192R1Field.d(a3, secP192R1FieldElement4.b, secP192R1FieldElement5.b);
        SecP192R1Field.b(secP192R1FieldElement5.b, a2, secP192R1FieldElement5.b);
        SecP192R1Field.d(secP192R1FieldElement5.b, a, secP192R1FieldElement5.b);
        SecP192R1FieldElement secP192R1FieldElement6 = new SecP192R1FieldElement(a2);
        SecP192R1Field.e(secP192R1FieldElement.b, secP192R1FieldElement6.b);
        if (!i) {
            SecP192R1Field.b(secP192R1FieldElement6.b, secP192R1FieldElement3.b, secP192R1FieldElement6.b);
        }
        return new SecP192R1Point(d, secP192R1FieldElement4, secP192R1FieldElement5, new ECFieldElement[]{secP192R1FieldElement6}, this.f);
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
        return q() ? this : new SecP192R1Point(this.b, this.c, this.d.d(), this.e, this.f);
    }
}
