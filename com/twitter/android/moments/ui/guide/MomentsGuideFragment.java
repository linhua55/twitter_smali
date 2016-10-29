package com.twitter.android.moments.ui.guide;

import android.os.Bundle;
import android.view.LayoutInflater;
import com.twitter.android.av.t;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.au;
import com.twitter.android.moments.data.ay;
import com.twitter.android.moments.data.b;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.bo;
import com.twitter.android.moments.data.d;
import com.twitter.android.moments.data.l;
import com.twitter.android.moments.data.m;
import com.twitter.android.moments.data.o;
import com.twitter.android.moments.data.q;
import com.twitter.android.moments.data.r;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.data.u;
import com.twitter.android.moments.ui.fullscreen.c;
import com.twitter.android.moments.viewmodels.MomentGuideListItem;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.library.client.az;
import com.twitter.library.provider.di;
import com.twitter.platform.PlatformContext;
import com.twitter.util.object.e;
import defpackage.adn;
import defpackage.ahn;
import defpackage.aho;
import defpackage.ahq;
import defpackage.ahz;
import defpackage.bmf;
import defpackage.byi;
import defpackage.cun;
import java.io.Closeable;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class MomentsGuideFragment extends TwitterListFragment<MomentGuideListItem, ab> implements c, d {
    private t a;
    private m b;
    private ahn c;
    private adn d;
    private s e;
    private s f;
    private ag g;
    private bn h;
    private ay i;
    private j j;
    private p k;
    private e l;
    private x m;
    private ahz n;
    private String o;
    private String p;
    private String q;
    private boolean r;
    private boolean s;
    private long t;

    public MomentsGuideFragment() {
        this.t = -1;
    }

    public /* synthetic */ h C() {
        return m();
    }

    public /* synthetic */ g o() {
        return m();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.p = m().b();
        this.s = m().g();
        this.q = m().d();
        this.a = new t(this.T);
        this.o = (String) e.b(this.p, "0");
        p();
    }

    public ag m() {
        return ag.a(getArguments());
    }

    public void onDestroy() {
        super.onDestroy();
        this.j.a(false);
        n();
        this.a.b();
    }

    private void n() {
        cun.a(this.h);
        cun.a((Closeable) this.g);
        this.c.b();
    }

    private void p() {
        int i;
        long g = aT().g();
        di a = di.a(getActivity(), g);
        az a2 = az.a(getActivity());
        byi byi = new byi(getActivity(), a, g);
        r rVar = new r();
        ad adVar = new ad(this);
        this.g = new ag(g, new d(adVar), new u(getActivity(), this.Z, a2, byi));
        this.d = new adn(getActivity(), aT().g(), this.o, (c) this);
        bmf bmf = new bmf(getActivity(), this.Z.c());
        this.i = ay.a(bmf);
        this.h = bo.a(this.i, bmf, a);
        this.f = new s();
        this.e = new s();
        String e = this.Z.c().e();
        com.twitter.android.util.t a3 = com.twitter.android.util.t.a(getActivity(), "guide_post_follow_fatigue", e);
        com.twitter.android.util.t a4 = com.twitter.android.util.t.a(getActivity(), "guide_follow_button_fatigue", e);
        com.twitter.android.util.t a5 = com.twitter.android.util.t.a(getActivity(), "guide_thumbnail_fatigue", e);
        if (this.q == null) {
            i = k.home;
        } else {
            i = 0;
        }
        this.k = new p(getActivity(), getChildFragmentManager(), a3, a4, a5, q(), i, this.q);
        this.l = new e(getActivity(), this.d, this.f, this.e);
        o a6 = o.a(getActivity(), this.Z, byi, this.aa, this.p);
        this.c = new ahn(new b(getActivity(), this.Z, a2, getLoaderManager(), rVar.a(b.class, Long.valueOf(g)), byi, 0));
        this.b = new m(a6, byi.a(this.o), getLoaderManager(), rVar.a(m.class, Long.valueOf(g)));
    }

    private boolean q() {
        return this.s;
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.m = new x(ap());
        this.m.a(new ae(this));
        this.n = ahz.a(getActivity());
        this.j = r();
    }

    private j r() {
        q auVar;
        rx.o g;
        com.twitter.android.moments.viewmodels.b cVar;
        if (q()) {
            auVar = new au();
        } else {
            auVar = new l();
        }
        if (m().c()) {
            g = this.c.a().g(new af(this));
            cVar = new com.twitter.android.moments.viewmodels.c();
        } else {
            g = rx.o.c();
            cVar = new com.twitter.android.moments.viewmodels.b();
        }
        aa aaVar = new aa(getActivity());
        aho ahq = new ahq(LayoutInflater.from(getActivity()), g, aaVar, this.d);
        return new j(getActivity(), LayoutInflater.from(getActivity()), this.b, this.m, ap().a, this.d, this.l, this.k, this.f, this.e, this.g, this.h, false, this, this.n, this.a, auVar, cVar, ahq, aaVar, al());
    }

    protected void a(long j, long j2) {
        this.j.a(false);
        n();
        p();
        this.j = r();
        g();
    }

    protected boolean j() {
        return this.t == -1 || t() - this.t > TimeUnit.MINUTES.toMillis(10);
    }

    protected void k() {
        g();
    }

    protected void g() {
        this.t = t();
        this.j.e();
    }

    protected void a() {
        super.a();
        this.r = true;
        this.j.b();
        this.j.a();
        this.i.b();
    }

    protected void d() {
        super.d();
        this.j.d();
        if (this.X != null) {
            this.X.a();
        }
    }

    protected void e() {
        super.e();
        this.r = false;
        this.j.c();
        this.i.a();
    }

    protected void h() {
        super.h();
        this.j.f();
    }

    protected void a(com.twitter.app.common.list.t tVar) {
        super.a(tVar);
        tVar.a(2131363098);
    }

    public boolean b() {
        return this.r;
    }

    public boolean aP_() {
        return true;
    }

    private long t() {
        return PlatformContext.f().a().b();
    }
}
