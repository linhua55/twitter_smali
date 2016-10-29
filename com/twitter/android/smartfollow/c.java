package com.twitter.android.smartfollow;

import android.app.Application;
import com.twitter.android.interestpicker.ai;
import com.twitter.android.interestpicker.aj;
import com.twitter.android.interestpicker.ao;
import com.twitter.android.interestpicker.x;
import com.twitter.android.smartfollow.finishingtimeline.FinishingTimelineState;
import com.twitter.android.smartfollow.finishingtimeline.a;
import com.twitter.android.smartfollow.finishingtimeline.e;
import com.twitter.android.smartfollow.followpeople.FollowPeopleState;
import com.twitter.android.smartfollow.waitingforsuggestions.WaitingForSuggestionsState;
import com.twitter.app.common.di.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import dagger.internal.MembersInjectors;
import dagger.internal.b;
import defpackage.cxj;
import java.util.Set;

/* compiled from: Twttr */
public final class c implements ab {
    static final /* synthetic */ boolean a;
    private cxj<FinishingTimelineState> b;
    private cxj<a> c;
    private cxj<d> d;
    private cxj<FollowPeopleState> e;
    private cxj<com.twitter.android.smartfollow.followpeople.a> f;
    private cxj<d> g;
    private cxj<Application> h;
    private cxj<bg> i;
    private cxj<Session> j;
    private cxj<com.twitter.android.interestpicker.d> k;
    private cxj<aj> l;
    private cxj<l> m;
    private cxj<x> n;
    private cxj<Integer> o;
    private cxj<com.twitter.android.smartfollow.interestpicker.a> p;
    private cxj<d> q;
    private cxj<com.twitter.android.smartfollow.sharelocation.a> r;
    private cxj<d> s;
    private cxj<WaitingForSuggestionsState> t;
    private cxj<com.twitter.android.smartfollow.waitingforsuggestions.a> u;
    private cxj<d> v;
    private cxj<com.twitter.android.smartfollow.importcontacts.a> w;
    private cxj<d> x;
    private cxj<Set<d>> y;

    static {
        a = !c.class.desiredAssertionStatus();
    }

    private c(f fVar) {
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
        this.b = q.a(fVar.a);
        this.c = b.a(e.a(MembersInjectors.a(), SmartFollowFlowPresenterModule_ProvideHandlerFactory.c(), this.b));
        this.d = b.a(v.a(this.c));
        this.e = s.a(fVar.a);
        this.f = b.a(com.twitter.android.smartfollow.followpeople.b.a(MembersInjectors.a(), this.e));
        this.g = b.a(w.a(this.f));
        this.h = new d(this, fVar);
        this.i = new e(this, fVar);
        this.j = t.a(this.i);
        this.k = com.twitter.android.interestpicker.e.a(MembersInjectors.a(), this.h, this.j);
        this.l = ao.a(this.k);
        this.m = p.a(this.h, this.j);
        this.n = b.a(ai.a(this.l, this.j, this.m));
        this.o = r.a(fVar.a);
        this.p = b.a(com.twitter.android.smartfollow.interestpicker.b.a(MembersInjectors.a(), this.n, this.o));
        this.q = b.a(y.a(this.p));
        this.r = b.a(com.twitter.android.smartfollow.sharelocation.b.a(MembersInjectors.a()));
        this.s = b.a(z.a(this.r));
        this.t = u.a(fVar.a);
        this.u = b.a(com.twitter.android.smartfollow.waitingforsuggestions.e.a(MembersInjectors.a(), SmartFollowFlowPresenterModule_ProvideHandlerFactory.c(), this.t));
        this.v = b.a(aa.a(this.u));
        this.w = b.a(com.twitter.android.smartfollow.importcontacts.b.a(MembersInjectors.a()));
        this.x = b.a(x.a(this.w));
        this.y = dagger.internal.e.a(6, 0).a(this.d).a(this.g).a(this.q).a(this.s).a(this.v).a(this.x).a();
    }

    public Set<d> b() {
        return (Set) this.y.b();
    }

    public a c() {
        return (a) this.c.b();
    }

    public com.twitter.android.smartfollow.followpeople.a d() {
        return (com.twitter.android.smartfollow.followpeople.a) this.f.b();
    }

    public com.twitter.android.smartfollow.interestpicker.a e() {
        return (com.twitter.android.smartfollow.interestpicker.a) this.p.b();
    }

    public com.twitter.android.smartfollow.sharelocation.a f() {
        return (com.twitter.android.smartfollow.sharelocation.a) this.r.b();
    }

    public com.twitter.android.smartfollow.waitingforsuggestions.a g() {
        return (com.twitter.android.smartfollow.waitingforsuggestions.a) this.u.b();
    }

    public com.twitter.android.smartfollow.importcontacts.a h() {
        return (com.twitter.android.smartfollow.importcontacts.a) this.w.b();
    }
}
