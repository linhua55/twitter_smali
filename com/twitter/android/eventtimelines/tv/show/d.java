package com.twitter.android.eventtimelines.tv.show;

import android.app.Activity;
import android.content.res.Resources;
import com.twitter.android.eventtimelines.n;
import com.twitter.android.eventtimelines.page.PageTemplateFactory_Factory;
import com.twitter.android.eventtimelines.page.c;
import com.twitter.app.common.inject.f;
import com.twitter.app.common.inject.j;
import com.twitter.app.common.inject.v;
import cwk;
import dagger.internal.b;
import dagger.internal.e;
import defpackage.cxj;
import java.util.Set;

/* compiled from: Twttr */
public final class d implements r {
    static final /* synthetic */ boolean a;
    private cxj<c> b;
    private cxj<Activity> c;
    private cxj<Resources> d;
    private cxj<t> e;
    private cwk<TvShowActivity> f;

    static {
        a = !d.class.desiredAssertionStatus();
    }

    private d(f fVar) {
        if (a || fVar != null) {
            a(fVar);
            return;
        }
        throw new AssertionError();
    }

    public static f a() {
        return new f();
    }

    private void a(f fVar) {
        this.b = n.a(PageTemplateFactory_Factory.c());
        this.c = b.a(f.a(fVar.a));
        this.d = b.a(j.a(this.c));
        this.e = ac.a(this.d);
        this.f = q.a(this.b, PageTemplateFactory_Factory.c(), this.e);
    }

    public Set<com.twitter.app.common.di.d> b() {
        return (Set) e.a().b();
    }

    public v c() {
        return (v) TvShowModule_ProvideViewHostFactory.c().b();
    }

    public void a(TvShowActivity tvShowActivity) {
        this.f.a(tvShowActivity);
    }
}
