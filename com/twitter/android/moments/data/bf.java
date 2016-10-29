package com.twitter.android.moments.data;

import aew;
import android.view.View;
import com.twitter.android.moments.ui.guide.al;
import com.twitter.util.object.e;
import cym;
import dbd;
import defpackage.cll;
import java.util.Collection;
import rx.an;
import rx.t;

/* compiled from: Twttr */
public class bf implements al {
    private final aew a;
    private final bn b;
    private final t c;
    private final t d;
    private an e;
    private cll f;

    public bf(aew aew, bn bnVar) {
        this(aew, bnVar, dbd.d(), cym.a());
    }

    public bf(aew aew, bn bnVar, t tVar, t tVar2) {
        this.a = aew;
        this.b = bnVar;
        this.c = tVar;
        this.d = tVar2;
    }

    public void a(cll cll) {
        if (this.f == null || !cll.b.equals(this.f.b)) {
            cll cll2 = (cll) e.b(this.b.a(cll.b), cll);
            a();
            this.a.a(cll2);
            this.e = this.b.b(cll.b).b(this.c).a(this.d).c(new bg(this));
        }
    }

    public void a() {
        if (this.e != null) {
            this.e.K_();
            this.e = null;
        }
        this.f = null;
        this.a.a();
    }

    public Collection<View> b() {
        return this.a.b();
    }
}
