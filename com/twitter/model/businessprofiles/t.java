package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class t {
    public static final d<t, v> a;
    public final al b;
    public final al c;
    public final al d;
    public final al e;
    public final al f;

    static {
        a = new w();
    }

    public t(v vVar) {
        this.b = vVar.a;
        this.c = vVar.b;
        this.d = vVar.c;
        this.e = vVar.d;
        this.f = vVar.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (ObjectUtils.a(this.b, tVar.b) && ObjectUtils.a(this.c, tVar.c) && ObjectUtils.a(this.d, tVar.d) && ObjectUtils.a(this.e, tVar.e) && ObjectUtils.a(this.f, tVar.f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f);
    }
}
