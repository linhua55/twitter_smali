package com.twitter.android.livevideo.landing.di;

import abd;
import abg;
import abh;
import abi;
import abn;
import android.content.Context;
import com.twitter.android.livevideo.landing.LiveVideoTimelineFragment;
import com.twitter.android.livevideo.landing.k;
import com.twitter.android.timeline.bj;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.platform.t;
import cwk;
import cxj;
import dagger.internal.b;

/* compiled from: Twttr */
public final class f implements u {
    static final /* synthetic */ boolean a;
    private cxj<Context> b;
    private cxj<Session> c;
    private cxj<di> d;
    private cxj<t> e;
    private cxj<abd> f;
    private cxj<abh> g;
    private cxj<abi> h;
    private cxj<TwitterScribeItem> i;
    private cxj<bj> j;
    private cxj<abn> k;
    private cwk<LiveVideoTimelineFragment> l;

    static {
        a = !f.class.desiredAssertionStatus();
    }

    private f(j jVar) {
        if (a || jVar != null) {
            a(jVar);
            return;
        }
        throw new AssertionError();
    }

    public static j a() {
        return new j();
    }

    private void a(j jVar) {
        this.b = b.a(w.a(jVar.a));
        this.c = new g(this, jVar);
        this.d = new h(this, jVar);
        this.e = new i(this, jVar);
        this.f = abg.a(this.d, this.e);
        this.g = b.a(this.f);
        this.h = b.a(y.a(jVar.a, this.b, this.c, this.g));
        this.i = b.a(z.a(jVar.a));
        this.j = b.a(x.a(jVar.a));
        this.k = b.a(LiveVideoTimelineModule_ProvidePeriodicEmitterFactory.c());
        this.l = k.a(this.h, this.i, this.j, this.k);
    }

    public void a(LiveVideoTimelineFragment liveVideoTimelineFragment) {
        this.l.a(liveVideoTimelineFragment);
    }
}
