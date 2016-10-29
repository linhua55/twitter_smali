package com.twitter.model.core;

import com.twitter.model.search.a;
import com.twitter.model.search.c;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.Comparator;

/* compiled from: Twttr */
public abstract class e {
    public static final n<e> d;
    public static final Comparator<e> e;
    public final int f;
    public int g;
    public int h;

    public abstract f b();

    static {
        d = s.a(l.a(MediaEntity.class, new y()), l.a(cr.class, new cv()), l.a(ap.class, new ar()), l.a(q.class, new s()), l.a(b.class, new d()), l.a(a.class, new c()));
        e = h.a;
    }

    protected e(f fVar) {
        this.g = -1;
        this.h = -1;
        this.f = fVar.b;
        this.g = fVar.c;
        this.h = fVar.d;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof e) && a((e) obj));
    }

    public boolean a(e eVar) {
        return this == eVar || (eVar != null && this.g == eVar.g && this.h == eVar.h);
    }

    public int hashCode() {
        return (this.g * 31) + this.h;
    }

    public void a(int i) {
        this.g += i;
        this.h += i;
    }
}
