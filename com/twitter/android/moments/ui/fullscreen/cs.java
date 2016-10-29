package com.twitter.android.moments.ui.fullscreen;

import agg;
import agi;
import android.app.Activity;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.card.a;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import com.twitter.util.object.e;
import com.twitter.util.y;
import com.twitter.util.z;
import cym;
import rx.t;

/* compiled from: Twttr */
class cs implements fx, d {
    private final o b;
    private final y<Event> c;
    private final t d;
    private final t e;
    private final agg f;
    private final agi g;
    private final z<Event> h;
    private final z<Event> i;
    private final gk j;

    public static cs a(Activity activity, LayoutInflater layoutInflater, o oVar, dz dzVar, y<Event> yVar, ek ekVar, t tVar, a aVar) {
        agg a = agg.a(layoutInflater);
        agi agi = new agi(a, ekVar, activity.getResources());
        Tweet tweet = (Tweet) e.a(oVar.n());
        fc.a(activity, a.d(), tweet, oVar, aVar).a();
        gk a2 = gk.a(activity, a.e(), tweet, dzVar, a.f());
        return new cs(oVar, yVar, tVar, cym.a(), a, agi, new bh(a.c()), a2);
    }

    @VisibleForTesting
    cs(o oVar, y<Event> yVar, t tVar, t tVar2, agg agg, agi agi, z<Event> zVar, gk gkVar) {
        this.i = new ct(this);
        this.b = oVar;
        this.c = yVar;
        this.d = tVar;
        this.e = tVar2;
        this.g = agi;
        this.f = agg;
        this.h = zVar;
        this.j = gkVar;
        this.g.a(this.b, this.b.n());
        this.c.a(this.h);
        this.c.a(this.i);
        this.f.a(new cu(this));
    }

    public View e() {
        return this.f.e();
    }

    public void d() {
    }

    public void c() {
    }

    public void a() {
        this.c.b(this.h);
        this.c.b(this.i);
        this.j.a();
    }

    public rx.o<Integer> b() {
        return this.f.b().a(this.e);
    }
}
