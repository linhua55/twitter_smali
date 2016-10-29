package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class SecP192R1Curve extends AbstractFp {
    public static final BigInteger i;
    protected SecP192R1Point j;

    static {
        i = new BigInteger(1, Hex.a("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"));
    }

    public SecP192R1Curve() {
        super(i);
        this.j = new SecP192R1Point(this, null, null);
        this.b = a(new BigInteger(1, Hex.a("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC")));
        this.c = a(new BigInteger(1, Hex.a("64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1")));
        this.d = new BigInteger(1, Hex.a("FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22831"));
        this.e = BigInteger.valueOf(1);
        this.f = 2;
    }

    protected ECCurve c() {
        return new SecP192R1Curve();
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
        return new SecP192R1FieldElement(bigInteger);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new SecP192R1Point(this, eCFieldElement, eCFieldElement2, z);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new SecP192R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    public ECPoint e() {
        return this.j;
    }
}
