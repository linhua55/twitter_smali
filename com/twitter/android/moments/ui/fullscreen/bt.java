package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import asy;
import byn;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.r;
import com.twitter.android.moments.ui.DoubleTapFavoriteHud;
import com.twitter.android.moments.ui.b;
import com.twitter.android.moments.ui.fullscreen.Event.EventType;
import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.android.moments.ui.j;
import com.twitter.android.sn;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.app.common.util.t;
import com.twitter.config.AppConfig;
import com.twitter.library.av.playback.ai;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.moments.core.ui.widget.sectionpager.SectionsView;
import com.twitter.moments.core.ui.widget.sectionpager.e;
import com.twitter.ui.widget.touchintercept.TouchInterceptingFrameLayout;
import com.twitter.util.c;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.x;
import com.twitter.util.y;
import com.twitter.util.z;
import defpackage.acu;
import defpackage.acw;
import defpackage.acx;
import defpackage.adg;
import defpackage.adw;
import defpackage.afm;
import defpackage.afo;
import defpackage.afx;
import defpackage.byi;
import defpackage.crm;
import defpackage.cun;
import java.util.Set;

/* compiled from: Twttr */
public class bt implements z<com.twitter.util.collection.z<String, PageLoadingEvent>> {
    private final afo A;
    private final b B;
    private final an C;
    private final ao D;
    private final ed E;
    private final InternalFeedbackDialogsController F;
    private final crm G;
    private final Bundle H;
    private final fa I;
    private final View J;
    private a K;
    private int L;
    private final long M;
    private final sn a;
    private final df b;
    private final ViewGroup c;
    private final MomentsViewPager d;
    private final eq e;
    private final cg f;
    private final y<Event> g;
    private final DoubleTapFavoriteHud h;
    private final r i;
    private final FragmentActivity j;
    private final bg k;
    private final t l;
    private final dg m;
    private final ay n;
    private final fb o;
    private final bn<String, PageLoadingEvent> p;
    private final byi q;
    private final e r;
    private final afx s;
    private final adw t;
    private final cd u;
    private final adg v;
    private final z<Event> w;
    private final bn x;
    private final ce y;
    private final acx z;

    public bt(FragmentActivity fragmentActivity, TouchInterceptingFrameLayout touchInterceptingFrameLayout, sn snVar, bg bgVar, long j, di diVar, t tVar, long j2, bn<String, PageLoadingEvent> bnVar, fb fbVar, r rVar, Bundle bundle, crm crm, bn bnVar2, acx acx, afo afo, b bVar, an anVar, ao aoVar) {
        this.j = fragmentActivity;
        this.a = snVar;
        this.k = bgVar;
        this.c = (ViewGroup) touchInterceptingFrameLayout.findViewById(2131952770);
        this.d = (MomentsViewPager) touchInterceptingFrameLayout.findViewById(2131952772);
        this.f = new cg(eu.a());
        this.b = new df(this.j, ai.a());
        this.i = rVar;
        this.l = tVar;
        this.o = fbVar;
        this.p = bnVar;
        this.p.a(this);
        this.G = crm;
        this.x = bnVar2;
        this.M = j2;
        this.z = acx;
        this.A = afo;
        this.D = aoVar;
        this.q = new byi(this.j, diVar, j);
        this.r = new e(this.d, (SectionsView) touchInterceptingFrameLayout.findViewById(2131952771));
        this.r.a(2131690229);
        this.e = new eq(this.r, this.d);
        this.d.setAdapter(this.r.c());
        this.B = bVar;
        this.C = anVar;
        Session c = this.k.c();
        this.v = new adg(new asy(new acw(this.j, c)), new asy(new acu(di.a(this.j, c.g()))));
        br brVar = new br(this.d, this.e);
        this.I = new fa(this.o, brVar);
        this.d.addOnPageChangeListener(this.I);
        this.h = (DoubleTapFavoriteHud) touchInterceptingFrameLayout.findViewById(2131952776);
        if (AppConfig.m().p()) {
            this.F = new InternalFeedbackDialogsController(this.j, brVar);
        } else {
            this.F = null;
        }
        touchInterceptingFrameLayout.findViewById(2131952773).setOnClickListener(new bu(this));
        ToggleImageButton toggleImageButton = (ToggleImageButton) touchInterceptingFrameLayout.findViewById(2131952587);
        toggleImageButton.setToggledOn(!this.f.a());
        toggleImageButton.setOnClickListener(new cc(this.f, toggleImageButton));
        this.f.c().a(new bv(this, toggleImageButton));
        this.s = afx.a((ViewGroup) touchInterceptingFrameLayout);
        this.g = new y();
        Set a = MutableSet.a();
        a.add(this.d);
        this.J = touchInterceptingFrameLayout.findViewById(2131952768);
        com.twitter.ui.widget.touchintercept.e eVar = new com.twitter.ui.widget.touchintercept.e(fragmentActivity, new com.twitter.ui.widget.touchintercept.a(this.j, touchInterceptingFrameLayout.findViewById(2131952769), this.J, new bw(this)));
        touchInterceptingFrameLayout.setTouchInterceptListener(eVar);
        a.add(eVar);
        this.u = new cd(a);
        this.m = dg.a(this.j, this.e, this.g, this.u, this.o);
        this.t = new adw(j, this.e, byn.a(di.a((Context) fragmentActivity, j)));
        this.d.addOnPageChangeListener(this.t);
        this.n = new ay(this.d, this.e, new bx(this));
        Set a2 = MutableSet.a();
        a2.add(eVar);
        com.twitter.android.util.t a3 = com.twitter.android.util.t.a(this.j, "tap_to_fit_tutorial_fatigue", this.k.c().e());
        ViewStub viewStub = (ViewStub) this.j.findViewById(2131952777);
        if (a3.a()) {
            this.E = new ed((TapHintView) viewStub.inflate(), a3, brVar, this.g, this.p);
            this.d.addOnPageChangeListener(this.E);
            a2.add(this.E);
        } else {
            this.E = null;
        }
        this.y = new ce(this.r, a2);
        this.g.a(this.y);
        this.H = bundle;
        this.w = new ew(new j(this.d));
        this.g.a(this.w);
    }

