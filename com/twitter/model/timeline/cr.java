package com.twitter.model.timeline;

import com.twitter.model.core.TwitterSocialProof;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.d;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class cr {
    public static final d<cr, cs> a;
    public final int b;
    public final String c;
    public final String d;
    public final aj e;
    public final Map<String, TwitterSocialProof> f;
    public final Map<String, aj> g;
    public final List<Long> h;
    public final List<Long> i;

    static {
        a = new ct();
    }

    private cr(cs csVar) {
        this.b = csVar.a;
        this.c = csVar.b;
        this.d = csVar.c;
        this.e = csVar.d;
        this.f = e.a(csVar.e);
        this.g = e.a(csVar.f);
        this.h = e.a(csVar.g);
        this.i = e.a(csVar.h);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof cr) && a((cr) obj));
    }

    public boolean a(cr crVar) {
        return this == crVar || (crVar != null && this.b == crVar.b && ObjectUtils.a(this.c, crVar.c) && ObjectUtils.a(this.d, crVar.d) && ObjectUtils.a(this.h, crVar.h) && ObjectUtils.a(this.i, crVar.i) && ObjectUtils.a(this.f, crVar.f));
    }

    public int hashCode() {
        return (((((((((this.b * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.a(this.h)) * 31) + ObjectUtils.a(this.i)) * 31) + ObjectUtils.b(this.f);
    }
}
