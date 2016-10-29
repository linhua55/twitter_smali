package com.twitter.android.moments.ui.fullscreen;

import adc;
import adg;
import adi;
import adm;
import ady;
import adz;
import afm;
import afx;
import agj;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import byi;
import bym;
import com.twitter.android.av.audio.n;
import com.twitter.android.moments.data.MomentsFriendshipCache;
import com.twitter.android.moments.data.ab;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.ai;
import com.twitter.android.moments.data.al;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.d;
import com.twitter.android.moments.data.r;
import com.twitter.android.moments.data.u;
import com.twitter.android.sn;
import com.twitter.app.common.util.t;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.j;
import com.twitter.moments.core.ui.widget.capsule.b;
import com.twitter.moments.core.ui.widget.sectionpager.c;
import com.twitter.moments.core.ui.widget.sectionpager.e;
import com.twitter.ui.widget.DragOnlySeekBar;
import com.twitter.util.collection.x;
import com.twitter.util.y;
import cvi;
import defpackage.asz;
import defpackage.bly;
import defpackage.byn;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.o;

/* compiled from: Twttr */
public class as {
    private final Activity a;
    private final eq b;
    private final ViewPager c;
    private final View d;
    private final Set<OnPageChangeListener> e;
    private final e f;
    private final ag g;
    private final adc h;
    private final adg i;
    private final ab j;
    private final ef k;
    private final List<c> l;
    private final aj m;
    private final b n;
    private final adi o;
    private final adm p;
    private final d q;
    private final a r;
    private final fh s;
    private ax t;

