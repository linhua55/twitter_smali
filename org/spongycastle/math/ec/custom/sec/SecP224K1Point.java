package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;

/* compiled from: Twttr */
public class SecP224K1Point extends AbstractFp {
    public SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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

    SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f = z;
    }

    protected ECPoint e() {
        return new SecP224K1Point(null, g(), h());
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
        SecP224K1FieldElement secP224K1FieldElement = (SecP224K1FieldElement) this.c;
        SecP224K1FieldElement secP224K1FieldElement2 = (SecP224K1FieldElement) this.d;
        SecP224K1FieldElement secP224K1FieldElement3 = (SecP224K1FieldElement) eCPoint.i();
        SecP224K1FieldElement secP224K1FieldElement4 = (SecP224K1FieldElement) eCPoint.j();
        SecP224K1FieldElement secP224K1FieldElement5 = (SecP224K1FieldElement) this.e[0];
        SecP224K1FieldElement secP224K1FieldElement6 = (SecP224K1FieldElement) eCPoint.a(0);
        int[] b = Nat224.b();
        int[] a = Nat224.a();
        int[] a2 = Nat224.a();
        int[] a3 = Nat224.a();
        boolean i = secP224K1FieldElement5.i();
        if (i) {
            iArr = secP224K1FieldElement3.b;
            iArr2 = secP224K1FieldElement4.b;
            iArr3 = iArr;
        } else {
            SecP224K1Field.d(secP224K1FieldElement5.b, a2);
            SecP224K1Field.b(a2, secP224K1FieldElement3.b, a);
            SecP224K1Field.b(a2, secP224K1FieldElement5.b, a2);
            SecP224K1Field.b(a2, secP224K1FieldElement4.b, a2);
            iArr2 = a2;
            iArr3 = a;
        }
        boolean i2 = secP224K1FieldElement6.i();
        if (i2) {
            iArr = secP224K1FieldElement.b;
            iArr4 = secP224K1FieldElement2.b;
            iArr5 = iArr;
        } else {
            SecP224K1Field.d(secP224K1FieldElement6.b, a3);
            SecP224K1Field.b(a3, secP224K1FieldElement.b, b);
            SecP224K1Field.b(a3, secP224K1FieldElement6.b, a3);
            SecP224K1Field.b(a3, secP224K1FieldElement2.b, a3);
            iArr4 = a3;
            iArr5 = b;
        }
        iArr = Nat224.a();
        SecP224K1Field.d(iArr5, iArr3, iArr);
        SecP224K1Field.d(iArr4, iArr2, a);
        if (!Nat224.b(iArr)) {
            SecP224K1Field.d(iArr, a2);
            iArr3 = Nat224.a();
            SecP224K1Field.b(a2, iArr, iArr3);
            SecP224K1Field.b(a2, iArr5, a2);
            SecP224K1Field.b(iArr3, iArr3);
            Nat224.c(iArr4, iArr3, b);
            SecP224K1Field.a(Nat224.b(a2, a2, iArr3), iArr3);
            ECFieldElement secP224K1FieldElement7 = new SecP224K1FieldElement(a3);
            SecP224K1Field.d(a, secP224K1FieldElement7.b);
            SecP224K1Field.d(secP224K1FieldElement7.b, iArr3, secP224K1FieldElement7.b);
            ECFieldElement secP224K1FieldElement8 = new SecP224K1FieldElement(iArr3);
            SecP224K1Field.d(a2, secP224K1FieldElement7.b, secP224K1FieldElement8.b);
            SecP224K1Field.c(secP224K1FieldElement8.b, a, b);
            SecP224K1Field.c(b, secP224K1FieldElement8.b);
            secP224K1FieldElement = new SecP224K1FieldElement(iArr);
            if (!i) {
                SecP224K1Field.b(secP224K1FieldElement.b, secP224K1FieldElement5.b, secP224K1FieldElement.b);
            }
            if (!i2) {
                SecP224K1Field.b(secP224K1FieldElement.b, secP224K1FieldElement6.b, secP224K1FieldElement.b);
            }
            return new SecP224K1Point(d, secP224K1FieldElement7, secP224K1FieldElement8, new ECFieldElement[]{secP224K1FieldElement}, this.f);
        } else if (Nat224.b(a)) {
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
        SecP224K1FieldElement secP224K1FieldElement = (SecP224K1FieldElement) this.d;
        if (secP224K1FieldElement.j()) {
            return d.e();
        }
        SecP224K1FieldElement secP224K1FieldElement2 = (SecP224K1FieldElement) this.c;
        SecP224K1FieldElement secP224K1FieldElement3 = (SecP224K1FieldElement) this.e[0];
        int[] a = Nat224.a();
        SecP224K1Field.d(secP224K1FieldElement.b, a);
        int[] a2 = Nat224.a();
        SecP224K1Field.d(a, a2);
        int[] a3 = Nat224.a();
        SecP224K1Field.d(secP224K1FieldElement2.b, a3);
        SecP224K1Field.a(Nat224.b(a3, a3, a3), a3);
        SecP224K1Field.b(a, secP224K1FieldElement2.b, a);
        SecP224K1Field.a(Nat.c(7, a, 2, 0), a);
        int[] a4 = Nat224.a();
        SecP224K1Field.a(Nat.a(7, a2, 3, 0, a4), a4);
        ECFieldElement secP224K1FieldElement4 = new SecP224K1FieldElement(a2);
        SecP224K1Field.d(a3, secP224K1FieldElement4.b);
        SecP224K1Field.d(secP224K1FieldElement4.b, a, secP224K1FieldElement4.b);
        SecP224K1Field.d(secP224K1FieldElement4.b, a, secP224K1FieldElement4.b);
        ECFieldElement secP224K1FieldElement5 = new SecP224K1FieldElement(a);
        SecP224K1Field.d(a, secP224K1FieldElement4.b, secP224K1FieldElement5.b);
        SecP224K1Field.b(secP224K1FieldElement5.b, a3, secP224K1FieldElement5.b);
        SecP224K1Field.d(secP224K1FieldElement5.b, a4, secP224K1FieldElement5.b);
        SecP224K1FieldElement secP224K1FieldElement6 = new SecP224K1FieldElement(a3);
        SecP224K1Field.e(secP224K1FieldElement.b, secP224K1FieldElement6.b);
        if (!secP224K1FieldElement3.i()) {
            SecP224K1Field.b(secP224K1FieldElement6.b, secP224K1FieldElement3.b, secP224K1FieldElement6.b);
        }
        return new SecP224K1Point(d, secP224K1FieldElement4, secP224K1FieldElement5, new ECFieldElement[]{secP224K1FieldElement6}, this.f);
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
        return q() ? this : new SecP224K1Point(this.b, this.c, this.d.d(), this.e, this.f);
    }
}
