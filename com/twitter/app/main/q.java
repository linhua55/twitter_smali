package com.twitter.app.main;

import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;
import com.twitter.library.client.at;
import defpackage.bus;

/* compiled from: Twttr */
class q extends ad {
    final /* synthetic */ MainActivity a;

    q(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public void a(Session session) {
        long g = this.a.ab().g();
        String e = session.e();
        if (!bus.a().h()) {
            this.a.b(e);
            this.a.x();
            for (at a : this.a.q.aw_()) {
                TwitterListFragment twitterListFragment = (TwitterListFragment) a.a(this.a.getSupportFragmentManager());
                if (twitterListFragment != null) {
                    twitterListFragment.g(g);
                }
            }
            this.a.l();
            this.a.f();
            this.a.Y().h();
            this.a.O = false;
            this.a.v();
        } else if (e != null) {
            this.a.P = e;
        }
    }

    public void a(Session session, boolean z) {
        this.a.j.removeCallbacksAndMessages(session);
    }

    public void b(Session session) {
        if (session.equals(this.a.ab())) {
            this.a.G();
            this.a.F();
            Session i = this.a.ab();
            this.a.Y().a(i.f(), i.j());
        }
    }
}
