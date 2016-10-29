package com.twitter.model.businessprofiles;

import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import java.util.List;
import java.util.TimeZone;

/* compiled from: Twttr */
public class i {
    public static final d<i, k> a;
    public static final List<Integer> b;
    public final TimeZone c;
    public final List<ad> d;
    public final List<ad> e;
    public final List<ad> f;
    public final List<ad> g;
    public final List<ad> h;
    public final List<ad> i;
    public final List<ad> j;

    static {
        a = new l();
        b = ImmutableList.a(new Integer[]{Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5), Integer.valueOf(6), Integer.valueOf(7), Integer.valueOf(1)});
    }

    public i(k kVar) {
        this.c = kVar.a;
        this.d = n.a(kVar.b);
        this.e = n.a(kVar.c);
        this.f = n.a(kVar.d);
        this.g = n.a(kVar.e);
        this.h = n.a(kVar.f);
        this.i = n.a(kVar.g);
        this.j = n.a(kVar.h);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (ObjectUtils.a(this.c, iVar.c) && ObjectUtils.a(this.d, iVar.d) && ObjectUtils.a(this.e, iVar.e) && ObjectUtils.a(this.f, iVar.f) && ObjectUtils.a(this.g, iVar.g) && ObjectUtils.a(this.h, iVar.h) && ObjectUtils.a(this.i, iVar.i) && ObjectUtils.a(this.j, iVar.j)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((ObjectUtils.b(this.c) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.a(this.e)) * 31) + ObjectUtils.a(this.f)) * 31) + ObjectUtils.a(this.g)) * 31) + ObjectUtils.a(this.h)) * 31) + ObjectUtils.a(this.i)) * 31) + ObjectUtils.a(this.j);
    }
}