    public void a(x<Integer> xVar) {
        long j;
        if (this.H != null) {
            this.f.b(this.H);
        } else {
            this.b.b();
        }
        if (this.G != null) {
            this.G.a(new by(this));
            this.G.a();
        } else {
            this.c.setVisibility(0);
        }
        if (this.H == null || !this.H.containsKey("state_current_moment_id")) {
            j = this.M;
        } else {
            j = this.H.getLong("state_current_moment_id");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Moment ID must be non-negative");
        }
        this.z.a(j).d(1).b(new bz(this, xVar));
        this.d.addOnPageChangeListener(this.m);
        this.d.setOnTouchListener(this.m);
    }

    private void a(a aVar, adg adg, x<Integer> xVar) {
        this.D.a(adg, aVar.a().o).b(new ca(this, aVar, xVar));
    }

    private as a(a aVar, x<Integer> xVar, eq eqVar, Bundle bundle) {
        afm a = afm.a(LayoutInflater.from(this.j), this.c, this.h);
        a.a(8);
        this.c.addView(a.g());
        this.c.addView(a.f());
        this.c.bringChildToFront(this.j.findViewById(2131952775));
        eq eqVar2 = eqVar;
        x<Integer> xVar2 = xVar;
        a aVar2 = aVar;
        Bundle bundle2 = bundle;
        as asVar = new as(this.j, this.c, eqVar2, this.q, xVar2, this.k, az.a(this.j), this.j.getSupportLoaderManager(), this.i, this.b, this.d, this.r, this.a, this.B, this.n, a, a.g(), this.g, this.p, this.f, this.o, this.s, this.v, this.l, aVar2, bundle2, this.x, this.C);
        asVar.a(this.I);
        return asVar;
    }

    public boolean a() {
        if (!b()) {
            return false;
        }
        boolean a = this.n.a();
        if (a) {
            return a;
        }
        this.t.b();
        return a;
    }

    public boolean b() {
        return this.G == null || this.G.e();
    }

    public void a(KeyEvent keyEvent) {
        if (a(keyEvent, this.f)) {
            this.f.a(false);
        }
    }

    public x<Long> c() {
        a d = this.n.d();
        if (d != null) {
            return x.a(Long.valueOf(d.a().b));
        }
        return x.a();
    }

    public void a(Bundle bundle) {
        as c = this.n.c();
        if (c != null) {
            c.a(bundle);
            bundle.putLong("state_current_moment_id", c.c().a().b);
        }
        this.m.a(bundle);
        this.f.a(bundle);
        bundle.putInt("state_main_pager_current_item", this.d.getCurrentItem());
    }

    public void a(boolean z) {
        this.g.b(this.w);
        this.n.e();
        this.b.a(z);
        this.p.c(this);
        cun.a(this.v);
        if (this.E != null) {
            this.E.c();
        }
        if (!z) {
            this.f.b();
        }
    }

    static boolean a(KeyEvent keyEvent, cg cgVar) {
        return keyEvent.getKeyCode() == 24 && cgVar.a();
    }

    public void a(com.twitter.util.collection.z<String, PageLoadingEvent> zVar) {
        if (this.G != null && a((String) zVar.a())) {
            PageLoadingEventType pageLoadingEventType = ((PageLoadingEvent) zVar.b()).b;
            if (pageLoadingEventType == PageLoadingEventType.f || pageLoadingEventType == PageLoadingEventType.g || pageLoadingEventType == PageLoadingEventType.e) {
                this.G.b();
            } else if (pageLoadingEventType == PageLoadingEventType.c) {
                this.G.c();
            }
        }
    }

    private boolean a(String str) {
        MomentPage c = this.e.c(this.d.getCurrentItem());
        return c != null && c.h().equals(str);
    }

    private as a(a aVar, x<Integer> xVar, Bundle bundle) {
        x a;
        if (this.H != null) {
            a = x.a(Integer.valueOf(this.H.getInt("state_main_pager_current_item")));
        }
        as a2 = a(aVar, a, this.e, bundle);
        if (this.H != null) {
            a2.a(new cb(this, a2));
        }
        return a2;
    }

    public void b(boolean z) {
        if (b() && VERSION.SDK_INT >= 19 && z) {
            c.a(this.j.getWindow().getDecorView());
        }
    }

    public void d() {
        if (b() && VERSION.SDK_INT >= 19) {
            c.a(this.j.getWindow().getDecorView());
        }
        this.b.b(this.f.a());
        if (this.F != null) {
            this.F.a();
        }
    }

    public void e() {
        this.b.a();
        if (this.F != null) {
            this.F.b();
        }
    }

    public void a(Configuration configuration) {
        if (configuration.orientation == 2) {
            this.g.a(new Event(EventType.l));
        } else {
            this.g.a(new Event(EventType.m));
        }
    }
}
