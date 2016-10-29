package com.twitter.android.moments.ui.fullscreen;

import afl;
import agg;
import agi;
import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.card.a;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import com.twitter.util.y;
import com.twitter.util.z;
import cym;
import rx.t;

/* compiled from: Twttr */
public class o extends cs {
    private final y b;
    private final com.twitter.model.moments.viewmodels.o c;
    private final z<ae> d;
    private final z<ac> e;
    private final Resources f;
    private final afl g;

    public /* bridge */ /* synthetic */ rx.o b() {
        return super.b();
    }

    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public /* bridge */ /* synthetic */ View e() {
        return super.e();
    }

    public static o a(Activity activity, LayoutInflater layoutInflater, com.twitter.model.moments.viewmodels.o oVar, dz dzVar, y<Event> yVar, ek ekVar, t tVar, a aVar, y yVar2) {
        Resources resources = activity.getResources();
        agg a = agg.a(layoutInflater);
        agi agi = new agi(a, ekVar, resources);
        afl afl = new afl(a);
        Tweet tweet = (Tweet) e.a(oVar.n());
        fc.a(activity, a.d(), tweet, oVar, aVar).a();
        gk a2 = gk.a(activity, a.e(), tweet, dzVar, a.f());
        bh bhVar = new bh(a.c());
        return new o(resources, oVar, yVar, tVar, cym.a(), afl, agi, bhVar, a2, yVar2);
    }

    public o(Resources resources, com.twitter.model.moments.viewmodels.o oVar, y<Event> yVar, t tVar, t tVar2, afl afl, agi agi, z<Event> zVar, gk gkVar, y yVar2) {
        super(oVar, yVar, tVar, tVar2, afl.b(), agi, zVar, gkVar);
        this.d = new p(this);
        this.e = new q(this);
        this.f = resources;
        this.b = yVar2;
        this.c = oVar;
        this.g = afl;
        this.b.a(this.d, this.e);
    }

    public void a() {
        this.b.b(this.d, this.e);
        super.a();
    }
}
