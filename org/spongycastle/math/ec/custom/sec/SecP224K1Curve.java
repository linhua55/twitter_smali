package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class SecP224K1Curve extends AbstractFp {
    public static final BigInteger i;
    protected SecP224K1Point j;

    static {
        i = new BigInteger(1, Hex.a("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"));
    }

    public SecP224K1Curve() {
        super(i);
        this.j = new SecP224K1Point(this, null, null);
        this.b = a(ECConstants.c);
        this.c = a(BigInteger.valueOf(5));
        this.d = new BigInteger(1, Hex.a("010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"));
        this.e = BigInteger.valueOf(1);
        this.f = 2;
    }

    protected ECCurve c() {
        return new SecP224K1Curve();
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
        return new SecP224K1FieldElement(bigInteger);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP224K1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP224K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    public ECPoint e() {
        return this.j;
    }
}
