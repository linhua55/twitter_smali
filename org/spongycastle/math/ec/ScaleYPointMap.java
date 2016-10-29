package org.spongycastle.math.ec;

/* compiled from: Twttr */
public class ScaleYPointMap implements ECPointMap {
    protected final ECFieldElement a;

    public ECPoint a(ECPoint eCPoint) {
        return eCPoint.c(this.a);
    }
}
