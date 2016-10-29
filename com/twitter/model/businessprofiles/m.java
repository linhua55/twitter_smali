package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class m {
    public static final d<m, o> a;
    public final long b;
    public final x c;
    public final i d;
    public final KeyEngagementType e;
    public final e f;
    public final t g;
    public final q h;

    static {
        a = new p(null);
    }

    public m(o oVar) {
        this.b = oVar.a;
        this.c = oVar.b;
        this.d = oVar.c;
        this.e = oVar.d;
        this.f = oVar.e;
        this.g = oVar.f;
        this.h = oVar.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (this.b == mVar.b && ObjectUtils.a(this.c, mVar.c) && ObjectUtils.a(this.d, mVar.d) && ObjectUtils.a(this.e, mVar.e) && ObjectUtils.a(this.f, mVar.f) && ObjectUtils.a(this.g, mVar.g) && ObjectUtils.a(this.h, mVar.h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((ObjectUtils.a(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f)) * 31) + ObjectUtils.b(this.g)) * 31) + ObjectUtils.b(this.h);
    }
}
