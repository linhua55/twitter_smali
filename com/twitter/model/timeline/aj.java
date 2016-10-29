package com.twitter.model.timeline;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class aj {
    public static final d<aj, al> a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    static {
        a = new am();
    }

    private aj(al alVar) {
        this.b = alVar.a;
        this.c = alVar.b;
        this.d = alVar.c;
        this.e = alVar.d;
        this.f = alVar.e;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof aj) && a((aj) obj));
    }

    public boolean a(aj ajVar) {
        return this == ajVar || (ajVar != null && ObjectUtils.a(this.b, ajVar.b) && ObjectUtils.a(this.c, ajVar.c) && ObjectUtils.a(this.d, ajVar.d) && ObjectUtils.a(this.e, ajVar.e) && ObjectUtils.a(this.f, ajVar.f));
    }

    public int hashCode() {
        return (((((((ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e)) * 31) + ObjectUtils.b(this.f);
    }
}
