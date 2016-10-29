package com.twitter.android.communities;

import com.twitter.app.common.di.InjectionScope;
import cym;
import dbg;
import defpackage.cho;
import rx.o;

/* compiled from: Twttr */
public class p implements n {
    private static final String a;
    private final ak b;
    private final dbg c;
    private final o<cho> d;

    static {
        a = p.class.getSimpleName();
    }

    public p(x xVar, ak akVar, c cVar) {
        this.c = new dbg();
        this.b = akVar;
        this.d = xVar.a(cVar.b);
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.VIEW) {
            this.c.c();
        }
    }

    public void a(o oVar) {
        this.c.a(this.d.a(cym.a()).g(this.b).a(new q(this, oVar), new r(this)));
    }
}
