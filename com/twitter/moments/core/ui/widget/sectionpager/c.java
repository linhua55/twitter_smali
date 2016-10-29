package com.twitter.moments.core.ui.widget.sectionpager;

import com.twitter.util.object.g;
import java.util.List;

/* compiled from: Twttr */
public class c {
    static final /* synthetic */ boolean a;
    private final List<b> b;
    private final g<d> c;
    private d d;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    public c(List<b> list, g<d> gVar) {
        this.b = list;
        this.c = gVar;
        for (b a : list) {
            a.a(this);
        }
    }

    public d a() {
        if (this.d == null) {
            this.d = (d) this.c.b();
        }
        return this.d;
    }

    public d b() {
        return this.d;
    }

    public void c() {
        if (a || this.d != null) {
            this.d.d();
            return;
        }
        throw new AssertionError();
    }

    public void d() {
        if (a || this.d != null) {
            this.d.c();
            return;
        }
        throw new AssertionError();
    }

    public void e() {
        if (this.d != null) {
            this.d.a();
            this.d = null;
        }
    }

    public List<b> f() {
        return this.b;
    }
}
