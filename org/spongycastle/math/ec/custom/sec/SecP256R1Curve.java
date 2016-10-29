package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class SecP256R1Curve extends AbstractFp {
    public static final BigInteger i;
    protected SecP256R1Point j;

    static {
        i = new BigInteger(1, Hex.a("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));
    }

    public SecP256R1Curve() {
        super(i);
        this.j = new SecP256R1Point(this, null, null);
        this.b = a(new BigInteger(1, Hex.a("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC")));
        this.c = a(new BigInteger(1, Hex.a("5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B")));
        this.d = new BigInteger(1, Hex.a("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"));
        this.e = BigInteger.valueOf(1);
        this.f = 2;
    }

    protected ECCurve c() {
        return new SecP256R1Curve();
    }

    public boolean a(int i) {
        switch (i) {
            case p.View_paddingStart /*2*/:
                return true;
            default:
                return false;
        }
    }

    public int a() {
        return i.bitLength();
    }

    public ECFieldElement a(BigInteger bigInteger) {
        return new SecP256R1FieldElement(bigInteger);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP256R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP256R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    public ECPoint e() {
        return this.j;
    }
}
