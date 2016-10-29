package com.twitter.model.drafts;

import com.twitter.model.core.as;
import com.twitter.model.geo.g;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import defpackage.bbn;
import defpackage.cgf;
import defpackage.cni;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public class d {
    public static final com.twitter.util.serialization.d<d, e> a;
    public final long b;
    public final String c;
    public final List<DraftAttachment> d;
    public final long e;
    public final boolean f;
    public final g g;
    public final cni h;
    public final as i;
    public final String j;
    public final cgf k;
    private long l;
    private List<Long> m;

    static {
        a = new f();
    }

    d(e eVar) {
        this.b = eVar.a;
        this.c = eVar.b;
        this.d = n.a(eVar.c);
        this.e = eVar.d;
        this.f = eVar.l;
        this.g = eVar.e;
        this.h = eVar.h;
        this.i = eVar.i;
        this.j = eVar.j;
        this.k = eVar.k;
        a(eVar.g, eVar.f);
    }

    public long a() {
        return this.l;
    }

    public List<Long> b() {
        return this.m;
    }

    public synchronized d a(List<Long> list, long j) {
        if (CollectionUtils.b((Collection) list) || this.d.size() == list.size()) {
            this.m = n.a((List) list);
            this.l = j;
        } else {
            bbn.a(new IllegalArgumentException("The lists of media and IDs should have equal size"));
            this.m = null;
            this.l = 0;
        }
        return this;
    }

    public void c() {
        j.c();
        a(null, 0);
        for (DraftAttachment a : this.d) {
            a.a(null);
        }
    }
}
