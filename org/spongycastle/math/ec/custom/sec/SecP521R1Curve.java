package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class SecP521R1Curve extends AbstractFp {
    public static final BigInteger i;
    protected SecP521R1Point j;

    static {
        i = new BigInteger(1, Hex.a("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));
    }

    public SecP521R1Curve() {
        super(i);
        this.j = new SecP521R1Point(this, null, null);
        this.b = a(new BigInteger(1, Hex.a("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.c = a(new BigInteger(1, Hex.a("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00")));
        this.d = new BigInteger(1, Hex.a("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"));
        this.e = BigInteger.valueOf(1);
        this.f = 2;
    }

    protected ECCurve c() {
        return new SecP521R1Curve();
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
        return new SecP521R1FieldElement(bigInteger);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP521R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP521R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    public ECPoint e() {
        return this.j;
    }
}
