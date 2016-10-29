package org.spongycastle.math.ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.encoders.Hex;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class Curve25519 extends AbstractFp {
    public static final BigInteger i;
    protected Curve25519Point j;

    static {
        i = Nat256.c(Curve25519Field.a);
    }

    public Curve25519() {
        super(i);
        this.j = new Curve25519Point(this, null, null);
        this.b = a(new BigInteger(1, Hex.a("2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144")));
        this.c = a(new BigInteger(1, Hex.a("7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864")));
        this.d = new BigInteger(1, Hex.a("1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"));
        this.e = BigInteger.valueOf(8);
        this.f = 4;
    }

    protected ECCurve c() {
        return new Curve25519();
    }

    public boolean a(int i) {
        switch (i) {
            case p.View_theme /*4*/:
                return true;
            default:
                return false;
        }
    }

    public int a() {
        return i.bitLength();
    }

    public ECFieldElement a(BigInteger bigInteger) {
        return new Curve25519FieldElement(bigInteger);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        return new Curve25519Point(this, eCFieldElement, eCFieldElement2, z);
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        return new Curve25519Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
    }

    public ECPoint e() {
        return this.j;
    }
}
