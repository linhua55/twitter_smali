package com.twitter.android.moments.ui.fullscreen;

import adt;
import aeq;
import aew;
import aex;
import afq;
import afs;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import bym;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.bf;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.h;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import defpackage.cll;

/* compiled from: Twttr */
class bj implements d {
    private final h a;
    private final dz b;
    private final afq c;
    private final bf d;
    private final ft e;
    private final ab f;
    private final Tweet g;
    private final afs h;

    public static bj a(Context context, ab abVar, Tweet tweet, ag agVar, bn bnVar, adt adt, dz dzVar, MomentPage momentPage, ft ftVar, cll cll) {
        afq a = afq.a(LayoutInflater.from(context));
        afs afs = new afs(context.getResources(), a);
        View g = a.g();
        return new bj(abVar, tweet, dzVar, momentPage, cll, a, afs, new h(new aeq(g), agVar, adt), new bf(new aew(aex.a(context.getResources(), g, 2131952763, 2131952764)), bnVar), ftVar);
    }

    bj(ab abVar, Tweet tweet, dz dzVar, MomentPage momentPage, cll cll, afq afq, afs afs, h hVar, bf bfVar, ft ftVar) {
        this.f = abVar;
        this.g = tweet;
        this.b = dzVar;
        this.h = afs;
        this.c = afq;
        this.a = hVar;
        this.d = bfVar;
        this.e = ftVar;
        a(momentPage, cll);
    }

    public View e() {
        return this.c.g();
    }

    private void a(MomentPage momentPage, cll cll) {
        this.h.a(momentPage, this.g);
        ab abVar = this.f;
        if (!(abVar.l == null || this.g == null)) {
            this.c.b(new bk(this));
        }
        if (a.a(abVar.o)) {
            this.c.a(new bl(this, abVar.o));
        }
        if (cll != null) {
            this.d.a(cll);
        } else {
            this.d.a();
        }
        this.a.a(abVar);
        a aVar = abVar.o;
        if (!bym.j() || aVar == null) {
            this.c.d();
            return;
        }
        this.c.c();
        this.c.c(new bm(this, abVar, aVar));
    }

    public void d() {
    }

    public void c() {
    }

    public void a() {
        this.a.a();
        this.d.a();
    }
}
