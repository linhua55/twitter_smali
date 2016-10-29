package org.spongycastle.math.ec;

/* compiled from: Twttr */
public class FixedPointPreCompInfo implements PreCompInfo {
    protected ECPoint[] a;
    protected int b;

    public FixedPointPreCompInfo() {
        this.a = null;
        this.b = -1;
    }

    public ECPoint[] a() {
        return this.a;
    }

    public void a(ECPoint[] eCPointArr) {
        this.a = eCPointArr;
    }

    public int b() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }
}
