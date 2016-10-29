package org.spongycastle.math.ec.custom.djb;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat256;

/* compiled from: Twttr */
public class Curve25519Point extends AbstractFp {
    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
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

    Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.f = z;
    }

    protected ECPoint e() {
        return new Curve25519Point(null, g(), h());
    }

    public ECFieldElement a(int i) {
        if (i == 1) {
            return x();
        }
        return super.a(i);
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
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.c;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.d;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.e[0];
        Curve25519FieldElement curve25519FieldElement4 = (Curve25519FieldElement) eCPoint.i();
        Curve25519FieldElement curve25519FieldElement5 = (Curve25519FieldElement) eCPoint.j();
        Curve25519FieldElement curve25519FieldElement6 = (Curve25519FieldElement) eCPoint.a(0);
        int[] b = Nat256.b();
        int[] a = Nat256.a();
        int[] a2 = Nat256.a();
        int[] a3 = Nat256.a();
        boolean i = curve25519FieldElement3.i();
        if (i) {
            iArr = curve25519FieldElement4.b;
            iArr2 = curve25519FieldElement5.b;
            iArr3 = iArr;
        } else {
            Curve25519Field.d(curve25519FieldElement3.b, a2);
            Curve25519Field.b(a2, curve25519FieldElement4.b, a);
            Curve25519Field.b(a2, curve25519FieldElement3.b, a2);
            Curve25519Field.b(a2, curve25519FieldElement5.b, a2);
            iArr2 = a2;
            iArr3 = a;
        }
        boolean i2 = curve25519FieldElement6.i();
        if (i2) {
            iArr = curve25519FieldElement.b;
            iArr4 = curve25519FieldElement2.b;
            iArr5 = iArr;
        } else {
            Curve25519Field.d(curve25519FieldElement6.b, a3);
            Curve25519Field.b(a3, curve25519FieldElement.b, b);
            Curve25519Field.b(a3, curve25519FieldElement6.b, a3);
            Curve25519Field.b(a3, curve25519FieldElement2.b, a3);
            iArr4 = a3;
            iArr5 = b;
        }
        iArr = Nat256.a();
        Curve25519Field.d(iArr5, iArr3, iArr);
        Curve25519Field.d(iArr4, iArr2, a);
        if (!Nat256.b(iArr)) {
            iArr3 = Nat256.a();
            Curve25519Field.d(iArr, iArr3);
            int[] a4 = Nat256.a();
            Curve25519Field.b(iArr3, iArr, a4);
            Curve25519Field.b(iArr3, iArr5, a2);
            Curve25519Field.b(a4, a4);
            Nat256.c(iArr4, a4, b);
            Curve25519Field.a(Nat256.b(a2, a2, a4), a4);
            ECFieldElement curve25519FieldElement7 = new Curve25519FieldElement(a3);
            Curve25519Field.d(a, curve25519FieldElement7.b);
            Curve25519Field.d(curve25519FieldElement7.b, a4, curve25519FieldElement7.b);
            ECFieldElement curve25519FieldElement8 = new Curve25519FieldElement(a4);
            Curve25519Field.d(a2, curve25519FieldElement7.b, curve25519FieldElement8.b);
            Curve25519Field.c(curve25519FieldElement8.b, a, b);
            Curve25519Field.c(b, curve25519FieldElement8.b);
            Curve25519FieldElement curve25519FieldElement9 = new Curve25519FieldElement(iArr);
            if (!i) {
                Curve25519Field.b(curve25519FieldElement9.b, curve25519FieldElement3.b, curve25519FieldElement9.b);
            }
            if (!i2) {
                Curve25519Field.b(curve25519FieldElement9.b, curve25519FieldElement6.b, curve25519FieldElement9.b);
            }
            iArr4 = (i && i2) ? iArr3 : null;
            curve25519FieldElement = a(curve25519FieldElement9, iArr4);
            return new Curve25519Point(d, curve25519FieldElement7, curve25519FieldElement8, new ECFieldElement[]{curve25519FieldElement9, curve25519FieldElement}, this.f);
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
        if (this.d.j()) {
            return d.e();
        }
        return b(true);
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
        return !this.d.j() ? b(false).b(eCPoint) : eCPoint;
    }

    public ECPoint w() {
        return (q() || this.d.j()) ? this : b(false).b((ECPoint) this);
    }

    public ECPoint u() {
        return q() ? this : new Curve25519Point(d(), this.c, this.d.d(), this.e, this.f);
    }

    protected Curve25519FieldElement a(Curve25519FieldElement curve25519FieldElement, int[] iArr) {
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) d().g();
        if (curve25519FieldElement.i()) {
            return curve25519FieldElement2;
        }
        Curve25519FieldElement curve25519FieldElement3 = new Curve25519FieldElement();
        if (iArr == null) {
            iArr = curve25519FieldElement3.b;
            Curve25519Field.d(curve25519FieldElement.b, iArr);
        }
        Curve25519Field.d(iArr, curve25519FieldElement3.b);
        Curve25519Field.b(curve25519FieldElement3.b, curve25519FieldElement2.b, curve25519FieldElement3.b);
        return curve25519FieldElement3;
    }

    protected Curve25519FieldElement x() {
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.e[1];
        if (curve25519FieldElement != null) {
            return curve25519FieldElement;
        }
        ECFieldElement[] eCFieldElementArr = this.e;
        curve25519FieldElement = a((Curve25519FieldElement) this.e[0], null);
        eCFieldElementArr[1] = curve25519FieldElement;
        return curve25519FieldElement;
    }

    protected Curve25519Point b(boolean z) {
        ECFieldElement eCFieldElement;
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.c;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.d;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.e[0];
        Curve25519FieldElement x = x();
        int[] a = Nat256.a();
        Curve25519Field.d(curve25519FieldElement.b, a);
        Curve25519Field.a(Nat256.b(a, a, a) + Nat256.a(x.b, a), a);
        int[] a2 = Nat256.a();
        Curve25519Field.e(curve25519FieldElement2.b, a2);
        int[] a3 = Nat256.a();
        Curve25519Field.b(a2, curve25519FieldElement2.b, a3);
        int[] a4 = Nat256.a();
        Curve25519Field.b(a3, curve25519FieldElement.b, a4);
        Curve25519Field.e(a4, a4);
        int[] a5 = Nat256.a();
        Curve25519Field.d(a3, a5);
        Curve25519Field.e(a5, a5);
        ECFieldElement curve25519FieldElement4 = new Curve25519FieldElement(a3);
        Curve25519Field.d(a, curve25519FieldElement4.b);
        Curve25519Field.d(curve25519FieldElement4.b, a4, curve25519FieldElement4.b);
        Curve25519Field.d(curve25519FieldElement4.b, a4, curve25519FieldElement4.b);
        ECFieldElement curve25519FieldElement5 = new Curve25519FieldElement(a4);
        Curve25519Field.d(a4, curve25519FieldElement4.b, curve25519FieldElement5.b);
        Curve25519Field.b(curve25519FieldElement5.b, a, curve25519FieldElement5.b);
        Curve25519Field.d(curve25519FieldElement5.b, a5, curve25519FieldElement5.b);
        Curve25519FieldElement curve25519FieldElement6 = new Curve25519FieldElement(a2);
        if (!Nat256.a(curve25519FieldElement3.b)) {
            Curve25519Field.b(curve25519FieldElement6.b, curve25519FieldElement3.b, curve25519FieldElement6.b);
        }
        if (z) {
            ECFieldElement curve25519FieldElement7 = new Curve25519FieldElement(a5);
            Curve25519Field.b(curve25519FieldElement7.b, x.b, curve25519FieldElement7.b);
            Curve25519Field.e(curve25519FieldElement7.b, curve25519FieldElement7.b);
            eCFieldElement = curve25519FieldElement7;
        } else {
            eCFieldElement = null;
        }
        return new Curve25519Point(d(), curve25519FieldElement4, curve25519FieldElement5, new ECFieldElement[]{curve25519FieldElement6, eCFieldElement}, this.f);
    }
}
