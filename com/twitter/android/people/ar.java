package com.twitter.android.people;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.FollowFlowController;
import com.twitter.android.people.adapters.aq;
import com.twitter.android.people.adapters.f;
import com.twitter.android.people.adapters.o;
import com.twitter.android.people.adapters.viewbinders.a;
import com.twitter.android.people.adapters.viewbinders.ac;
import com.twitter.android.people.adapters.viewbinders.aj;
import com.twitter.android.people.adapters.viewbinders.am;
import com.twitter.android.people.adapters.viewbinders.ao;
import com.twitter.android.people.adapters.viewbinders.at;
import com.twitter.android.people.adapters.viewbinders.h;
import com.twitter.android.people.adapters.viewbinders.m;
import com.twitter.android.people.adapters.viewbinders.p;
import com.twitter.android.people.adapters.viewbinders.q;
import com.twitter.android.people.adapters.viewbinders.y;
import com.twitter.android.people.adapters.viewbinders.z;
import com.twitter.android.people.adapters.w;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.inject.e;
import com.twitter.app.common.list.t;
import com.twitter.app.common.util.StateSaver;
import com.twitter.model.core.as;
import com.twitter.model.people.aa;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
public class ar extends e {
    private final t c;

    public ar(BaseFragmentActivity baseFragmentActivity, t tVar, com.twitter.app.common.inject.t tVar2) {
        super(baseFragmentActivity, tVar2);
        this.c = tVar;
    }

    t a() {
        return this.c;
    }

    static ap a(m mVar, ac acVar, p pVar, am amVar, com.twitter.android.people.adapters.viewbinders.ar arVar, q qVar, a aVar, z zVar, ao aoVar, y yVar) {
        return new ap(n.a(mVar, new aj[]{acVar, pVar, amVar, arVar, qVar, aVar, zVar, aoVar, yVar}));
    }

    static FollowFlowController a(Context context) {
        return new FollowFlowController("people_discovery").a(true).h().a(new Intent(context, PeopleDiscoveryActivity.class));
    }

    StateSaver<h<aa, f, com.twitter.android.people.adapters.q>> b() {
        return a("STATE_FEATURED_CAROUSEL_VIEW_BINDER");
    }

    StateSaver<h<com.twitter.model.people.am, at, com.twitter.android.people.adapters.y>> c() {
        return a("STATE_USER_CAROUSEL_VIEW_BINDER");
    }

    StateSaver<h<String, com.twitter.android.people.adapters.a, o>> d() {
        return a("STATE_CATEGORY_CAROUSEL_VIEW_BINDER");
    }

    StateSaver<h<as, aq, w>> e() {
        return a("STATE_TWEET_CAROUSEL_VIEW_BINDER");
    }

    private <T> StateSaver<T> a(String str) {
        return (StateSaver) com.twitter.util.object.e.b(h().a(str), StateSaver.a());
    }

    private com.twitter.app.common.inject.t h() {
        return com.twitter.app.common.inject.t.a((Bundle) this.b.a("ViewHost"));
    }
}
