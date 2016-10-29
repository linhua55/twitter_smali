package com.twitter.model.people;

import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class l {
    public static final n<l> a;
    public static final l b;
    public final ModuleTitle c;
    public final ModuleTitle d;
    public final aj e;
    public final h f;

    static {
        a = new o();
        b = (l) new n().q();
    }

    private l(n nVar) {
        this.c = (ModuleTitle) e.b(nVar.a, ModuleTitle.b);
        this.d = (ModuleTitle) e.b(nVar.b, ModuleTitle.b);
        this.e = (aj) e.b(nVar.c, aj.b);
        this.f = (h) e.b(nVar.d, h.b);
    }
}
