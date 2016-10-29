package org.spongycastle.math.ec;

/* compiled from: Twttr */
public class WNafPreCompInfo implements PreCompInfo {
    protected ECPoint[] a;
    protected ECPoint[] b;
    protected ECPoint c;

    public WNafPreCompInfo() {
        this.a = null;
        this.b = null;
        this.c = null;
    }

    public ECPoint[] a() {
        return this.a;
    }

    public void a(ECPoint[] eCPointArr) {
        this.a = eCPointArr;
    }

    public ECPoint[] b() {
        return this.b;
    }

    public void b(ECPoint[] eCPointArr) {
        this.b = eCPointArr;
    }

    public ECPoint c() {
        return this.c;
    }

    public void a(ECPoint eCPoint) {
        this.c = eCPoint;
    }
}
