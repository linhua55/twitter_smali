package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat256;

/* compiled from: Twttr */
public class SecP256K1Point extends AbstractFp {
    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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

    SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f = z;
    }

    protected ECPoint e() {
        return new SecP256K1Point(null, g(), h());
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
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.c;
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.d;
        SecP256K1FieldElement secP256K1FieldElement3 = (SecP256K1FieldElement) eCPoint.i();
        SecP256K1FieldElement secP256K1FieldElement4 = (SecP256K1FieldElement) eCPoint.j();
        SecP256K1FieldElement secP256K1FieldElement5 = (SecP256K1FieldElement) this.e[0];
        SecP256K1FieldElement secP256K1FieldElement6 = (SecP256K1FieldElement) eCPoint.a(0);
        int[] b = Nat256.b();
        int[] a = Nat256.a();
        int[] a2 = Nat256.a();
        int[] a3 = Nat256.a();
        boolean i = secP256K1FieldElement5.i();
        if (i) {
            iArr = secP256K1FieldElement3.b;
            iArr2 = secP256K1FieldElement4.b;
            iArr3 = iArr;
        } else {
            SecP256K1Field.d(secP256K1FieldElement5.b, a2);
            SecP256K1Field.b(a2, secP256K1FieldElement3.b, a);
            SecP256K1Field.b(a2, secP256K1FieldElement5.b, a2);
            SecP256K1Field.b(a2, secP256K1FieldElement4.b, a2);
            iArr2 = a2;
            iArr3 = a;
        }
        boolean i2 = secP256K1FieldElement6.i();
        if (i2) {
            iArr = secP256K1FieldElement.b;
            iArr4 = secP256K1FieldElement2.b;
            iArr5 = iArr;
        } else {
            SecP256K1Field.d(secP256K1FieldElement6.b, a3);
            SecP256K1Field.b(a3, secP256K1FieldElement.b, b);
            SecP256K1Field.b(a3, secP256K1FieldElement6.b, a3);
            SecP256K1Field.b(a3, secP256K1FieldElement2.b, a3);
            iArr4 = a3;
            iArr5 = b;
        }
        iArr = Nat256.a();
        SecP256K1Field.d(iArr5, iArr3, iArr);
        SecP256K1Field.d(iArr4, iArr2, a);
        if (!Nat256.b(iArr)) {
            SecP256K1Field.d(iArr, a2);
            iArr3 = Nat256.a();
            SecP256K1Field.b(a2, iArr, iArr3);
            SecP256K1Field.b(a2, iArr5, a2);
            SecP256K1Field.b(iArr3, iArr3);
            Nat256.c(iArr4, iArr3, b);
            SecP256K1Field.a(Nat256.b(a2, a2, iArr3), iArr3);
            ECFieldElement secP256K1FieldElement7 = new SecP256K1FieldElement(a3);
            SecP256K1Field.d(a, secP256K1FieldElement7.b);
            SecP256K1Field.d(secP256K1FieldElement7.b, iArr3, secP256K1FieldElement7.b);
            ECFieldElement secP256K1FieldElement8 = new SecP256K1FieldElement(iArr3);
            SecP256K1Field.d(a2, secP256K1FieldElement7.b, secP256K1FieldElement8.b);
            SecP256K1Field.c(secP256K1FieldElement8.b, a, b);
            SecP256K1Field.c(b, secP256K1FieldElement8.b);
            secP256K1FieldElement = new SecP256K1FieldElement(iArr);
            if (!i) {
                SecP256K1Field.b(secP256K1FieldElement.b, secP256K1FieldElement5.b, secP256K1FieldElement.b);
            }
            if (!i2) {
                SecP256K1Field.b(secP256K1FieldElement.b, secP256K1FieldElement6.b, secP256K1FieldElement.b);
            }
            return new SecP256K1Point(d, secP256K1FieldElement7, secP256K1FieldElement8, new ECFieldElement[]{secP256K1FieldElement}, this.f);
        } else if (Nat256.b(a)) {
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
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.d;
        if (secP256K1FieldElement.j()) {
            return d.e();
        }
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.c;
        SecP256K1FieldElement secP256K1FieldElement3 = (SecP256K1FieldElement) this.e[0];
        int[] a = Nat256.a();
        SecP256K1Field.d(secP256K1FieldElement.b, a);
        int[] a2 = Nat256.a();
        SecP256K1Field.d(a, a2);
        int[] a3 = Nat256.a();
        SecP256K1Field.d(secP256K1FieldElement2.b, a3);
        SecP256K1Field.a(Nat256.b(a3, a3, a3), a3);
        SecP256K1Field.b(a, secP256K1FieldElement2.b, a);
        SecP256K1Field.a(Nat.c(8, a, 2, 0), a);
        int[] a4 = Nat256.a();
        SecP256K1Field.a(Nat.a(8, a2, 3, 0, a4), a4);
        ECFieldElement secP256K1FieldElement4 = new SecP256K1FieldElement(a2);
        SecP256K1Field.d(a3, secP256K1FieldElement4.b);
        SecP256K1Field.d(secP256K1FieldElement4.b, a, secP256K1FieldElement4.b);
        SecP256K1Field.d(secP256K1FieldElement4.b, a, secP256K1FieldElement4.b);
        ECFieldElement secP256K1FieldElement5 = new SecP256K1FieldElement(a);
        SecP256K1Field.d(a, secP256K1FieldElement4.b, secP256K1FieldElement5.b);
        SecP256K1Field.b(secP256K1FieldElement5.b, a3, secP256K1FieldElement5.b);
        SecP256K1Field.d(secP256K1FieldElement5.b, a4, secP256K1FieldElement5.b);
        SecP256K1FieldElement secP256K1FieldElement6 = new SecP256K1FieldElement(a3);
        SecP256K1Field.e(secP256K1FieldElement.b, secP256K1FieldElement6.b);
        if (!secP256K1FieldElement3.i()) {
            SecP256K1Field.b(secP256K1FieldElement6.b, secP256K1FieldElement3.b, secP256K1FieldElement6.b);
        }
        return new SecP256K1Point(d, secP256K1FieldElement4, secP256K1FieldElement5, new ECFieldElement[]{secP256K1FieldElement6}, this.f);
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
        return q() ? this : new SecP256K1Point(this.b, this.c, this.d.d(), this.e, this.f);
    }
}
