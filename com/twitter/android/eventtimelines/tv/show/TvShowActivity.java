package com.twitter.android.eventtimelines.tv.show;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import com.twitter.android.eventtimelines.EventTimelineActivity;
import com.twitter.android.eventtimelines.a;
import com.twitter.android.eventtimelines.header.TextHeaderView;
import com.twitter.android.eventtimelines.l;
import com.twitter.android.eventtimelines.m;
import com.twitter.android.eventtimelines.o;
import com.twitter.android.eventtimelines.page.c;
import com.twitter.android.eventtimelines.page.f;
import com.twitter.android.eventtimelines.page.g;
import com.twitter.android.eventtimelines.r;
import com.twitter.app.common.app.n;
import com.twitter.app.common.inject.b;
import com.twitter.app.common.inject.t;
import com.twitter.library.client.at;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.cxj;
import java.util.List;

/* compiled from: Twttr */
public class TvShowActivity extends EventTimelineActivity {
    cxj<c> a;
    g b;
    ad c;
    o f;
    final TwitterScribeItem g;
    t h;
    TextHeaderView i;
    a j;
    aw k;
    final ae l;

    public TvShowActivity() {
        this.g = new TwitterScribeItem();
        this.j = a.a;
        this.k = aw.a;
        this.l = new n(this);
    }

    protected /* synthetic */ b b(t tVar) {
        return d(tVar);
    }

    protected /* synthetic */ com.twitter.app.common.inject.a c(t tVar) {
        return a(tVar);
    }

    protected String f() {
        return "tv";
    }

    public void b(Bundle bundle, com.twitter.app.common.base.t tVar) {
        this.g.v = "tv_show";
        if (C()) {
            this.i = new TextHeaderView(this);
        }
        av avVar = (av) V();
        this.c = avVar.d();
        this.c.a(this.l);
        this.f = avVar.a();
        U().a(this.f);
        ((r) W()).a(this);
        super.b(bundle, tVar);
    }

    protected av a(t tVar) {
        l lVar;
        s sVar;
        Intent intent = getIntent();
        long longExtra = intent.getLongExtra("search_id", -1);
        if (longExtra == -1) {
            lVar = l.a;
        } else {
            lVar = new l(longExtra);
        }
        longExtra = intent.getLongExtra("entity_id", -1);
        if (longExtra == -1) {
            sVar = s.a;
        } else {
            sVar = new s(longExtra);
        }
        return g.c().a(n.s()).a(new r(lVar, tVar)).a(new aj(sVar)).a();
    }

    protected r d(t tVar) {
        return d.a().a(com.twitter.app.common.app.l.p()).a(new ab(this, tVar)).a(new m()).a();
    }

    protected com.twitter.android.eventtimelines.page.a G() {
        String a = ad().a();
        return ((c) this.a.b()).a(this.b.a().c("highlights").a(this.g).d(a).e(getString(2131363976))).a(this.b.b().c(1).a(this.g).d(aj.a(this.k.g) ? a : this.k.g).e(getString(2131363976))).a(this.b.c().c(2).a(this.g).d(a).e(getString(2131363976))).a();
    }

    protected final List<at> N_() {
        List<f> a = G().a();
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        o oVar = (o) e.a(this.f);
        for (f a2 : a) {
            d.c(oVar.a(a2));
        }
        return (List) d.q();
    }

    private ad ad() {
        return (ad) e.a(this.c);
    }

    protected String a() {
        return this.k.c;
    }

    protected int j() {
        return (this.o.getMeasuredHeight() - this.r) - (this.i == null ? 0 : this.i.getMeasuredHeight() / 2);
    }

    protected View au_() {
        return this.i;
    }

    protected a r() {
        return this.j;
    }

    protected ScribeItem l() {
        return this.g;
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new o(this, this, list, viewPager, this.p, this.d, this.e);
    }
}
