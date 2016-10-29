package com.twitter.model.dms;

import com.twitter.model.core.cr;
import com.twitter.model.core.cu;
import com.twitter.util.aj;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
public abstract class c {
    public static final n<c> a;
    public static final int[] b;
    private final String c;
    private final String d;
    private final String e;
    private final int f;
    private final int g;

    public abstract int a();

    static {
        a = s.a(l.a(x.class, new aa()), l.a(ae.class, new ag()), l.a(u.class, new w()), l.a(p.class, new r()), l.a(ah.class, new aj()));
        b = new int[]{1, 2, 3, 4};
    }

    protected c(d dVar) {
        this.c = dVar.a;
        this.d = d.a(dVar);
        this.e = d.b(dVar);
        this.f = d.c(dVar);
        this.g = d.d(dVar);
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public String d() {
        return this.e;
    }

    public int e() {
        return this.f;
    }

    public int f() {
        return this.g;
    }

    public boolean g() {
        return e() != f();
    }

    public boolean h() {
        return aj.b(b()) && aj.b(c()) && aj.b(d());
    }

    public cr i() {
        if (h()) {
            return (cr) ((cu) ((cu) ((cu) new cu().e(b())).f(d())).g(c())).q();
        }
        return null;
    }
}
