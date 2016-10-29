package org.spongycastle.math.ec;

import org.spongycastle.math.ec.ECPoint.F2m;

/* compiled from: Twttr */
public class WTauNafPreCompInfo implements PreCompInfo {
    protected F2m[] a;

    public WTauNafPreCompInfo() {
        this.a = null;
    }

    public F2m[] a() {
        return this.a;
    }

    public void a(F2m[] f2mArr) {
        this.a = f2mArr;
    }
}
