package org.spongycastle.math.ec;

/* compiled from: Twttr */
public class ScaleXPointMap implements ECPointMap {
    protected final ECFieldElement a;

    public ScaleXPointMap(ECFieldElement eCFieldElement) {
        this.a = eCFieldElement;
    }

    public ECPoint a(ECPoint eCPoint) {
        return eCPoint.b(this.a);
    }
}
