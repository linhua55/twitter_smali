package com.twitter.android.communities.header;

import com.twitter.android.communities.ak;
import com.twitter.android.communities.c;
import com.twitter.android.communities.g;
import com.twitter.android.communities.o;
import com.twitter.app.common.di.InjectionScope;
import cym;
import dbg;

/* compiled from: Twttr */
public class b implements a {
    private static final String a;
    private final ak b;
    private final dbg c;
    private final g d;
    private final c e;
    private k f;

    static {
        a = b.class.getSimpleName();
    }

    public b(g gVar, ak akVar, c cVar) {
        this.c = new dbg();
        this.d = gVar;
        this.b = akVar;
        this.e = cVar;
    }

    public void a(k kVar) {
        this.f = kVar;
        if (kVar != null) {
            this.c.a(kVar.a().c(new c(this)));
        }
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.VIEW) {
            this.c.c();
            this.f = null;
        }
    }

    public void a(o oVar) {
        this.c.a(this.d.a().a(cym.a()).g(this.b).a(new d(this, oVar), new e(this)));
    }
}
