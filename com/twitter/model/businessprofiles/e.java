package com.twitter.model.businessprofiles;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import defpackage.cgl;

/* compiled from: Twttr */
public class e {
    public static final d<e, h> a;
    public final String b;
    public final String c;
    public final String d;
    public final cgl e;

    static {
        a = new g(null);
    }

    public e(h hVar) {
        this.b = com.twitter.util.object.e.b(hVar.a);
        this.c = hVar.b;
        this.d = hVar.c;
        this.e = hVar.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (ObjectUtils.a(this.b, eVar.b) && ObjectUtils.a(this.c, eVar.c) && ObjectUtils.a(this.d, eVar.d) && ObjectUtils.a(this.e, eVar.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e);
    }
}