    public as(Activity activity, ViewGroup viewGroup, eq eqVar, byi byi, x<Integer> xVar, bg bgVar, az azVar, LoaderManager loaderManager, r rVar, df dfVar, ViewPager viewPager, e eVar, sn snVar, com.twitter.android.moments.ui.b bVar, ep epVar, afm afm, View view, y<Event> yVar, bn<String, PageLoadingEvent> bnVar, cg cgVar, fb fbVar, afx afx, adg adg, t tVar, a aVar, Bundle bundle, bn bnVar2, an anVar) {
        o a;
        this.a = activity;
        this.b = eqVar;
        this.c = viewPager;
        this.f = eVar;
        this.d = view;
        this.e = new HashSet();
        this.i = adg;
        this.r = aVar;
        Resources resources = this.a.getResources();
        k kVar = new k(aVar);
        et etVar = new et(afx, kVar, aVar);
        long j = aVar.a().b;
        long g = bgVar.c().g();
        di a2 = di.a(activity, g);
        at atVar = new at(this);
        this.g = new ag(g, new d(atVar), new u(activity, bgVar, azVar, byi));
        this.o = new adi(g, aVar.a(), this.g.c(j), aVar, byn.a(a2), bundle);
        ady ady = new ady(this.a, 2989, this.o);
        View findViewById = viewGroup.findViewById(2131952613);
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(2131952775);
        hh hhVar = new hh(this.a, j, aVar, byi, azVar);
        MomentsFriendshipCache momentsFriendshipCache = new MomentsFriendshipCache(aVar);
        adz adz = new adz(this.a, aVar.a(), this.o);
        gf gfVar = new gf(afx, aVar, adz);
        da a3 = da.a(afx, aVar, this.a);
        dz dzVar = new dz(this.a, snVar, momentsFriendshipCache, ady, this.o, bVar, anVar, tVar, j, new n());
        this.j = new ab(g, new com.twitter.android.moments.data.y(new asz(this.a.getContentResolver())));
        this.h = new adc(g, new d(new au(this)));
        if (bym.d()) {
            azVar.a(new bly(this.a, bgVar.c(), byi, j), 0, null);
            this.s = fh.a(this.j, this.h, j);
            a = this.s.a();
        } else {
            this.s = null;
            a = o.c();
        }
        this.k = new ef(this.a, azVar, ady, j, new agj(findViewById, viewGroup2, LayoutInflater.from(this.a), this.a.getResources().getInteger(2131755056)));
        fl flVar = new fl(LayoutInflater.from(this.a), a, epVar, this.o);
        this.p = new adm(cgVar, this.o);
        this.b.a(this.r);
        b c = this.b.c(this.r);
        this.n = c;
        DragOnlySeekBar dragOnlySeekBar = (DragOnlySeekBar) this.d.findViewById(2131952754);
        com.twitter.moments.core.ui.widget.capsule.c cVar = new com.twitter.moments.core.ui.widget.capsule.c(aVar.d().size(), c, resources.getDrawable(2130840063), dragOnlySeekBar, resources.getFraction(2131820553, 1, 1));
        afm afm2 = afm;
        y<Event> yVar2 = yVar;
        j jVar = aVar;
        b bVar2 = c;
        dz dzVar2 = dzVar;
        this.m = new aj(afm2, yVar2, jVar, bVar2, dzVar2, this.k, this.i);
        y yVar3 = new y(kVar, c, dfVar, cgVar);
        this.q = new d(afm, cgVar, kVar, c, yVar3);
        com.twitter.android.card.b bVar3 = new com.twitter.android.card.b(activity);
        ek a4 = ek.a(this.a, new av(this, g));
        bn bnVar3 = bnVar2;
        dz dzVar3 = dzVar;
        y<Event> yVar4 = yVar;
        fz fzVar = new fz(this.a, LayoutInflater.from(this.a), this.r, adz, this.g, bnVar3, dzVar3, yVar4, this.o, flVar, this.m, this.m, yVar3, bVar3, a4);
        y<Event> yVar5 = yVar;
        LoaderManager loaderManager2 = loaderManager;
        fz fzVar2 = fzVar;
        df dfVar2 = dfVar;
        y yVar6 = yVar3;
        cg cgVar2 = cgVar;
        t tVar2 = tVar;
        fb fbVar2 = fbVar;
        bn<String, PageLoadingEvent> bnVar4 = bnVar;
        this.l = new ba(this.a, LayoutInflater.from(this.a), yVar5, loaderManager2, fzVar2, dfVar2, yVar6, cgVar2, tVar2, fbVar2, this.o, bnVar4, this.m, a4, bVar3).a(aVar);
        this.f.a(this.l);
        a(c, cVar);
        a(c, yVar3);
        a(c, hhVar);
        a(c, this.o);
        a(c, this.m);
        a(c, etVar);
        a(c, this.q);
        a(c, gfVar);
        a(c, a3);
        Context context = this.a;
        long j2 = aVar.a().b;
        int a5 = rVar.a(al.class, Long.valueOf(j));
        new ai(bgVar, new al(context, byi, loaderManager, j2, a5, azVar)).a(aVar.d());
        if (xVar.c()) {
            this.c.setCurrentItem(((Integer) xVar.b()).intValue(), false);
        }
        this.c.addOnLayoutChangeListener(new aw(this));
    }

    public void a(ax axVar) {
        this.t = axVar;
    }

    private void a(b bVar, OnPageChangeListener onPageChangeListener) {
        bVar.a(onPageChangeListener);
        this.e.add(onPageChangeListener);
    }

    public boolean a() {
        return this.k.b();
    }

    public void a(Bundle bundle) {
        this.o.a(bundle);
    }

    public void b() {
        for (OnPageChangeListener b : this.e) {
            this.n.b(b);
        }
        this.q.a();
        this.m.a();
        ViewGroup viewGroup = (ViewGroup) this.d.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.d);
        }
        this.b.b(this.r);
        this.f.b(this.l);
        if (this.s != null) {
            this.s.b();
        }
        cvi.a(this.h);
        cvi.a(this.j);
        cvi.a(this.g);
        this.p.a();
        this.o.g();
    }

    public a c() {
        return this.r;
    }
}
