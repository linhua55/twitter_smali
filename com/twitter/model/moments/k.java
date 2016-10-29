package com.twitter.model.moments;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class k {
    public static final n<k> a;
    public static final k b;
    public final g c;
    public final g d;
    public final g e;
    public final g f;
    public final boolean g;

    static {
        a = new n();
        b = (k) new m().q();
    }

    public k(m mVar) {
        g gVar = null;
        this.c = mVar.a == null ? null : (g) mVar.a.q();
        this.d = mVar.b == null ? null : (g) mVar.b.q();
        this.e = mVar.c == null ? null : (g) mVar.c.q();
        if (mVar.d != null) {
            gVar = (g) mVar.d.q();
        }
        this.f = gVar;
        this.g = mVar.f;
    }

    private k(g gVar, g gVar2, g gVar3, g gVar4, boolean z) {
        this.c = gVar;
        this.d = gVar2;
        this.e = gVar3;
        this.f = gVar4;
        this.g = z;
    }

    public static g a(k kVar, float f) {
        if (kVar == null || f <= 0.0f || Float.isInfinite(f) || Float.isNaN(f)) {
            return null;
        }
        if (f == 1.0f) {
            return kVar.c;
        }
        if (f > 1.0f) {
            return a(f, kVar.f, kVar.c);
        }
        return a(f, kVar.e, kVar.d, kVar.c);
    }

    private static g a(float f, g... gVarArr) {
        float f2 = Float.MAX_VALUE;
        g gVar = null;
        int length = gVarArr.length;
        int i = 0;
        while (i < length) {
            float f3;
            g gVar2 = gVarArr[i];
            if (gVar2 != null) {
                float abs = Math.abs(gVar2.b() - f);
                if (abs < f2) {
                    f3 = abs;
                    i++;
                    f2 = f3;
                    gVar = gVar2;
                }
            }
            gVar2 = gVar;
            f3 = f2;
            i++;
            f2 = f3;
            gVar = gVar2;
        }
        return gVar;
    }

    public static g a(k kVar) {
        return a(kVar, 1.0f);
    }
}
